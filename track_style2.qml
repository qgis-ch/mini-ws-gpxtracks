<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis simplifyLocal="1" simplifyMaxScale="1" minScale="100000000" hasScaleBasedVisibilityFlag="0" maxScale="0" version="3.28.1-Firenze" simplifyDrawingTol="1" styleCategories="Symbology|AttributeTable|Rendering|Temporal" simplifyAlgorithm="0" simplifyDrawingHints="1" symbologyReferenceScale="-1">
  <temporal accumulate="0" mode="5" startField="" endExpression="" durationField="" enabled="1" startExpression="" durationUnit="min" limitMode="1" fixedDuration="0" endField="">
    <fixedRange>
      <start>2022-02-12T08:15:33Z</start>
      <end>2022-02-12T12:23:16Z</end>
    </fixedRange>
  </temporal>
  <renderer-v2 referencescale="-1" symbollevels="0" enableorderby="0" type="singleSymbol" forceraster="0">
    <symbols>
      <symbol name="0" force_rhr="0" alpha="1" is_animated="0" clip_to_extent="1" frame_rate="10" type="line">
        <data_defined_properties>
          <Option type="Map">
            <Option name="name" value="" type="QString"/>
            <Option name="properties"/>
            <Option name="type" value="collection" type="QString"/>
          </Option>
        </data_defined_properties>
        <layer locked="0" pass="0" enabled="1" class="SimpleLine">
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
            <Option name="line_width" value="1" type="QString"/>
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
                  <Option name="expression" value="with_variable(&#xa;&#x9;'curindex', -- the upper index of the two track points where the current animation frame is within&#xa;&#x9;-- result is the index with the key time from the durations array&#xa;&#x9;array_length(&#xa;&#x9;   array_filter(&#xa;&#x9;&#x9;   durations,&#xa;&#x9;&#x9;   -- we filter the ordered array to see which key time durations are below current animation time&#x9;&#x9;   &#xa;&#x9;&#x9;   @element &lt; @frame_number * second(@frame_duration)&#xa;&#x9;   )&#xa;&#x9;),&#xa;&#x9;with_variable(&#xa;&#x9;&#x9;'segment_fraction', -- fraction derived from current animation time in relation with the two track points&#xa;&#x9;&#x9;(@frame_number * second(@frame_duration) - durations[@curindex-1]) / (durations[@curindex] - durations[@curindex - 1]),&#xa;&#x9;&#x9;with_variable(&#xa;&#x9;&#x9;&#x9;--calculate the distance in relation with the temporal fraction&#xa;&#x9;&#x9;&#x9;'curdist',&#xa;&#x9;&#x9;&#x9;--derive the distance values from the two key distance values in the array and linear interpolation&#xa;&#x9;&#x9;&#x9;distances[@curindex - 1] + round((distances[@curindex] - distances[@curindex - 1]) * @segment_fraction,1),&#xa;&#x9;&#x9;&#x9;-- create a string with two distance values separated by a semicolon&#xa;&#x9;&#x9;&#x9;-- the first dash (to be drawn) is the dash of the line we &quot;traveled&quot; so far&#xa;&#x9;&#x9;&#x9;-- the second dash is the part to be skipped because it is yet in the &quot;future&quot; of the animation&#xa;&#x9;&#x9;&#x9;-- we use the total length of the line to substract the part to be skipped&#xa;&#x9;&#x9;&#x9;to_string(@curdist) || ';' || to_string(round($length - @curdist,1))&#xa;&#x9;&#x9;)&#xa;&#x9;)&#xa;)" type="QString"/>
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
  <attributetableconfig sortOrder="0" actionWidgetStyle="dropDown" sortExpression="">
    <columns>
      <column name="name" width="-1" hidden="0" type="field"/>
      <column name="cmt" width="-1" hidden="0" type="field"/>
      <column name="desc" width="680" hidden="0" type="field"/>
      <column name="src" width="-1" hidden="0" type="field"/>
      <column name="link1_href" width="-1" hidden="0" type="field"/>
      <column name="link1_text" width="-1" hidden="0" type="field"/>
      <column name="link1_type" width="-1" hidden="0" type="field"/>
      <column name="link2_href" width="-1" hidden="0" type="field"/>
      <column name="link2_text" width="-1" hidden="0" type="field"/>
      <column name="link2_type" width="-1" hidden="0" type="field"/>
      <column name="number" width="-1" hidden="0" type="field"/>
      <column name="type" width="-1" hidden="0" type="field"/>
      <column name="line" width="-1" hidden="0" type="field"/>
      <column name="locus_activity" width="-1" hidden="0" type="field"/>
      <column name="distances" width="-1" hidden="0" type="field"/>
      <column name="durations" width="-1" hidden="0" type="field"/>
      <column width="-1" hidden="1" type="actions"/>
    </columns>
  </attributetableconfig>
  <conditionalstyles>
    <rowstyles/>
    <fieldstyles/>
  </conditionalstyles>
  <storedexpressions/>
  <layerGeometryType>1</layerGeometryType>
</qgis>
