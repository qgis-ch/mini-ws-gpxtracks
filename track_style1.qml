<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis version="3.28.1-Firenze" maxScale="0" simplifyLocal="1" symbologyReferenceScale="-1" styleCategories="Symbology|AttributeTable|Rendering|Temporal" minScale="100000000" simplifyAlgorithm="0" simplifyDrawingHints="1" hasScaleBasedVisibilityFlag="0" simplifyMaxScale="1" simplifyDrawingTol="1">
  <temporal startExpression="" durationUnit="min" enabled="1" accumulate="0" durationField="" mode="5" startField="" endField="" endExpression="" fixedDuration="0" limitMode="1">
    <fixedRange>
      <start>2022-02-12T08:15:33Z</start>
      <end>2022-02-12T12:23:16Z</end>
    </fixedRange>
  </temporal>
  <renderer-v2 forceraster="0" enableorderby="0" type="singleSymbol" symbollevels="0" referencescale="-1">
    <symbols>
      <symbol alpha="1" force_rhr="0" type="line" name="0" is_animated="0" frame_rate="10" clip_to_extent="1">
        <data_defined_properties>
          <Option type="Map">
            <Option type="QString" value="" name="name"/>
            <Option name="properties"/>
            <Option type="QString" value="collection" name="type"/>
          </Option>
        </data_defined_properties>
        <layer class="SimpleLine" pass="0" enabled="1" locked="0">
          <Option type="Map">
            <Option type="QString" value="0" name="align_dash_pattern"/>
            <Option type="QString" value="square" name="capstyle"/>
            <Option type="QString" value="5;2" name="customdash"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="customdash_map_unit_scale"/>
            <Option type="QString" value="MapUnit" name="customdash_unit"/>
            <Option type="QString" value="0" name="dash_pattern_offset"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="dash_pattern_offset_map_unit_scale"/>
            <Option type="QString" value="MM" name="dash_pattern_offset_unit"/>
            <Option type="QString" value="0" name="draw_inside_polygon"/>
            <Option type="QString" value="bevel" name="joinstyle"/>
            <Option type="QString" value="255,59,59,255" name="line_color"/>
            <Option type="QString" value="solid" name="line_style"/>
            <Option type="QString" value="0.4" name="line_width"/>
            <Option type="QString" value="MM" name="line_width_unit"/>
            <Option type="QString" value="0" name="offset"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_map_unit_scale"/>
            <Option type="QString" value="MM" name="offset_unit"/>
            <Option type="QString" value="0" name="ring_filter"/>
            <Option type="QString" value="0" name="trim_distance_end"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="trim_distance_end_map_unit_scale"/>
            <Option type="QString" value="MM" name="trim_distance_end_unit"/>
            <Option type="QString" value="0" name="trim_distance_start"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="trim_distance_start_map_unit_scale"/>
            <Option type="QString" value="MM" name="trim_distance_start_unit"/>
            <Option type="QString" value="0" name="tweak_dash_pattern_on_corners"/>
            <Option type="QString" value="1" name="use_custom_dash"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="width_map_unit_scale"/>
          </Option>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" value="" name="name"/>
              <Option type="Map" name="properties">
                <Option type="Map" name="customDash">
                  <Option type="bool" value="true" name="active"/>
                  <Option type="QString" value="with_variable(&#xa;  'time_fraction',&#xa;  second(@map_start_time - @animation_start_time) / second(@animation_end_time - @animation_start_time),&#xa;  to_string(round($length * @time_fraction,1)) || ';' || to_string(round($length * (1 - @time_fraction),1))&#xa;)" name="expression"/>
                  <Option type="int" value="3" name="type"/>
                </Option>
              </Option>
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
  <attributetableconfig sortOrder="0" sortExpression="" actionWidgetStyle="dropDown">
    <columns>
      <column hidden="0" type="field" name="name" width="-1"/>
      <column hidden="0" type="field" name="cmt" width="-1"/>
      <column hidden="0" type="field" name="desc" width="680"/>
      <column hidden="0" type="field" name="src" width="-1"/>
      <column hidden="0" type="field" name="link1_href" width="-1"/>
      <column hidden="0" type="field" name="link1_text" width="-1"/>
      <column hidden="0" type="field" name="link1_type" width="-1"/>
      <column hidden="0" type="field" name="link2_href" width="-1"/>
      <column hidden="0" type="field" name="link2_text" width="-1"/>
      <column hidden="0" type="field" name="link2_type" width="-1"/>
      <column hidden="0" type="field" name="number" width="-1"/>
      <column hidden="0" type="field" name="type" width="-1"/>
      <column hidden="0" type="field" name="line" width="-1"/>
      <column hidden="0" type="field" name="locus_activity" width="-1"/>
      <column hidden="1" type="actions" width="-1"/>
    </columns>
  </attributetableconfig>
  <conditionalstyles>
    <rowstyles/>
    <fieldstyles/>
  </conditionalstyles>
  <storedexpressions/>
  <layerGeometryType>1</layerGeometryType>
</qgis>
