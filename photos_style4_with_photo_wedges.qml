<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis styleCategories="Symbology|Labeling|Fields|Forms|Actions|MapTips|AttributeTable|Rendering|CustomProperties|GeometryOptions|Relations|Temporal" maxScale="0" symbologyReferenceScale="-1" hasScaleBasedVisibilityFlag="0" minScale="100000000" simplifyAlgorithm="0" simplifyLocal="1" labelsEnabled="0" version="3.28.1-Firenze" simplifyDrawingHints="0" simplifyDrawingTol="1" simplifyMaxScale="1">
  <temporal enabled="1" startField="photo_timestamp" fixedDuration="0" durationField="photo_focal_length_35mm" limitMode="0" accumulate="1" mode="1" endExpression="" endField="" startExpression="" durationUnit="min">
    <fixedRange>
      <start></start>
      <end></end>
    </fixedRange>
  </temporal>
  <renderer-v2 forceraster="0" type="singleSymbol" enableorderby="0" symbollevels="0" referencescale="-1">
    <symbols>
      <symbol name="0" alpha="1" frame_rate="10" clip_to_extent="1" is_animated="0" force_rhr="0" type="marker">
        <data_defined_properties>
          <Option type="Map">
            <Option name="name" value="" type="QString"/>
            <Option name="properties"/>
            <Option name="type" value="collection" type="QString"/>
          </Option>
        </data_defined_properties>
        <layer enabled="1" locked="0" class="GeometryGenerator" pass="0">
          <Option type="Map">
            <Option name="SymbolType" value="Fill" type="QString"/>
            <Option name="geometryModifier" value=" wedge_buffer( &#xa;&#x9;@geometry,&#xa;&#x9;round(&#xa;&#x9;&#x9;degrees(&#xa;&#x9;&#x9;&#x9;azimuth(&#xa;&#x9;&#x9;&#x9;&#x9;@geometry,&#xa;&#x9;&#x9;&#x9;&#x9;make_point(additional_photo_data_target_point_east, additional_photo_data_target_point_north)&#xa;&#x9;&#x9;&#x9;)&#xa;&#x9;&#x9;),&#xa;&#x9;&#x9;0&#xa;&#x9;),&#xa;&#x9;photo_angle,&#xa;&#x9;distance(&#xa;&#x9;&#x9;@geometry,&#xa;&#x9;&#x9;make_point(additional_photo_data_target_point_east, additional_photo_data_target_point_north)&#xa;&#x9;)&#xa;)" type="QString"/>
            <Option name="units" value="MapUnit" type="QString"/>
          </Option>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" value="" type="QString"/>
              <Option name="properties" type="Map">
                <Option name="enabled" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="is_selected()" type="QString"/>
                  <Option name="type" value="3" type="int"/>
                </Option>
              </Option>
              <Option name="type" value="collection" type="QString"/>
            </Option>
          </data_defined_properties>
          <symbol name="@0@0" alpha="1" frame_rate="10" clip_to_extent="1" is_animated="0" force_rhr="0" type="fill">
            <data_defined_properties>
              <Option type="Map">
                <Option name="name" value="" type="QString"/>
                <Option name="properties"/>
                <Option name="type" value="collection" type="QString"/>
              </Option>
            </data_defined_properties>
            <layer enabled="1" locked="0" class="SimpleFill" pass="0">
              <Option type="Map">
                <Option name="border_width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                <Option name="color" value="152,0,254,63" type="QString"/>
                <Option name="joinstyle" value="bevel" type="QString"/>
                <Option name="offset" value="0,0" type="QString"/>
                <Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
                <Option name="offset_unit" value="MM" type="QString"/>
                <Option name="outline_color" value="152,0,254,255" type="QString"/>
                <Option name="outline_style" value="solid" type="QString"/>
                <Option name="outline_width" value="0.2" type="QString"/>
                <Option name="outline_width_unit" value="MM" type="QString"/>
                <Option name="style" value="solid" type="QString"/>
              </Option>
              <data_defined_properties>
                <Option type="Map">
                  <Option name="name" value="" type="QString"/>
                  <Option name="properties"/>
                  <Option name="type" value="collection" type="QString"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </layer>
        <layer enabled="1" locked="0" class="SvgMarker" pass="0">
          <Option type="Map">
            <Option name="angle" value="0" type="QString"/>
            <Option name="color" value="152,0,254,255" type="QString"/>
            <Option name="fixedAspectRatio" value="0" type="QString"/>
            <Option name="horizontal_anchor_point" value="1" type="QString"/>
            <Option name="name" value="gpsicons/camera.svg" type="QString"/>
            <Option name="offset" value="0,0" type="QString"/>
            <Option name="offset_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
            <Option name="offset_unit" value="MM" type="QString"/>
            <Option name="outline_color" value="255,255,255,255" type="QString"/>
            <Option name="outline_width" value="0" type="QString"/>
            <Option name="outline_width_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
            <Option name="outline_width_unit" value="MM" type="QString"/>
            <Option name="parameters"/>
            <Option name="scale_method" value="diameter" type="QString"/>
            <Option name="size" value="6" type="QString"/>
            <Option name="size_map_unit_scale" value="3x:0,0,0,0,0,0" type="QString"/>
            <Option name="size_unit" value="MM" type="QString"/>
            <Option name="vertical_anchor_point" value="1" type="QString"/>
          </Option>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" value="" type="QString"/>
              <Option name="properties" type="Map">
                <Option name="angle" type="Map">
                  <Option name="active" value="true" type="bool"/>
                  <Option name="expression" value="round(&#xa;&#x9;degrees(&#xa;&#x9;&#x9;azimuth(&#xa;&#x9;&#x9;&#x9;@geometry,&#xa;&#x9;&#x9;&#x9;make_point(additional_photo_data_target_point_east, additional_photo_data_target_point_north)&#xa;&#x9;&#x9;)&#xa;&#x9;),&#xa;&#x9;0&#xa;)" type="QString"/>
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
  <customproperties>
    <Option type="Map">
      <Option name="OnConvertFormatRegeneratePrimaryKey" value="false" type="bool"/>
      <Option name="dualview/previewExpressions" type="List">
        <Option value="&quot;filename&quot;" type="QString"/>
      </Option>
      <Option name="embeddedWidgets/count" value="0" type="int"/>
      <Option name="variableNames"/>
      <Option name="variableValues"/>
    </Option>
  </customproperties>
  <blendMode>0</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <layerOpacity>1</layerOpacity>
  <geometryOptions geometryPrecision="0" removeDuplicateNodes="0">
    <activeChecks/>
    <checkConfiguration/>
  </geometryOptions>
  <referencedLayers/>
  <fieldConfiguration>
    <field name="photo" configurationFlags="None">
      <editWidget type="ExternalResource">
        <config>
          <Option type="Map">
            <Option name="DocumentViewer" value="1" type="int"/>
            <Option name="DocumentViewerHeight" value="0" type="int"/>
            <Option name="DocumentViewerWidth" value="0" type="int"/>
            <Option name="FileWidget" value="true" type="bool"/>
            <Option name="FileWidgetButton" value="true" type="bool"/>
            <Option name="FileWidgetFilter" value="" type="QString"/>
            <Option name="FullUrl" value="true" type="bool"/>
            <Option name="PropertyCollection" type="Map">
              <Option name="name" value="" type="QString"/>
              <Option name="properties" type="invalid"/>
              <Option name="type" value="collection" type="QString"/>
            </Option>
            <Option name="RelativeStorage" value="0" type="int"/>
            <Option name="StorageAuthConfigId" value="" type="QString"/>
            <Option name="StorageMode" value="0" type="int"/>
            <Option name="StorageType" value="" type="QString"/>
            <Option name="UseLink" value="true" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="filename" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option name="IsMultiline" value="false" type="bool"/>
            <Option name="UseHtml" value="false" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="directory" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option name="IsMultiline" value="false" type="bool"/>
            <Option name="UseHtml" value="false" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="photo_timestamp" configurationFlags="None">
      <editWidget type="DateTime">
        <config>
          <Option type="Map">
            <Option name="allow_null" value="true" type="bool"/>
            <Option name="calendar_popup" value="true" type="bool"/>
            <Option name="display_format" value="d MMM yyyy HH:mm:ss" type="QString"/>
            <Option name="field_format" value="d MMM yyyy HH:mm:ss" type="QString"/>
            <Option name="field_iso_format" value="false" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="photo_timestamp_with_offset" configurationFlags="None">
      <editWidget type="DateTime">
        <config>
          <Option type="Map">
            <Option name="allow_null" value="true" type="bool"/>
            <Option name="calendar_popup" value="true" type="bool"/>
            <Option name="display_format" value="d MMM yyyy HH:mm:ss" type="QString"/>
            <Option name="field_format" value="d MMM yyyy HH:mm:ss" type="QString"/>
            <Option name="field_iso_format" value="false" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="photo_focal_length_35mm" configurationFlags="None">
      <editWidget type="Range">
        <config>
          <Option type="Map">
            <Option name="AllowNull" value="true" type="bool"/>
            <Option name="Max" value="2147483647" type="int"/>
            <Option name="Min" value="-2147483648" type="int"/>
            <Option name="Precision" value="0" type="int"/>
            <Option name="Step" value="1" type="int"/>
            <Option name="Style" value="SpinBox" type="QString"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="photo_angle" configurationFlags="None">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="track_seg_point_id" configurationFlags="None">
      <editWidget type="Range">
        <config>
          <Option type="Map">
            <Option name="AllowNull" value="true" type="bool"/>
            <Option name="Max" value="2147483647" type="int"/>
            <Option name="Min" value="-2147483648" type="int"/>
            <Option name="Precision" value="0" type="int"/>
            <Option name="Step" value="1" type="int"/>
            <Option name="Style" value="SpinBox" type="QString"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="ele" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option name="IsMultiline" value="false" type="bool"/>
            <Option name="UseHtml" value="false" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="time" configurationFlags="None">
      <editWidget type="DateTime">
        <config>
          <Option type="Map">
            <Option name="allow_null" value="true" type="bool"/>
            <Option name="calendar_popup" value="true" type="bool"/>
            <Option name="display_format" value="d MMM yyyy HH:mm:ss" type="QString"/>
            <Option name="field_format" value="d MMM yyyy HH:mm:ss" type="QString"/>
            <Option name="field_iso_format" value="false" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="hdop" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option name="IsMultiline" value="false" type="bool"/>
            <Option name="UseHtml" value="false" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="additional_photo_data_photo_title" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option name="IsMultiline" value="false" type="bool"/>
            <Option name="UseHtml" value="false" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="additional_photo_data_target_point_east" configurationFlags="None">
      <editWidget type="Range">
        <config>
          <Option type="Map">
            <Option name="AllowNull" value="true" type="bool"/>
            <Option name="Max" value="2147483647" type="int"/>
            <Option name="Min" value="-2147483648" type="int"/>
            <Option name="Precision" value="0" type="int"/>
            <Option name="Step" value="1" type="int"/>
            <Option name="Style" value="SpinBox" type="QString"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="additional_photo_data_target_point_north" configurationFlags="None">
      <editWidget type="Range">
        <config>
          <Option type="Map">
            <Option name="AllowNull" value="true" type="bool"/>
            <Option name="Max" value="2147483647" type="int"/>
            <Option name="Min" value="-2147483648" type="int"/>
            <Option name="Precision" value="0" type="int"/>
            <Option name="Step" value="1" type="int"/>
            <Option name="Style" value="SpinBox" type="QString"/>
          </Option>
        </config>
      </editWidget>
    </field>
  </fieldConfiguration>
  <aliases>
    <alias name="Photo" index="0" field="photo"/>
    <alias name="Filename" index="1" field="filename"/>
    <alias name="Directory" index="2" field="directory"/>
    <alias name="Photo timestamp" index="3" field="photo_timestamp"/>
    <alias name="Photo time stamp corrected with offset" index="4" field="photo_timestamp_with_offset"/>
    <alias name="Photo focal length in 35mm" index="5" field="photo_focal_length_35mm"/>
    <alias name="" index="6" field="photo_angle"/>
    <alias name="Track-Point Sequence ID" index="7" field="track_seg_point_id"/>
    <alias name="GPS elevation" index="8" field="ele"/>
    <alias name="GPS time stamp" index="9" field="time"/>
    <alias name="GPS HDOP value" index="10" field="hdop"/>
    <alias name="" index="11" field="additional_photo_data_photo_title"/>
    <alias name="" index="12" field="additional_photo_data_target_point_east"/>
    <alias name="" index="13" field="additional_photo_data_target_point_north"/>
  </aliases>
  <defaults>
    <default expression="" applyOnUpdate="0" field="photo"/>
    <default expression="" applyOnUpdate="0" field="filename"/>
    <default expression="" applyOnUpdate="0" field="directory"/>
    <default expression="" applyOnUpdate="0" field="photo_timestamp"/>
    <default expression="" applyOnUpdate="0" field="photo_timestamp_with_offset"/>
    <default expression="" applyOnUpdate="0" field="photo_focal_length_35mm"/>
    <default expression="" applyOnUpdate="0" field="photo_angle"/>
    <default expression="" applyOnUpdate="0" field="track_seg_point_id"/>
    <default expression="" applyOnUpdate="0" field="ele"/>
    <default expression="" applyOnUpdate="0" field="time"/>
    <default expression="" applyOnUpdate="0" field="hdop"/>
    <default expression="" applyOnUpdate="0" field="additional_photo_data_photo_title"/>
    <default expression="" applyOnUpdate="0" field="additional_photo_data_target_point_east"/>
    <default expression="" applyOnUpdate="0" field="additional_photo_data_target_point_north"/>
  </defaults>
  <constraints>
    <constraint constraints="0" field="photo" notnull_strength="0" unique_strength="0" exp_strength="0"/>
    <constraint constraints="0" field="filename" notnull_strength="0" unique_strength="0" exp_strength="0"/>
    <constraint constraints="0" field="directory" notnull_strength="0" unique_strength="0" exp_strength="0"/>
    <constraint constraints="0" field="photo_timestamp" notnull_strength="0" unique_strength="0" exp_strength="0"/>
    <constraint constraints="0" field="photo_timestamp_with_offset" notnull_strength="0" unique_strength="0" exp_strength="0"/>
    <constraint constraints="0" field="photo_focal_length_35mm" notnull_strength="0" unique_strength="0" exp_strength="0"/>
    <constraint constraints="0" field="photo_angle" notnull_strength="0" unique_strength="0" exp_strength="0"/>
    <constraint constraints="0" field="track_seg_point_id" notnull_strength="0" unique_strength="0" exp_strength="0"/>
    <constraint constraints="0" field="ele" notnull_strength="0" unique_strength="0" exp_strength="0"/>
    <constraint constraints="0" field="time" notnull_strength="0" unique_strength="0" exp_strength="0"/>
    <constraint constraints="0" field="hdop" notnull_strength="0" unique_strength="0" exp_strength="0"/>
    <constraint constraints="0" field="additional_photo_data_photo_title" notnull_strength="0" unique_strength="0" exp_strength="0"/>
    <constraint constraints="0" field="additional_photo_data_target_point_east" notnull_strength="0" unique_strength="0" exp_strength="0"/>
    <constraint constraints="0" field="additional_photo_data_target_point_north" notnull_strength="0" unique_strength="0" exp_strength="0"/>
  </constraints>
  <constraintExpressions>
    <constraint field="photo" desc="" exp=""/>
    <constraint field="filename" desc="" exp=""/>
    <constraint field="directory" desc="" exp=""/>
    <constraint field="photo_timestamp" desc="" exp=""/>
    <constraint field="photo_timestamp_with_offset" desc="" exp=""/>
    <constraint field="photo_focal_length_35mm" desc="" exp=""/>
    <constraint field="photo_angle" desc="" exp=""/>
    <constraint field="track_seg_point_id" desc="" exp=""/>
    <constraint field="ele" desc="" exp=""/>
    <constraint field="time" desc="" exp=""/>
    <constraint field="hdop" desc="" exp=""/>
    <constraint field="additional_photo_data_photo_title" desc="" exp=""/>
    <constraint field="additional_photo_data_target_point_east" desc="" exp=""/>
    <constraint field="additional_photo_data_target_point_north" desc="" exp=""/>
  </constraintExpressions>
  <expressionfields/>
  <attributeactions>
    <defaultAction value="{00000000-0000-0000-0000-000000000000}" key="Canvas"/>
  </attributeactions>
  <attributetableconfig sortExpression="&quot;filename&quot;" sortOrder="0" actionWidgetStyle="dropDown">
    <columns>
      <column name="photo" type="field" width="595" hidden="0"/>
      <column name="filename" type="field" width="618" hidden="0"/>
      <column name="directory" type="field" width="-1" hidden="0"/>
      <column name="photo_timestamp" type="field" width="-1" hidden="0"/>
      <column name="photo_timestamp_with_offset" type="field" width="-1" hidden="0"/>
      <column name="track_seg_point_id" type="field" width="-1" hidden="0"/>
      <column name="ele" type="field" width="-1" hidden="0"/>
      <column name="time" type="field" width="-1" hidden="0"/>
      <column name="hdop" type="field" width="-1" hidden="0"/>
      <column name="photo_focal_length_35mm" type="field" width="-1" hidden="0"/>
      <column name="additional_photo_data_photo_title" type="field" width="-1" hidden="0"/>
      <column name="additional_photo_data_target_point_east" type="field" width="-1" hidden="0"/>
      <column name="additional_photo_data_target_point_north" type="field" width="-1" hidden="0"/>
      <column name="photo_angle" type="field" width="-1" hidden="0"/>
      <column type="actions" width="-1" hidden="1"/>
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
    <labelStyle labelColor="0,0,0,255" overrideLabelColor="0" overrideLabelFont="0">
      <labelFont italic="0" description="Noto Sans,10,-1,0,50,0,0,0,0,0" style="" underline="0" bold="0" strikethrough="0"/>
    </labelStyle>
    <attributeEditorContainer name="Photo" visibilityExpressionEnabled="0" collapsedExpressionEnabled="0" collapsed="0" groupBox="1" showLabel="1" visibilityExpression="" columnCount="1" collapsedExpression="">
      <labelStyle labelColor="0,0,0,255" overrideLabelColor="0" overrideLabelFont="0">
        <labelFont italic="0" description="Noto Sans,10,-1,0,50,0,0,0,0,0" style="" underline="0" bold="0" strikethrough="0"/>
      </labelStyle>
      <attributeEditorField name="photo" index="0" showLabel="1">
        <labelStyle labelColor="0,0,0,255" overrideLabelColor="0" overrideLabelFont="0">
          <labelFont italic="0" description="Noto Sans,10,-1,0,50,0,0,0,0,0" style="" underline="0" bold="0" strikethrough="0"/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorContainer name="" visibilityExpressionEnabled="0" collapsedExpressionEnabled="0" collapsed="0" groupBox="1" showLabel="1" visibilityExpression="" columnCount="2" collapsedExpression="">
        <labelStyle labelColor="0,0,0,255" overrideLabelColor="0" overrideLabelFont="0">
          <labelFont italic="0" description="Noto Sans,10,-1,0,50,0,0,0,0,0" style="" underline="0" bold="0" strikethrough="0"/>
        </labelStyle>
        <attributeEditorField name="filename" index="1" showLabel="1">
          <labelStyle labelColor="0,0,0,255" overrideLabelColor="0" overrideLabelFont="0">
            <labelFont italic="0" description="Noto Sans,10,-1,0,50,0,0,0,0,0" style="" underline="0" bold="0" strikethrough="0"/>
          </labelStyle>
        </attributeEditorField>
        <attributeEditorField name="additional_photo_data_photo_title" index="11" showLabel="1">
          <labelStyle labelColor="0,0,0,255" overrideLabelColor="0" overrideLabelFont="0">
            <labelFont italic="0" description="Noto Sans,10,-1,0,50,0,0,0,0,0" style="" underline="0" bold="0" strikethrough="0"/>
          </labelStyle>
        </attributeEditorField>
        <attributeEditorField name="directory" index="2" showLabel="1">
          <labelStyle labelColor="0,0,0,255" overrideLabelColor="0" overrideLabelFont="0">
            <labelFont italic="0" description="Noto Sans,10,-1,0,50,0,0,0,0,0" style="" underline="0" bold="0" strikethrough="0"/>
          </labelStyle>
        </attributeEditorField>
        <attributeEditorField name="photo_timestamp" index="3" showLabel="1">
          <labelStyle labelColor="0,0,0,255" overrideLabelColor="0" overrideLabelFont="0">
            <labelFont italic="0" description="Noto Sans,10,-1,0,50,0,0,0,0,0" style="" underline="0" bold="0" strikethrough="0"/>
          </labelStyle>
        </attributeEditorField>
        <attributeEditorField name="photo_timestamp_with_offset" index="4" showLabel="1">
          <labelStyle labelColor="0,0,0,255" overrideLabelColor="0" overrideLabelFont="0">
            <labelFont italic="0" description="Noto Sans,10,-1,0,50,0,0,0,0,0" style="" underline="0" bold="0" strikethrough="0"/>
          </labelStyle>
        </attributeEditorField>
        <attributeEditorField name="photo_focal_length_35mm" index="5" showLabel="1">
          <labelStyle labelColor="0,0,0,255" overrideLabelColor="0" overrideLabelFont="0">
            <labelFont italic="0" description="Noto Sans,10,-1,0,50,0,0,0,0,0" style="" underline="0" bold="0" strikethrough="0"/>
          </labelStyle>
        </attributeEditorField>
        <attributeEditorField name="additional_photo_data_target_point_east" index="12" showLabel="1">
          <labelStyle labelColor="0,0,0,255" overrideLabelColor="0" overrideLabelFont="0">
            <labelFont italic="0" description="Noto Sans,10,-1,0,50,0,0,0,0,0" style="" underline="0" bold="0" strikethrough="0"/>
          </labelStyle>
        </attributeEditorField>
        <attributeEditorField name="additional_photo_data_target_point_north" index="13" showLabel="1">
          <labelStyle labelColor="0,0,0,255" overrideLabelColor="0" overrideLabelFont="0">
            <labelFont italic="0" description="Noto Sans,10,-1,0,50,0,0,0,0,0" style="" underline="0" bold="0" strikethrough="0"/>
          </labelStyle>
        </attributeEditorField>
      </attributeEditorContainer>
    </attributeEditorContainer>
    <attributeEditorContainer name="Track  Point" visibilityExpressionEnabled="0" collapsedExpressionEnabled="0" collapsed="0" groupBox="1" showLabel="1" visibilityExpression="" columnCount="2" collapsedExpression="">
      <labelStyle labelColor="0,0,0,255" overrideLabelColor="0" overrideLabelFont="0">
        <labelFont italic="0" description="Noto Sans,10,-1,0,50,0,0,0,0,0" style="" underline="0" bold="0" strikethrough="0"/>
      </labelStyle>
      <attributeEditorField name="track_seg_point_id" index="7" showLabel="1">
        <labelStyle labelColor="0,0,0,255" overrideLabelColor="0" overrideLabelFont="0">
          <labelFont italic="0" description="Noto Sans,10,-1,0,50,0,0,0,0,0" style="" underline="0" bold="0" strikethrough="0"/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField name="hdop" index="10" showLabel="1">
        <labelStyle labelColor="0,0,0,255" overrideLabelColor="0" overrideLabelFont="0">
          <labelFont italic="0" description="Noto Sans,10,-1,0,50,0,0,0,0,0" style="" underline="0" bold="0" strikethrough="0"/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField name="time" index="9" showLabel="1">
        <labelStyle labelColor="0,0,0,255" overrideLabelColor="0" overrideLabelFont="0">
          <labelFont italic="0" description="Noto Sans,10,-1,0,50,0,0,0,0,0" style="" underline="0" bold="0" strikethrough="0"/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField name="ele" index="8" showLabel="1">
        <labelStyle labelColor="0,0,0,255" overrideLabelColor="0" overrideLabelFont="0">
          <labelFont italic="0" description="Noto Sans,10,-1,0,50,0,0,0,0,0" style="" underline="0" bold="0" strikethrough="0"/>
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
    <field name="photo_angle" editable="1"/>
    <field name="photo_focal_length_35mm" editable="0"/>
    <field name="photo_timestamp" editable="0"/>
    <field name="photo_timestamp_with_offset" editable="0"/>
    <field name="time" editable="0"/>
    <field name="track_seg_point_id" editable="0"/>
  </editable>
  <labelOnTop>
    <field name="additional_photo_data_photo_title" labelOnTop="0"/>
    <field name="additional_photo_data_target_point_east" labelOnTop="0"/>
    <field name="additional_photo_data_target_point_north" labelOnTop="0"/>
    <field name="directory" labelOnTop="0"/>
    <field name="ele" labelOnTop="0"/>
    <field name="filename" labelOnTop="0"/>
    <field name="hdop" labelOnTop="0"/>
    <field name="photo" labelOnTop="1"/>
    <field name="photo_angle" labelOnTop="0"/>
    <field name="photo_focal_length_35mm" labelOnTop="0"/>
    <field name="photo_timestamp" labelOnTop="0"/>
    <field name="photo_timestamp_with_offset" labelOnTop="0"/>
    <field name="time" labelOnTop="0"/>
    <field name="track_seg_point_id" labelOnTop="0"/>
  </labelOnTop>
  <reuseLastValue>
    <field name="additional_photo_data_photo_title" reuseLastValue="0"/>
    <field name="additional_photo_data_target_point_east" reuseLastValue="0"/>
    <field name="additional_photo_data_target_point_north" reuseLastValue="0"/>
    <field name="directory" reuseLastValue="0"/>
    <field name="ele" reuseLastValue="0"/>
    <field name="filename" reuseLastValue="0"/>
    <field name="hdop" reuseLastValue="0"/>
    <field name="photo" reuseLastValue="0"/>
    <field name="photo_angle" reuseLastValue="0"/>
    <field name="photo_focal_length_35mm" reuseLastValue="0"/>
    <field name="photo_timestamp" reuseLastValue="0"/>
    <field name="photo_timestamp_with_offset" reuseLastValue="0"/>
    <field name="time" reuseLastValue="0"/>
    <field name="track_seg_point_id" reuseLastValue="0"/>
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
