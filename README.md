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
* the track containing one LineString geometry (no temporal information)
* the track points containing the points recorded along the hike. This layer contains elevations, time stamps and the HDOP values of the GPS recording indicating the horizontal precision. The available attributes depend on your GPS device and application. Some are recording less, some more data.

We'll examine the attribute table of the track points:

![image](https://user-images.githubusercontent.com/884476/202859896-fccf1b44-80d4-4ef3-9849-d00c150a1f4e.png)

note that the recorded time is one hour off to the normal Swiss winter time.
