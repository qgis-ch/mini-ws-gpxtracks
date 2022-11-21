# QGIS-CH Mini Workshop for visualizing GPS tracks and photos
In this mini workshop we will learn how to visualize GPS tracks logged by GPS application on a Smartphone or other GPS device.

## Prepare QGIS project
First we make sure that the new and empty QGIS project is set to the Swiss LV95 projection ("EPSG:2056"). You can quickly check it in the bottom right corner:

![image](https://user-images.githubusercontent.com/884476/202849390-5a1d4199-a567-4364-8195-ce7831943128.png)

If that doesn't match the "EPSG:2056" just double click this button and a dialogue will open that allows you to change the projection accordingly.

Then we prepare our QGIS project by loading a few Swisstopo WMS layers as background layers. We add them into a layer group and set the the layer the visibility as "Mutually Exclusive" so that we can switch layer visibility with a single click, without having to turn off/on two layers subsequently.

![image](https://user-images.githubusercontent.com/884476/202849168-419e32ae-54a9-480f-976b-9bc25255157d.png)

You can download the [SwisstopoBackgroundLayerGroup.qlr](SwisstopoBackgroundLayerGroup.qlr) file and add it through drag and drop from the file manager to your new and empty project.

### Load GPX track file

You can drag and drop the gpx file "[2022-02-12_Unter_Bunderspitz.gpx](2022-02-12_Unter_Bunderspitz.gpx)" on the QGIS canvas in order to load the tracks. From the various layers that are offered, select only the "tracks" and the "track points":

![image](https://user-images.githubusercontent.com/884476/202859444-29fcf9fb-bdff-4a0d-a072-c36b60765de4.png)

Zoom to the data by right-clicking on the layer and selecting "Zoom to Layer".

You should now get two layers:
* the track containing one LineString geometry (no useful temporal information (yet))
* the track points containing the points recorded along the hike. This layer contains elevations, time stamps and the HDOP values of the GPS recording indicating the horizontal precision. The available attributes depend on your GPS device and application. Some are recording less, some more data.

We'll examine the attribute table of the track points:

![image](https://user-images.githubusercontent.com/884476/202859896-fccf1b44-80d4-4ef3-9849-d00c150a1f4e.png)

note that the recorded time is one hour off to the normal Swiss winter time.

## Animating track points
### Basic animation through point visibility based on time
The simplest animation we can now already do is animating the track points. We turn off the visibility of the "2022-02-12_Unter_Bunderspitz — tracks" layer, because we don't need it for now. We change the symbology of the "2022-02-12_Unter_Bunderspitz — track_points" layer to display with simple, red circles:

![image](https://user-images.githubusercontent.com/884476/202861591-e467bb12-2c1e-4a43-a6aa-e67966ad3b9d.png)

and then switch to the "Temporal settings" panel in the layer properties, and configure as indicated in the screenshot:

![image](https://user-images.githubusercontent.com/884476/202862023-4cafef32-2333-459e-a4b8-09db3f655647.png)

Close the "Layer properties" dialogue with the "OK" button.

Now open the "Temporal Controller" panel that allows to interact with the animation (Menu "View" --> "Panels" --> "Temporal Controller") and set the following configuration:

* Set "Frame rate" to 25 per second (cogwheel icon on the top-right of the temporal control panel)
* Set the individual step to 10 seconds

You can try to change frame-rate and step size and experiment with the values. You can interact with the time slider and go back/forth in time.

Note that the animation contains breaks (1: lunch break at about 1900m/10:30, 2: break at about 2100/11:15 to remove skins and prepare for downhill), and obviously, the downhill is faster and the points are spread wider apart, because the temporal interval is always the same.

Here is the result style file for the track points [track-points_style1.qml](track-points_style1.qml) containing the steps mentioned above.

### Linear stroke animation through animation of the stroke dash-pattern
Next we are trying to progressively draw the track over time. We can use an old technique that was introduced with SVG animation more than a decade ago: animation of the stroke-dash-pattern.

First we set the Configuration in the "Temporal Settings" panel to "Redraw Layer Only":

![image](https://user-images.githubusercontent.com/884476/202864601-579d4172-a12b-40a8-9f53-4f7865728188.png)

Then we change to the "Symbology" panel and then to the "Sub Layer" "Simple Line" and enable the "Use custom dash pattern" setting, switch the units to "Map Units" and click on the expression button:

![image](https://user-images.githubusercontent.com/884476/202864898-d1095d0e-6f1c-4742-afac-180f06bfaec0.png)

and enter the following expression:

![image](https://user-images.githubusercontent.com/884476/202865005-81477264-85cc-4a13-a82d-1be47fa82883.png)

```
with_variable(
  'time_fraction',
  second(@map_start_time - @animation_start_time) / second(@animation_interval),
  to_string(round($length * @time_fraction,1)) || ';' || to_string(round($length * (1 - @time_fraction),1))
)
```

In this expression we calculate two dash values, resulting in a string with two dash lengths separated by a semicolon.

The following animation related variables are available in the context of an animated symbology layer:

* @map_start_time - Start of the map's temporal time range (as a datetime value), holding the "current time" of the animation time-slice (frame) start time (the variable name might be a bit "misleading", but a map rendering usually has a start and end time)
* @map_end_time - End of the map's temporal time range (as a datetime value), holding the "current time" of the animation time-slice (frame) end time
* @map_interval - Duration of the map's temporal time range (as an interval value)
* @frame_duration - Temporal duration of each animation frame (as an interval value)
* @frame_number - Current frame number during animation playback
* @frame_rate - Number of frames per second during animation playback
* @frame_timestep - Frame time step during animation playback
* @frame_timestep_units - String representation of the frame time step unit during animation playback
* @animation_start_time - Start of the animation's overall temporal time range (as a datetime value)
* @animation_end_time - End of the animation's overall temporal time range (as a datetime value)
* @animation_interval - Duration of the animation's overall temporal time range (as an interval value)

We use the "with_variable" statement, so we can use an intermedium value multiple times. We use the "second()" function to convert intervals to seconds. We calculate the current fraction of the duration by dividing the current animation duration so far by the overall duration of the animation. With this fraction between 0 and 1 we can then multiply the fraction value with the length of the GPS track. For the first dash length we use the duration of the animation so far, for the second dash length the remaining duration until the end of the animation. The two values should add up to the total length of the track.

When we now start the animation or use the temporal time slider the visible length of the track should animate linearly.

So far it doesn't take into account different speeds along the track, but assumes a constant speed over the whole track.

Here is the result style file for the GPS track Linestring [track_style1.qml](track_style1.qml) containing the steps mentioned above.

### Linear stroke animation through animation of the stroke dash-pattern, taking into account key time/distance values along the track

We need to improve on the previous result that users linear interpolation with a constant speed, taking into account different speeds (slower uphill, breaks, faster downhill). In order to do this, we need to collect for each vertex of the track the corresponding time and distance and join it with the track data (single record). We can do this by aggregating all values of indiviual vertices into two ordered arrays: one containg temporal data (duration from start of track for each vertex), the other containing the corresponding distances from the start of the track. This requires several steps and algorihtms and can best be done with a processing model.


