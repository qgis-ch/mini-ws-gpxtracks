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
The simplest animation we can now already do is animating the track points. We turn off the visibility of the "2022-02-12_Unter_Bunderspitz ??? tracks" layer, because we don't need it for now. We change the symbology of the "2022-02-12_Unter_Bunderspitz ??? track_points" layer to display with simple, red circles:

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

![image](https://user-images.githubusercontent.com/884476/202984328-84cb08e4-6e23-4650-b160-02044bcebc61.png)

You can download the prepared processing model [track_processing.model3](track_processing.model3) here.

I'll explain in the following list the individual steps of the processing model.

1. Model inputs: we have three model inputs: the GPS "track" (LINESTRING), the GPS "track points" (POINTS) and a "Target CRS".
2. First we need to reproject our tracks and track points to a meter based CRS
3. We extract the individual vertices of the GPS "track" (LINESTRING) to an ordered sequence of individual POINTs. Besides the vertex geometries, the POINTs also get additional attributes, such as vertex index, distance from start, bisector angle of vertex, etc.
4. We need to join the extracted points with the original track points in order to get the timestamp information of the track points. We match the two data sets using the vertex index: vertex_index = track_seg_point_id. From the original track points we only keep elevation and time (fields ele;time)
5. In the "Refactor Fields" step we keep or get rid off attributes and calculate a new attribute called "duration_from_start" using the formula  `round(second("time" - minimum(time)))`
6. We need to aggregate all values into two arrays using the "array_agg()" function: "distances" (array of decimals holding distances from the start of the track) and durations (array of integers holding durations (seconds) from the start of the track)
7. We need to join the aggregated arrays to the original track using the "Join by Attributes" algorithm and matching track name fields
8. We open the result as a new "Memory layer" (not stored at disk) with the layer name "Animated Track"

After running the model we manually load the style [track_style2.qml](track_style2.qml)

This style file contains a formula to pick the time and distance values from the two arrays we calculated as indicated below (explanations in the code):

```
with_variable(
	'curindex', -- the upper index of the two track points where the current animation frame is within
	-- result is the index with the key time from the durations array
	array_length(
	   array_filter(
		   durations,
		   -- we filter the ordered array to see which key time durations are below current animation time		   
		   @element < @frame_number * second(@frame_duration)
	   )
	),
	with_variable(
		'segment_fraction', -- fraction derived from current animation time in relation with the two track points
		(@frame_number * second(@frame_duration) - durations[@curindex-1]) / (durations[@curindex] - durations[@curindex - 1]),
		with_variable(
			--calculate the distance in relation with the temporal fraction
			'curdist',
			--derive the distance values from the two key distance values in the array and linear interpolation
			distances[@curindex - 1] + round((distances[@curindex] - distances[@curindex - 1]) * @segment_fraction,1),
			-- create a string with two distance values separated by a semicolon
			-- the first dash (to be drawn) is the dash of the line we "traveled" so far
			-- the second dash is the part to be skipped because it is yet in the "future" of the animation
			-- we use the total length of the line to substract the part to be skipped
			to_string(@curdist) || ';' || to_string(round($length - @curdist,1))
		)
	)
)
```

## Importing photos without georeferencing information
While modern cameras and especially smart phones increasingly record GPS position and photo orientation data, there are still many cameras around that don't. However, we can still match the photos based on their time stamp data with track points of a GPS track recorded in parallel when taking the photos. Quite often, there is a time offset involved between the time stamps in the GPS track and the time stamps in the photos that needs to be taken into account. And of course, the photos aren't taken at the exact same time in synchronisation with the GPS track point recordings.

Matching "similar" time stamps sounds rather simple, but while QGIS has some tools to find nearest or closest points in the spatial dimension, there are no such tools available in QGIS processing that allows to join two tables by "similar" attribute data. However, we can map attributes to the "spatial dimension" using "fake coordinates" based on time stamps from both tables and matching them using the "Join attributes by nearest" algorithm. In fact, if we use the time stamps (epochs) for east and north coordinate  pair values, the time stamps will end up along a "line", but we can still use the algorithm to find pairs of two closest features in both tables.

Here is the model [photo_import.model3](photo_import.model3) we use to import non-georeference photos. If you already have geo-referenced photos you can use the algorithm "Import geotagged photos" directly and skip all the rest of the model.

![image](https://user-images.githubusercontent.com/884476/203416418-3fc6a9f7-f811-4981-ac28-c4e373a61a6f.png)

Here are a few explanations around the two branches within the model (branch "A" starting from the photo folder, branch "B" starting from the Track Points, branch "AB" is the combined part of the model after joining by nearest pseudo coordinates):

#### Branch A:
1. we start with the "Photo_Folder" model input, which corresponds to a folder in the file system containing jpeg photo files.
2. "Import geotagged photos": this algorithm reads all image files in a folder and imports photo information into a table. There are two outputs: one for images already containing georeferencing data, and the other for photos not containing georeferencing data. In our case all goes in the non-georeferenced output. Note that although you don't need the "Trash photos" output (results in an empty table in our case), you should not remove it, because otherwise no photos end up in the other output. This is just the way the algorithm is implemented. The other peculiarity is, that the non-georeferenced output doesn't extract the time-stamp EXIF data we need, so we need to extract the time stamp information in a separate step.
3. "Refactor fields photos": here we extract the EXIF timestamp information, add the "Photo Time Offset" (in seconds) and calculate an "epoch" value from the corrected time stamp. This can be done with the following expression: `epoch(exif(photo,'Exif.Photo.DateTimeOriginal') + to_interval(@photo_time_offset || ' seconds'))`. Epoch is the duration starting from 1970-01-01 00:00:00 expressed in milliseconds. It is a simple way to accurately represent time in a simple integer value. Finally, we also need to calculate the photo viewing angle from the focal length in 35mm. We can use the following expression for this:
```
2 * 
atan(
    --36 mm is sensor size in 35mm equivalent for width of image
	--portrait photos would have 24mm here. TODO: take into account portrait photos
	(36 / 2) / exif(photo,'Exif.Photo.FocalLengthIn35mmFilm')
)
-- resulting value is in radians, need to calculate in degrees
/ pi() * 180
```
4. "Create points layer from  photo table": this algorithms adds a point geometry column to a "no-geography" attribute table and picks up east and north coordinate values from an existing attribute or expression calculation.

#### Branch B:
1. We start with the "Track Points" model input, which should correspond to the track point layer loaded from the GPX file. The second model input is the "Photo Time Offset" (in seconds), in our case you should use -4370 seconds.
2. "Reproject track points layer": reproject from EPSG:4326 to a meter based coordinate system (e.g. EPSG:2056 or EPSG:3857), taking into account the "Target CRS" model input holding the target EPSG number.
3. "Refactor track point fields": here we select the attribute fields we want to keep and get rid of all the other fields holding no useful data. We extract the east ("rechtswert") and north ("hochwert") coordinate values using the `$x` and `$y` expressions.
4. "Drop geometries Track Points": get rid of the original point geometries - they are now temporarily stored in the fields "rechtswert" and "hochwert" from the previous algorithm.
5. "Create points layer from track points table": here we create "pseudo" coordinates based on the epoch values extracted from the time stamps.

#### Combined Branch AB:
1. "Join attributes by nearest": here we join the branches using the "nearest" pairs of both tables, using the time based pseduo coordinates. Attributes of matching records in branch B are joined to the corresponding photo records from branch A.
2. "Drop geometrie photos": we can now get rid of the pseudo coordinates, that we don't need anymore after the join.
3. "Create points layer from final photo table": using the east and north coordinate attributes from the matched track points we can re-create proper point geometries in our target CRS
4. "Retain fields": we only keep attribute fields we have an interest in.

## Symbolizing photo data
### Using photo thumbnails
We can use the "raster image marker" to place photo thumbnails at the corresponding position in the map as follows:

![image](https://user-images.githubusercontent.com/884476/203420628-3684edbf-fe4f-41e4-bb4e-fc25f2982e70.png)

We don't display the medium resolution photos, but use just the small thumbnail representations. The expression to replace the medium photos with small thumbnails is as follows: `replace(photo,'jpeg_medium','jpeg_small')`.

The result will look like this (QML stlye file: [photos_style1_thumbnails.qml](photos_style1_thumbnails.qml)):

![image](https://user-images.githubusercontent.com/884476/203421175-97f6ac4a-9432-4f92-bc51-2070898def03.png)

Of course we can improve the attribute editor form with the drag and drop designer functionality:
* use the attachment widget to display the photo inside the form and offer a URL to open it in an external editor
* use groups and/or tabs to display widgets in a table next to each other

This could look similar to:

![image](https://user-images.githubusercontent.com/884476/203484081-31d38932-115c-4ed8-a4cf-d9d5641764c0.png)

And finally, we can set the "map tip" to display photo and title in a tooltip, using HTML syntax and some expression magic:

```
<p><img src="file://[% photo %]" width="500" /></p>
<p>
[% replace(
  regexp_replace(filename,'\\d+_',''),
  '_',
  ' '
) %]
<br/>
Photo taken: 
[% format_date(
	photo_timestamp_with_offset + '1 hour',
	'dd.MM.yyyy hh:mm'
) %]
</p>
```

![image](https://user-images.githubusercontent.com/884476/203487632-6a89b956-5bef-46a9-96a3-10c151a0a50b.png)

and the result would look something like:

![image](https://user-images.githubusercontent.com/884476/203487768-91888b5c-2273-4405-a40b-070faca2344d.png)

The attribute form and map tip configuration is also included in the [photos_style1_thumbnails.qml](photos_style1_thumbnails.qml)

### Progressively show photo thumbnails based on time

Because our photo data contains time stamps we can use them to display the photos progressively over time, in synchronization with the track animation. To do this, we configure the temporal settings as follows:

![image](https://user-images.githubusercontent.com/884476/203493860-f960441a-c2a9-4af9-a120-1788f049aa51.png)

We set:
* Configuration: "Single Field with Date/Time"
* Limits: Include Start, Exclude End" (we don't have an end field, but could theoretically make them disappear after xx seconds using an expression)
* Field: Photo time stamp corrected with offset
* Accumulate features over time: enabled (so that the photos stay rendered and don't disappear)

And the full configuration can be loaded from [photos_style2_with_temporal_settings.qml](photos_style2_with_temporal_settings.qml).

### Show photo orientation and target points
#### Display rotated camera symbols
We provided an additional geopackage [additional_photo_data.gpkg](additional_photo_data.gpkg) containing photo information with title and targetpoint (where the photo is looking at). You can drag and drop this geopackage to QGIS to load the layer and then join itto the "Georeferenced photos" layer as follows:

![image](https://user-images.githubusercontent.com/884476/203512858-df5d4645-8fe1-44b7-874e-89b6abcb0cd8.png)

Using this joined data we can then place SVG markers setting a data-defined rotation indicating the direction of view with the following expression:

```
round(
	degrees(
		azimuth(
			@geometry,
			make_point(additional_photo_data_target_point_east, additional_photo_data_target_point_north)
		)
	),
	0
)
```

The result will look like this:

![image](https://user-images.githubusercontent.com/884476/203513591-eb94f0dd-4b73-4662-b10d-623123b0a71f.png)

and is stored in the QML file [photos_style3_with_oriented_camera-symbols.qml](photos_style3_with_oriented_camera-symbols.qml)

#### Display photo wedges on demand (if selected)
To create the photo wedges we can use the "wedge_buffer()" expression in combination with a "Geometry Generator" symbol and use the following expression (assuming that the additional photo information table is still joined).

![image](https://user-images.githubusercontent.com/884476/203515062-01416acf-19b1-418b-bf86-1f2759bcbbcd.png)

```
 wedge_buffer( 
	@geometry,
	round(
		degrees(
			azimuth(
				@geometry,
				make_point(additional_photo_data_target_point_east, additional_photo_data_target_point_north)
			)
		),
		0
	),
	photo_angle,
	distance(
		@geometry,
		make_point(additional_photo_data_target_point_east, additional_photo_data_target_point_north)
	)
)
```
Example of two selected photo wedge buffers:

![image](https://user-images.githubusercontent.com/884476/203515684-4550f077-6a6f-4460-b2a7-b922876c418b.png)
