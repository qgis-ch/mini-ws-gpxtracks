<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis simplifyAlgorithm="0" minScale="100000000" labelsEnabled="0" simplifyLocal="1" symbologyReferenceScale="-1" simplifyDrawingTol="1" styleCategories="Symbology|Labeling|Fields|Forms|Actions|MapTips|AttributeTable|Rendering|CustomProperties|GeometryOptions|Relations|Temporal" simplifyMaxScale="1" hasScaleBasedVisibilityFlag="0" maxScale="0" simplifyDrawingHints="0" version="3.28.1-Firenze">
  <temporal startField="photo_timestamp" durationUnit="min" durationField="photo_focal_length_35mm" enabled="1" mode="1" fixedDuration="0" startExpression="" endExpression="" limitMode="0" endField="" accumulate="1">
    <fixedRange>
      <start></start>
      <end></end>
    </fixedRange>
  </temporal>
  <renderer-v2 forceraster="0" symbollevels="0" type="singleSymbol" enableorderby="0" referencescale="-1">
    <symbols>
      <symbol frame_rate="10" alpha="1" is_animated="0" name="0" type="marker" clip_to_extent="1" force_rhr="0">
        <data_defined_properties>
          <Option type="Map">
            <Option value="" name="name" type="QString"/>
            <Option name="properties"/>
            <Option value="collection" name="type" type="QString"/>
          </Option>
        </data_defined_properties>
        <layer locked="0" enabled="1" pass="0" class="GeometryGenerator">
          <Option type="Map">
            <Option value="Fill" name="SymbolType" type="QString"/>
            <Option value=" wedge_buffer( &#xa;&#x9;@geometry,&#xa;&#x9;round(&#xa;&#x9;&#x9;degrees(&#xa;&#x9;&#x9;&#x9;azimuth(&#xa;&#x9;&#x9;&#x9;&#x9;@geometry,&#xa;&#x9;&#x9;&#x9;&#x9;make_point(additional_photo_data_target_point_east, additional_photo_data_target_point_north)&#xa;&#x9;&#x9;&#x9;)&#xa;&#x9;&#x9;),&#xa;&#x9;&#x9;0&#xa;&#x9;),&#xa;&#x9;photo_focal_length_35mm,&#xa;&#x9;distance(&#xa;&#x9;&#x9;@geometry,&#xa;&#x9;&#x9;make_point(additional_photo_data_target_point_east, additional_photo_data_target_point_north)&#xa;&#x9;)&#xa;)" name="geometryModifier" type="QString"/>
            <Option value="MapUnit" name="units" type="QString"/>
          </Option>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" name="name" type="QString"/>
              <Option name="properties" type="Map">
                <Option name="enabled" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="is_selected()" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
              </Option>
              <Option value="collection" name="type" type="QString"/>
            </Option>
          </data_defined_properties>
          <symbol frame_rate="10" alpha="1" is_animated="0" name="@0@0" type="fill" clip_to_extent="1" force_rhr="0">
            <data_defined_properties>
              <Option type="Map">
                <Option value="" name="name" type="QString"/>
                <Option name="properties"/>
                <Option value="collection" name="type" type="QString"/>
              </Option>
            </data_defined_properties>
            <layer locked="0" enabled="1" pass="0" class="SimpleFill">
              <Option type="Map">
                <Option value="3x:0,0,0,0,0,0" name="border_width_map_unit_scale" type="QString"/>
                <Option value="152,0,254,63" name="color" type="QString"/>
                <Option value="bevel" name="joinstyle" type="QString"/>
                <Option value="0,0" name="offset" type="QString"/>
                <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
                <Option value="MM" name="offset_unit" type="QString"/>
                <Option value="152,0,254,255" name="outline_color" type="QString"/>
                <Option value="solid" name="outline_style" type="QString"/>
                <Option value="0.2" name="outline_width" type="QString"/>
                <Option value="MM" name="outline_width_unit" type="QString"/>
                <Option value="solid" name="style" type="QString"/>
              </Option>
              <data_defined_properties>
                <Option type="Map">
                  <Option value="" name="name" type="QString"/>
                  <Option name="properties"/>
                  <Option value="collection" name="type" type="QString"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </layer>
        <layer locked="0" enabled="1" pass="0" class="SvgMarker">
          <Option type="Map">
            <Option value="0" name="angle" type="QString"/>
            <Option value="152,0,254,255" name="color" type="QString"/>
            <Option value="0" name="fixedAspectRatio" type="QString"/>
            <Option value="1" name="horizontal_anchor_point" type="QString"/>
            <Option value="gpsicons/camera.svg" name="name" type="QString"/>
            <Option value="0,0" name="offset" type="QString"/>
            <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
            <Option value="MM" name="offset_unit" type="QString"/>
            <Option value="255,255,255,255" name="outline_color" type="QString"/>
            <Option value="0" name="outline_width" type="QString"/>
            <Option value="3x:0,0,0,0,0,0" name="outline_width_map_unit_scale" type="QString"/>
            <Option value="MM" name="outline_width_unit" type="QString"/>
            <Option name="parameters"/>
            <Option value="diameter" name="scale_method" type="QString"/>
            <Option value="6" name="size" type="QString"/>
            <Option value="3x:0,0,0,0,0,0" name="size_map_unit_scale" type="QString"/>
            <Option value="MM" name="size_unit" type="QString"/>
            <Option value="1" name="vertical_anchor_point" type="QString"/>
          </Option>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" name="name" type="QString"/>
              <Option name="properties" type="Map">
                <Option name="angle" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="round(&#xa;&#x9;degrees(&#xa;&#x9;&#x9;azimuth(&#xa;&#x9;&#x9;&#x9;@geometry,&#xa;&#x9;&#x9;&#x9;make_point(additional_photo_data_target_point_east, additional_photo_data_target_point_north)&#xa;&#x9;&#x9;)&#xa;&#x9;),&#xa;&#x9;0&#xa;)" name="expression" type="QString"/>
                  <Option value="3" name="type" type="int"/>
                </Option>
              </Option>
              <Option value="collection" name="type" type="QString"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
    </symbols>
    <rotation/>
    <sizescale/>
  </renderer-v2>
  <customproperties>
    <Option type="Map">
      <Option value="false" name="OnConvertFormatRegeneratePrimaryKey" type="bool"/>
      <Option name="dualview/previewExpressions" type="List">
        <Option value="&quot;filename&quot;" type="QString"/>
      </Option>
      <Option value="0" name="embeddedWidgets/count" type="int"/>
      <Option name="variableNames"/>
      <Option name="variableValues"/>
    </Option>
  </customproperties>
  <blendMode>0</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <layerOpacity>1</layerOpacity>
  <geometryOptions removeDuplicateNodes="0" geometryPrecision="0">
    <activeChecks/>
    <checkConfiguration/>
  </geometryOptions>
  <referencedLayers/>
  <fieldConfiguration>
    <field configurationFlags="None" name="photo">
      <editWidget type="ExternalResource">
        <config>
          <Option type="Map">
            <Option value="1" name="DocumentViewer" type="int"/>
            <Option value="0" name="DocumentViewerHeight" type="int"/>
            <Option value="0" name="DocumentViewerWidth" type="int"/>
            <Option value="true" name="FileWidget" type="bool"/>
            <Option value="true" name="FileWidgetButton" type="bool"/>
            <Option value="" name="FileWidgetFilter" type="QString"/>
            <Option value="true" name="FullUrl" type="bool"/>
            <Option name="PropertyCollection" type="Map">
              <Option value="" name="name" type="QString"/>
              <Option name="properties"/>
              <Option value="collection" name="type" type="QString"/>
            </Option>
            <Option value="0" name="RelativeStorage" type="int"/>
            <Option value="" name="StorageAuthConfigId" type="QString"/>
            <Option value="0" name="StorageMode" type="int"/>
            <Option value="" name="StorageType" type="QString"/>
            <Option value="true" name="UseLink" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="filename">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option value="false" name="IsMultiline" type="bool"/>
            <Option value="false" name="UseHtml" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="directory">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option value="false" name="IsMultiline" type="bool"/>
            <Option value="false" name="UseHtml" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="photo_timestamp">
      <editWidget type="DateTime">
        <config>
          <Option type="Map">
            <Option value="true" name="allow_null" type="bool"/>
            <Option value="true" name="calendar_popup" type="bool"/>
            <Option value="d MMM yyyy HH:mm:ss" name="display_format" type="QString"/>
            <Option value="d MMM yyyy HH:mm:ss" name="field_format" type="QString"/>
            <Option value="false" name="field_iso_format" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="photo_timestamp_with_offset">
      <editWidget type="DateTime">
        <config>
          <Option type="Map">
            <Option value="true" name="allow_null" type="bool"/>
            <Option value="true" name="calendar_popup" type="bool"/>
            <Option value="d MMM yyyy HH:mm:ss" name="display_format" type="QString"/>
            <Option value="d MMM yyyy HH:mm:ss" name="field_format" type="QString"/>
            <Option value="false" name="field_iso_format" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="photo_focal_length_35mm">
      <editWidget type="Range">
        <config>
          <Option type="Map">
            <Option value="true" name="AllowNull" type="bool"/>
            <Option value="2147483647" name="Max" type="int"/>
            <Option value="-2147483648" name="Min" type="int"/>
            <Option value="0" name="Precision" type="int"/>
            <Option value="1" name="Step" type="int"/>
            <Option value="SpinBox" name="Style" type="QString"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="track_seg_point_id">
      <editWidget type="Range">
        <config>
          <Option type="Map">
            <Option value="true" name="AllowNull" type="bool"/>
            <Option value="2147483647" name="Max" type="int"/>
            <Option value="-2147483648" name="Min" type="int"/>
            <Option value="0" name="Precision" type="int"/>
            <Option value="1" name="Step" type="int"/>
            <Option value="SpinBox" name="Style" type="QString"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="ele">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option value="false" name="IsMultiline" type="bool"/>
            <Option value="false" name="UseHtml" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="time">
      <editWidget type="DateTime">
        <config>
          <Option type="Map">
            <Option value="true" name="allow_null" type="bool"/>
            <Option value="true" name="calendar_popup" type="bool"/>
            <Option value="d MMM yyyy HH:mm:ss" name="display_format" type="QString"/>
            <Option value="d MMM yyyy HH:mm:ss" name="field_format" type="QString"/>
            <Option value="false" name="field_iso_format" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="hdop">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option value="false" name="IsMultiline" type="bool"/>
            <Option value="false" name="UseHtml" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="additional_photo_data_photo_title">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option value="false" name="IsMultiline" type="bool"/>
            <Option value="false" name="UseHtml" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="additional_photo_data_target_point_east">
      <editWidget type="Range">
        <config>
          <Option type="Map">
            <Option value="true" name="AllowNull" type="bool"/>
            <Option value="2147483647" name="Max" type="int"/>
            <Option value="-2147483648" name="Min" type="int"/>
            <Option value="0" name="Precision" type="int"/>
            <Option value="1" name="Step" type="int"/>
            <Option value="SpinBox" name="Style" type="QString"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="additional_photo_data_target_point_north">
      <editWidget type="Range">
        <config>
          <Option type="Map">
            <Option value="true" name="AllowNull" type="bool"/>
            <Option value="2147483647" name="Max" type="int"/>
            <Option value="-2147483648" name="Min" type="int"/>
            <Option value="0" name="Precision" type="int"/>
            <Option value="1" name="Step" type="int"/>
            <Option value="SpinBox" name="Style" type="QString"/>
          </Option>
        </config>
      </editWidget>
    </field>
  </fieldConfiguration>
  <aliases>
    <alias index="0" name="Photo" field="photo"/>
    <alias index="1" name="Filename" field="filename"/>
    <alias index="2" name="Directory" field="directory"/>
    <alias index="3" name="Photo timestamp" field="photo_timestamp"/>
    <alias index="4" name="Photo time stamp corrected with offset" field="photo_timestamp_with_offset"/>
    <alias index="5" name="Photo focal length in 35mm" field="photo_focal_length_35mm"/>
    <alias index="6" name="Track-Point Sequence ID" field="track_seg_point_id"/>
    <alias index="7" name="GPS elevation" field="ele"/>
    <alias index="8" name="GPS time stamp" field="time"/>
    <alias index="9" name="GPS HDOP value" field="hdop"/>
    <alias index="10" name="" field="additional_photo_data_photo_title"/>
    <alias index="11" name="" field="additional_photo_data_target_point_east"/>
    <alias index="12" name="" field="additional_photo_data_target_point_north"/>
  </aliases>
  <defaults>
    <default applyOnUpdate="0" expression="" field="photo"/>
    <default applyOnUpdate="0" expression="" field="filename"/>
    <default applyOnUpdate="0" expression="" field="directory"/>
    <default applyOnUpdate="0" expression="" field="photo_timestamp"/>
    <default applyOnUpdate="0" expression="" field="photo_timestamp_with_offset"/>
    <default applyOnUpdate="0" expression="" field="photo_focal_length_35mm"/>
    <default applyOnUpdate="0" expression="" field="track_seg_point_id"/>
    <default applyOnUpdate="0" expression="" field="ele"/>
    <default applyOnUpdate="0" expression="" field="time"/>
    <default applyOnUpdate="0" expression="" field="hdop"/>
    <default applyOnUpdate="0" expression="" field="additional_photo_data_photo_title"/>
    <default applyOnUpdate="0" expression="" field="additional_photo_data_target_point_east"/>
    <default applyOnUpdate="0" expression="" field="additional_photo_data_target_point_north"/>
  </defaults>
  <constraints>
    <constraint unique_strength="0" exp_strength="0" notnull_strength="0" constraints="0" field="photo"/>
    <constraint unique_strength="0" exp_strength="0" notnull_strength="0" constraints="0" field="filename"/>
    <constraint unique_strength="0" exp_strength="0" notnull_strength="0" constraints="0" field="directory"/>
    <constraint unique_strength="0" exp_strength="0" notnull_strength="0" constraints="0" field="photo_timestamp"/>
    <constraint unique_strength="0" exp_strength="0" notnull_strength="0" constraints="0" field="photo_timestamp_with_offset"/>
    <constraint unique_strength="0" exp_strength="0" notnull_strength="0" constraints="0" field="photo_focal_length_35mm"/>
    <constraint unique_strength="0" exp_strength="0" notnull_strength="0" constraints="0" field="track_seg_point_id"/>
    <constraint unique_strength="0" exp_strength="0" notnull_strength="0" constraints="0" field="ele"/>
    <constraint unique_strength="0" exp_strength="0" notnull_strength="0" constraints="0" field="time"/>
    <constraint unique_strength="0" exp_strength="0" notnull_strength="0" constraints="0" field="hdop"/>
    <constraint unique_strength="0" exp_strength="0" notnull_strength="0" constraints="0" field="additional_photo_data_photo_title"/>
    <constraint unique_strength="0" exp_strength="0" notnull_strength="0" constraints="0" field="additional_photo_data_target_point_east"/>
    <constraint unique_strength="0" exp_strength="0" notnull_strength="0" constraints="0" field="additional_photo_data_target_point_north"/>
  </constraints>
  <constraintExpressions>
    <constraint desc="" exp="" field="photo"/>
    <constraint desc="" exp="" field="filename"/>
    <constraint desc="" exp="" field="directory"/>
    <constraint desc="" exp="" field="photo_timestamp"/>
    <constraint desc="" exp="" field="photo_timestamp_with_offset"/>
    <constraint desc="" exp="" field="photo_focal_length_35mm"/>
    <constraint desc="" exp="" field="track_seg_point_id"/>
    <constraint desc="" exp="" field="ele"/>
    <constraint desc="" exp="" field="time"/>
    <constraint desc="" exp="" field="hdop"/>
    <constraint desc="" exp="" field="additional_photo_data_photo_title"/>
    <constraint desc="" exp="" field="additional_photo_data_target_point_east"/>
    <constraint desc="" exp="" field="additional_photo_data_target_point_north"/>
  </constraintExpressions>
  <expressionfields/>
  <attributeactions>
    <defaultAction value="{00000000-0000-0000-0000-000000000000}" key="Canvas"/>
  </attributeactions>
  <attributetableconfig sortOrder="0" actionWidgetStyle="dropDown" sortExpression="&quot;filename&quot;">
    <columns>
      <column hidden="0" name="photo" type="field" width="595"/>
      <column hidden="0" name="filename" type="field" width="618"/>
      <column hidden="0" name="directory" type="field" width="-1"/>
      <column hidden="0" name="photo_timestamp" type="field" width="-1"/>
      <column hidden="0" name="photo_timestamp_with_offset" type="field" width="-1"/>
      <column hidden="0" name="track_seg_point_id" type="field" width="-1"/>
      <column hidden="0" name="ele" type="field" width="-1"/>
      <column hidden="0" name="time" type="field" width="-1"/>
      <column hidden="0" name="hdop" type="field" width="-1"/>
      <column hidden="0" name="photo_focal_length_35mm" type="field" width="-1"/>
      <column hidden="0" name="additional_photo_data_photo_title" type="field" width="-1"/>
      <column hidden="0" name="additional_photo_data_target_point_east" type="field" width="-1"/>
      <column hidden="0" name="additional_photo_data_target_point_north" type="field" width="-1"/>
      <column hidden="1" type="actions" width="-1"/>
    </columns>
  </attributetableconfig>
  <conditionalstyles>
    <rowstyles/>
    <fieldstyles/>
  </conditionalstyles>
  <storedexpressions/>
  <editform tolerant="1"></editform>
  <editforminit/>
  <editforminitcodesource>0</editforminitcodesource>
  <editforminitfilepath></editforminitfilepath>
  <editforminitcode><![CDATA[# -*- coding: utf-8 -*-
"""
QGIS forms can have a Python function that is called when the form is
opened.

Use this function to add extra logic to your forms.

Enter the name of the function in the "Python Init function"
field.
An example follows:
"""
from qgis.PyQt.QtWidgets import QWidget

def my_form_open(dialog, layer, feature):
    geom = feature.geometry()
    control = dialog.findChild(QWidget, "MyLineEdit")
]]></editforminitcode>
  <featformsuppress>0</featformsuppress>
  <editorlayout>tablayout</editorlayout>
  <attributeEditorForm>
    <labelStyle overrideLabelFont="0" labelColor="0,0,0,255" overrideLabelColor="0">
      <labelFont bold="0" strikethrough="0" description="Noto Sans,10,-1,0,50,0,0,0,0,0" italic="0" style="" underline="0"/>
    </labelStyle>
    <attributeEditorContainer collapsedExpression="" groupBox="1" visibilityExpressionEnabled="0" columnCount="1" collapsed="0" name="Photo" collapsedExpressionEnabled="0" visibilityExpression="" showLabel="1">
      <labelStyle overrideLabelFont="0" labelColor="0,0,0,255" overrideLabelColor="0">
        <labelFont bold="0" strikethrough="0" description="Noto Sans,10,-1,0,50,0,0,0,0,0" italic="0" style="" underline="0"/>
      </labelStyle>
      <attributeEditorField index="0" name="photo" showLabel="1">
        <labelStyle overrideLabelFont="0" labelColor="0,0,0,255" overrideLabelColor="0">
          <labelFont bold="0" strikethrough="0" description="Noto Sans,10,-1,0,50,0,0,0,0,0" italic="0" style="" underline="0"/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorContainer collapsedExpression="" groupBox="1" visibilityExpressionEnabled="0" columnCount="2" collapsed="0" name="" collapsedExpressionEnabled="0" visibilityExpression="" showLabel="1">
        <labelStyle overrideLabelFont="0" labelColor="0,0,0,255" overrideLabelColor="0">
          <labelFont bold="0" strikethrough="0" description="Noto Sans,10,-1,0,50,0,0,0,0,0" italic="0" style="" underline="0"/>
        </labelStyle>
        <attributeEditorField index="1" name="filename" showLabel="1">
          <labelStyle overrideLabelFont="0" labelColor="0,0,0,255" overrideLabelColor="0">
            <labelFont bold="0" strikethrough="0" description="Noto Sans,10,-1,0,50,0,0,0,0,0" italic="0" style="" underline="0"/>
          </labelStyle>
        </attributeEditorField>
        <attributeEditorField index="10" name="additional_photo_data_photo_title" showLabel="1">
          <labelStyle overrideLabelFont="0" labelColor="0,0,0,255" overrideLabelColor="0">
            <labelFont bold="0" strikethrough="0" description="Noto Sans,10,-1,0,50,0,0,0,0,0" italic="0" style="" underline="0"/>
          </labelStyle>
        </attributeEditorField>
        <attributeEditorField index="2" name="directory" showLabel="1">
          <labelStyle overrideLabelFont="0" labelColor="0,0,0,255" overrideLabelColor="0">
            <labelFont bold="0" strikethrough="0" description="Noto Sans,10,-1,0,50,0,0,0,0,0" italic="0" style="" underline="0"/>
          </labelStyle>
        </attributeEditorField>
        <attributeEditorField index="3" name="photo_timestamp" showLabel="1">
          <labelStyle overrideLabelFont="0" labelColor="0,0,0,255" overrideLabelColor="0">
            <labelFont bold="0" strikethrough="0" description="Noto Sans,10,-1,0,50,0,0,0,0,0" italic="0" style="" underline="0"/>
          </labelStyle>
        </attributeEditorField>
        <attributeEditorField index="4" name="photo_timestamp_with_offset" showLabel="1">
          <labelStyle overrideLabelFont="0" labelColor="0,0,0,255" overrideLabelColor="0">
            <labelFont bold="0" strikethrough="0" description="Noto Sans,10,-1,0,50,0,0,0,0,0" italic="0" style="" underline="0"/>
          </labelStyle>
        </attributeEditorField>
        <attributeEditorField index="5" name="photo_focal_length_35mm" showLabel="1">
          <labelStyle overrideLabelFont="0" labelColor="0,0,0,255" overrideLabelColor="0">
            <labelFont bold="0" strikethrough="0" description="Noto Sans,10,-1,0,50,0,0,0,0,0" italic="0" style="" underline="0"/>
          </labelStyle>
        </attributeEditorField>
        <attributeEditorField index="11" name="additional_photo_data_target_point_east" showLabel="1">
          <labelStyle overrideLabelFont="0" labelColor="0,0,0,255" overrideLabelColor="0">
            <labelFont bold="0" strikethrough="0" description="Noto Sans,10,-1,0,50,0,0,0,0,0" italic="0" style="" underline="0"/>
          </labelStyle>
        </attributeEditorField>
        <attributeEditorField index="12" name="additional_photo_data_target_point_north" showLabel="1">
          <labelStyle overrideLabelFont="0" labelColor="0,0,0,255" overrideLabelColor="0">
            <labelFont bold="0" strikethrough="0" description="Noto Sans,10,-1,0,50,0,0,0,0,0" italic="0" style="" underline="0"/>
          </labelStyle>
        </attributeEditorField>
      </attributeEditorContainer>
    </attributeEditorContainer>
    <attributeEditorContainer collapsedExpression="" groupBox="1" visibilityExpressionEnabled="0" columnCount="2" collapsed="0" name="Track  Point" collapsedExpressionEnabled="0" visibilityExpression="" showLabel="1">
      <labelStyle overrideLabelFont="0" labelColor="0,0,0,255" overrideLabelColor="0">
        <labelFont bold="0" strikethrough="0" description="Noto Sans,10,-1,0,50,0,0,0,0,0" italic="0" style="" underline="0"/>
      </labelStyle>
      <attributeEditorField index="6" name="track_seg_point_id" showLabel="1">
        <labelStyle overrideLabelFont="0" labelColor="0,0,0,255" overrideLabelColor="0">
          <labelFont bold="0" strikethrough="0" description="Noto Sans,10,-1,0,50,0,0,0,0,0" italic="0" style="" underline="0"/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField index="9" name="hdop" showLabel="1">
        <labelStyle overrideLabelFont="0" labelColor="0,0,0,255" overrideLabelColor="0">
          <labelFont bold="0" strikethrough="0" description="Noto Sans,10,-1,0,50,0,0,0,0,0" italic="0" style="" underline="0"/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField index="8" name="time" showLabel="1">
        <labelStyle overrideLabelFont="0" labelColor="0,0,0,255" overrideLabelColor="0">
          <labelFont bold="0" strikethrough="0" description="Noto Sans,10,-1,0,50,0,0,0,0,0" italic="0" style="" underline="0"/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField index="7" name="ele" showLabel="1">
        <labelStyle overrideLabelFont="0" labelColor="0,0,0,255" overrideLabelColor="0">
          <labelFont bold="0" strikethrough="0" description="Noto Sans,10,-1,0,50,0,0,0,0,0" italic="0" style="" underline="0"/>
        </labelStyle>
      </attributeEditorField>
    </attributeEditorContainer>
  </attributeEditorForm>
  <editable>
    <field name="additional_photo_data_photo_title" editable="0"/>
    <field name="additional_photo_data_target_point_east" editable="0"/>
    <field name="additional_photo_data_target_point_north" editable="0"/>
    <field name="directory" editable="0"/>
    <field name="ele" editable="0"/>
    <field name="filename" editable="0"/>
    <field name="hdop" editable="0"/>
    <field name="photo" editable="1"/>
    <field name="photo_focal_length_35mm" editable="0"/>
    <field name="photo_timestamp" editable="0"/>
    <field name="photo_timestamp_with_offset" editable="0"/>
    <field name="time" editable="0"/>
    <field name="track_seg_point_id" editable="0"/>
  </editable>
  <labelOnTop>
    <field labelOnTop="0" name="additional_photo_data_photo_title"/>
    <field labelOnTop="0" name="additional_photo_data_target_point_east"/>
    <field labelOnTop="0" name="additional_photo_data_target_point_north"/>
    <field labelOnTop="0" name="directory"/>
    <field labelOnTop="0" name="ele"/>
    <field labelOnTop="0" name="filename"/>
    <field labelOnTop="0" name="hdop"/>
    <field labelOnTop="1" name="photo"/>
    <field labelOnTop="0" name="photo_focal_length_35mm"/>
    <field labelOnTop="0" name="photo_timestamp"/>
    <field labelOnTop="0" name="photo_timestamp_with_offset"/>
    <field labelOnTop="0" name="time"/>
    <field labelOnTop="0" name="track_seg_point_id"/>
  </labelOnTop>
  <reuseLastValue>
    <field reuseLastValue="0" name="additional_photo_data_photo_title"/>
    <field reuseLastValue="0" name="additional_photo_data_target_point_east"/>
    <field reuseLastValue="0" name="additional_photo_data_target_point_north"/>
    <field reuseLastValue="0" name="directory"/>
    <field reuseLastValue="0" name="ele"/>
    <field reuseLastValue="0" name="filename"/>
    <field reuseLastValue="0" name="hdop"/>
    <field reuseLastValue="0" name="photo"/>
    <field reuseLastValue="0" name="photo_focal_length_35mm"/>
    <field reuseLastValue="0" name="photo_timestamp"/>
    <field reuseLastValue="0" name="photo_timestamp_with_offset"/>
    <field reuseLastValue="0" name="time"/>
    <field reuseLastValue="0" name="track_seg_point_id"/>
  </reuseLastValue>
  <dataDefinedFieldProperties/>
  <widgets/>
  <mapTip>&lt;p>&lt;img src="file://[% photo %]" width="500" />&lt;/p>
&lt;p>
[% replace(
  regexp_replace(filename,'\\d+_',''),
  '_',
  ' '
) %]
&lt;br/>
Photo taken: 
[% format_date(
	photo_timestamp_with_offset + '1 hour',
	'dd.MM.yyyy hh:mm'
) %]
&lt;/p></mapTip>
  <layerGeometryType>0</layerGeometryType>
</qgis>
