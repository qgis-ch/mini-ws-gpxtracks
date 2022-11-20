<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis simplifyDrawingTol="1" hasScaleBasedVisibilityFlag="0" version="3.28.1-Firenze" styleCategories="Symbology|AttributeTable|Rendering|Temporal" maxScale="0" simplifyAlgorithm="0" minScale="100000000" simplifyMaxScale="1" simplifyLocal="1" symbologyReferenceScale="-1" simplifyDrawingHints="1">
  <temporal durationUnit="min" enabled="1" startField="" durationField="" accumulate="0" endField="" fixedDuration="0" mode="5" limitMode="1" startExpression="" endExpression="">
    <fixedRange>
      <start>2022-02-12T08:15:33Z</start>
      <end>2022-02-12T12:23:16Z</end>
    </fixedRange>
  </temporal>
  <renderer-v2 forceraster="0" referencescale="-1" type="singleSymbol" symbollevels="0" enableorderby="0">
    <symbols>
      <symbol alpha="1" name="0" is_animated="0" clip_to_extent="1" type="line" force_rhr="0" frame_rate="10">
        <data_defined_properties>
          <Option type="Map">
            <Option name="name" value="" type="QString"/>
            <Option name="properties"/>
            <Option name="type" value="collection" type="QString"/>
          </Option>
        </data_defined_properties>
        <layer class="SimpleLine" enabled="1" locked="0" pass="0">
          <Option type="Map">
            <Option name="align_dash_pattern" value="0" type="QString"/>
            <Option name="capstyle" value="square" type="QString"/>
            <Option name="customdash" value="5;2" type="QString"/>
            <Option name="customdash_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
            <Option name="customdash_unit" value="MapUnit" type="QString"/>
            <Option name="dash_pattern_offset" value="0" type="QString"/>
            <Option name="dash_pattern_offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
            <Option name="dash_pattern_offset_unit" value="MM" type="QString"/>
            <Option name="draw_inside_polygon" value="0" type="QString"/>
            <Option name="joinstyle" value="bevel" type="QString"/>
            <Option name="line_color" value="255,59,59,255" type="QString"/>
            <Option name="line_style" value="solid" type="QString"/>
            <Option name="line_width" value="0.4" type="QString"/>
            <Option name="line_width_unit" value="MM" type="QString"/>
            <Option name="offset" value="0" type="QString"/>
            <Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
            <Option name="offset_unit" value="MM" type="QString"/>
            <Option name="ring_filter" value="0" type="QString"/>
            <Option name="trim_distance_end" value="0" type="QString"/>
            <Option name="trim_distance_end_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
            <Option name="trim_distance_end_unit" value="MM" type="QString"/>
            <Option name="trim_distance_start" value="0" type="QString"/>
            <Option name="trim_distance_start_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
            <Option name="trim_distance_start_unit" value="MM" type="QString"/>
            <Option name="tweak_dash_pattern_on_corners" value="0" type="QString"/>
            <Option name="use_custom_dash" value="1" type="QString"/>
            <Option name="width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
          </Option>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" value="" type="QString"/>
              <Option name="properties" type="Map">
                <Option name="customDash" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="with_variable(&#xa;  'time_fraction',&#xa;  second(@map_start_time - @animation_start_time) / second(@animation_interval),&#xa;  to_string(round($length * @time_fraction,1)) || ';' || to_string(round($length * (1 - @time_fraction),1))&#xa;)" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
              </Option>
              <Option name="type" value="collection" type="QString"/>
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
  <attributetableconfig actionWidgetStyle="dropDown" sortOrder="0" sortExpression="">
    <columns>
      <column name="name" hidden="0" width="-1" type="field"/>
      <column name="cmt" hidden="0" width="-1" type="field"/>
      <column name="desc" hidden="0" width="680" type="field"/>
      <column name="src" hidden="0" width="-1" type="field"/>
      <column name="link1_href" hidden="0" width="-1" type="field"/>
      <column name="link1_text" hidden="0" width="-1" type="field"/>
      <column name="link1_type" hidden="0" width="-1" type="field"/>
      <column name="link2_href" hidden="0" width="-1" type="field"/>
      <column name="link2_text" hidden="0" width="-1" type="field"/>
      <column name="link2_type" hidden="0" width="-1" type="field"/>
      <column name="number" hidden="0" width="-1" type="field"/>
      <column name="type" hidden="0" width="-1" type="field"/>
      <column name="line" hidden="0" width="-1" type="field"/>
      <column name="locus_activity" hidden="0" width="-1" type="field"/>
      <column hidden="1" width="-1" type="actions"/>
    </columns>
  </attributetableconfig>
  <conditionalstyles>
    <rowstyles/>
    <fieldstyles/>
  </conditionalstyles>
  <storedexpressions/>
  <layerGeometryType>1</layerGeometryType>
</qgis>
