<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis version="3.28.1-Firenze" maxScale="0" simplifyLocal="1" symbologyReferenceScale="-1" styleCategories="Symbology|AttributeTable|Rendering|Temporal" minScale="100000000" simplifyAlgorithm="0" simplifyDrawingHints="0" hasScaleBasedVisibilityFlag="0" simplifyMaxScale="1" simplifyDrawingTol="1">
  <temporal startExpression="" durationUnit="min" enabled="1" accumulate="1" durationField="" mode="1" startField="time" endField="" endExpression="" fixedDuration="1" limitMode="0">
    <fixedRange>
      <start></start>
      <end></end>
    </fixedRange>
  </temporal>
  <renderer-v2 forceraster="0" enableorderby="0" type="singleSymbol" symbollevels="0" referencescale="-1">
    <symbols>
      <symbol alpha="1" force_rhr="0" type="marker" name="0" is_animated="0" frame_rate="10" clip_to_extent="1">
        <data_defined_properties>
          <Option type="Map">
            <Option type="QString" value="" name="name"/>
            <Option name="properties"/>
            <Option type="QString" value="collection" name="type"/>
          </Option>
        </data_defined_properties>
        <layer class="SimpleMarker" pass="0" enabled="1" locked="0">
          <Option type="Map">
            <Option type="QString" value="0" name="angle"/>
            <Option type="QString" value="square" name="cap_style"/>
            <Option type="QString" value="255,59,59,255" name="color"/>
            <Option type="QString" value="1" name="horizontal_anchor_point"/>
            <Option type="QString" value="bevel" name="joinstyle"/>
            <Option type="QString" value="circle" name="name"/>
            <Option type="QString" value="0,0" name="offset"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_map_unit_scale"/>
            <Option type="QString" value="MM" name="offset_unit"/>
            <Option type="QString" value="35,35,35,255" name="outline_color"/>
            <Option type="QString" value="no" name="outline_style"/>
            <Option type="QString" value="0" name="outline_width"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="outline_width_map_unit_scale"/>
            <Option type="QString" value="MM" name="outline_width_unit"/>
            <Option type="QString" value="diameter" name="scale_method"/>
            <Option type="QString" value="2" name="size"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="size_map_unit_scale"/>
            <Option type="QString" value="MM" name="size_unit"/>
            <Option type="QString" value="1" name="vertical_anchor_point"/>
          </Option>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" value="" name="name"/>
              <Option name="properties"/>
              <Option type="QString" value="collection" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
    </symbols>
    <rotation/>
    <sizescale/>
  </renderer-v2>
  <blendMode>0</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <layerOpacity>1</layerOpacity>
  <attributetableconfig sortOrder="0" sortExpression="&quot;ageofdgpsdata&quot;" actionWidgetStyle="dropDown">
    <columns>
      <column hidden="0" type="field" name="track_fid" width="72"/>
      <column hidden="0" type="field" name="track_seg_id" width="70"/>
      <column hidden="0" type="field" name="track_seg_point_id" width="185"/>
      <column hidden="0" type="field" name="ele" width="-1"/>
      <column hidden="0" type="field" name="time" width="255"/>
      <column hidden="1" type="field" name="magvar" width="-1"/>
      <column hidden="1" type="field" name="geoidheight" width="-1"/>
      <column hidden="1" type="field" name="name" width="-1"/>
      <column hidden="1" type="field" name="cmt" width="-1"/>
      <column hidden="1" type="field" name="desc" width="-1"/>
      <column hidden="1" type="field" name="src" width="-1"/>
      <column hidden="1" type="field" name="link1_href" width="-1"/>
      <column hidden="1" type="field" name="link1_text" width="-1"/>
      <column hidden="1" type="field" name="link1_type" width="-1"/>
      <column hidden="1" type="field" name="link2_href" width="-1"/>
      <column hidden="1" type="field" name="link2_text" width="-1"/>
      <column hidden="1" type="field" name="link2_type" width="-1"/>
      <column hidden="1" type="field" name="sym" width="-1"/>
      <column hidden="1" type="field" name="type" width="-1"/>
      <column hidden="1" type="field" name="fix" width="-1"/>
      <column hidden="1" type="field" name="sat" width="-1"/>
      <column hidden="0" type="field" name="hdop" width="-1"/>
      <column hidden="0" type="field" name="vdop" width="-1"/>
      <column hidden="0" type="field" name="pdop" width="-1"/>
      <column hidden="1" type="field" name="ageofdgpsdata" width="-1"/>
      <column hidden="1" type="field" name="dgpsid" width="-1"/>
      <column hidden="1" type="field" name="gpxtpx_TrackPointExtension" width="-1"/>
      <column hidden="1" type="actions" width="-1"/>
    </columns>
  </attributetableconfig>
  <conditionalstyles>
    <rowstyles/>
    <fieldstyles/>
  </conditionalstyles>
  <storedexpressions/>
  <layerGeometryType>0</layerGeometryType>
</qgis>
