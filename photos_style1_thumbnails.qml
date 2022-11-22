<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis minScale="100000000" simplifyDrawingHints="0" hasScaleBasedVisibilityFlag="0" labelsEnabled="0" simplifyDrawingTol="1" symbologyReferenceScale="-1" version="3.29.0-Master" styleCategories="Symbology|Labeling|Fields|Forms|Actions|MapTips|AttributeTable|Rendering|CustomProperties|GeometryOptions|Relations|Temporal" simplifyMaxScale="1" simplifyAlgorithm="0" simplifyLocal="1" maxScale="0">
  <temporal endField="photo_timestamp" endExpression="" limitMode="0" durationUnit="min" mode="0" startField="" enabled="0" startExpression="" fixedDuration="0" durationField="" accumulate="0">
    <fixedRange>
      <start></start>
      <end></end>
    </fixedRange>
  </temporal>
  <renderer-v2 forceraster="0" enableorderby="0" type="singleSymbol" referencescale="-1" symbollevels="0">
    <symbols>
      <symbol alpha="1" clip_to_extent="1" name="0" frame_rate="10" type="marker" force_rhr="0" is_animated="0">
        <data_defined_properties>
          <Option type="Map">
            <Option value="" name="name" type="QString"/>
            <Option name="properties"/>
            <Option value="collection" name="type" type="QString"/>
          </Option>
        </data_defined_properties>
        <layer class="RasterMarker" locked="0" enabled="1" pass="0">
          <Option type="Map">
            <Option value="1" name="alpha" type="QString"/>
            <Option value="0" name="angle" type="QString"/>
            <Option value="0" name="fixedAspectRatio" type="QString"/>
            <Option value="1" name="horizontal_anchor_point" type="QString"/>
            <Option value="" name="imageFile" type="QString"/>
            <Option value="0,0" name="offset" type="QString"/>
            <Option value="3x:0,0,0,0,0,0" name="offset_map_unit_scale" type="QString"/>
            <Option value="MM" name="offset_unit" type="QString"/>
            <Option value="diameter" name="scale_method" type="QString"/>
            <Option value="20" name="size" type="QString"/>
            <Option value="3x:0,0,0,0,0,0" name="size_map_unit_scale" type="QString"/>
            <Option value="MM" name="size_unit" type="QString"/>
            <Option value="1" name="vertical_anchor_point" type="QString"/>
          </Option>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" name="name" type="QString"/>
              <Option name="properties" type="Map">
                <Option name="name" type="Map">
                  <Option value="true" name="active" type="bool"/>
                  <Option value="replace(photo,'jpeg_medium','jpeg_small')" name="expression" type="QString"/>
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
      <Option value="0" name="embeddedWidgets/count" type="int"/>
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
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="filename" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="directory" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="photo_timestamp" configurationFlags="None">
      <editWidget type="DateTime">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="photo_timestamp_with_offset" configurationFlags="None">
      <editWidget type="DateTime">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="track_seg_point_id" configurationFlags="None">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="ele" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="time" configurationFlags="None">
      <editWidget type="DateTime">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="hdop" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
  </fieldConfiguration>
  <aliases>
    <alias name="" field="photo" index="0"/>
    <alias name="" field="filename" index="1"/>
    <alias name="" field="directory" index="2"/>
    <alias name="" field="photo_timestamp" index="3"/>
    <alias name="" field="photo_timestamp_with_offset" index="4"/>
    <alias name="" field="track_seg_point_id" index="5"/>
    <alias name="" field="ele" index="6"/>
    <alias name="" field="time" index="7"/>
    <alias name="" field="hdop" index="8"/>
  </aliases>
  <defaults>
    <default field="photo" expression="" applyOnUpdate="0"/>
    <default field="filename" expression="" applyOnUpdate="0"/>
    <default field="directory" expression="" applyOnUpdate="0"/>
    <default field="photo_timestamp" expression="" applyOnUpdate="0"/>
    <default field="photo_timestamp_with_offset" expression="" applyOnUpdate="0"/>
    <default field="track_seg_point_id" expression="" applyOnUpdate="0"/>
    <default field="ele" expression="" applyOnUpdate="0"/>
    <default field="time" expression="" applyOnUpdate="0"/>
    <default field="hdop" expression="" applyOnUpdate="0"/>
  </defaults>
  <constraints>
    <constraint constraints="0" notnull_strength="0" field="photo" exp_strength="0" unique_strength="0"/>
    <constraint constraints="0" notnull_strength="0" field="filename" exp_strength="0" unique_strength="0"/>
    <constraint constraints="0" notnull_strength="0" field="directory" exp_strength="0" unique_strength="0"/>
    <constraint constraints="0" notnull_strength="0" field="photo_timestamp" exp_strength="0" unique_strength="0"/>
    <constraint constraints="0" notnull_strength="0" field="photo_timestamp_with_offset" exp_strength="0" unique_strength="0"/>
    <constraint constraints="0" notnull_strength="0" field="track_seg_point_id" exp_strength="0" unique_strength="0"/>
    <constraint constraints="0" notnull_strength="0" field="ele" exp_strength="0" unique_strength="0"/>
    <constraint constraints="0" notnull_strength="0" field="time" exp_strength="0" unique_strength="0"/>
    <constraint constraints="0" notnull_strength="0" field="hdop" exp_strength="0" unique_strength="0"/>
  </constraints>
  <constraintExpressions>
    <constraint desc="" field="photo" exp=""/>
    <constraint desc="" field="filename" exp=""/>
    <constraint desc="" field="directory" exp=""/>
    <constraint desc="" field="photo_timestamp" exp=""/>
    <constraint desc="" field="photo_timestamp_with_offset" exp=""/>
    <constraint desc="" field="track_seg_point_id" exp=""/>
    <constraint desc="" field="ele" exp=""/>
    <constraint desc="" field="time" exp=""/>
    <constraint desc="" field="hdop" exp=""/>
  </constraintExpressions>
  <expressionfields/>
  <attributeactions>
    <defaultAction key="Canvas" value="{00000000-0000-0000-0000-000000000000}"/>
  </attributeactions>
  <attributetableconfig sortOrder="0" actionWidgetStyle="dropDown" sortExpression="">
    <columns>
      <column hidden="0" name="photo" type="field" width="-1"/>
      <column hidden="0" name="filename" type="field" width="-1"/>
      <column hidden="0" name="directory" type="field" width="-1"/>
      <column hidden="0" name="photo_timestamp" type="field" width="-1"/>
      <column hidden="0" name="photo_timestamp_with_offset" type="field" width="-1"/>
      <column hidden="0" name="track_seg_point_id" type="field" width="-1"/>
      <column hidden="0" name="ele" type="field" width="-1"/>
      <column hidden="0" name="time" type="field" width="-1"/>
      <column hidden="0" name="hdop" type="field" width="-1"/>
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
  <editorlayout>generatedlayout</editorlayout>
  <editable>
    <field name="directory" editable="1"/>
    <field name="ele" editable="1"/>
    <field name="filename" editable="1"/>
    <field name="hdop" editable="1"/>
    <field name="photo" editable="1"/>
    <field name="photo_timestamp" editable="1"/>
    <field name="photo_timestamp_with_offset" editable="1"/>
    <field name="time" editable="1"/>
    <field name="track_seg_point_id" editable="1"/>
  </editable>
  <labelOnTop>
    <field labelOnTop="0" name="directory"/>
    <field labelOnTop="0" name="ele"/>
    <field labelOnTop="0" name="filename"/>
    <field labelOnTop="0" name="hdop"/>
    <field labelOnTop="0" name="photo"/>
    <field labelOnTop="0" name="photo_timestamp"/>
    <field labelOnTop="0" name="photo_timestamp_with_offset"/>
    <field labelOnTop="0" name="time"/>
    <field labelOnTop="0" name="track_seg_point_id"/>
  </labelOnTop>
  <reuseLastValue>
    <field name="directory" reuseLastValue="0"/>
    <field name="ele" reuseLastValue="0"/>
    <field name="filename" reuseLastValue="0"/>
    <field name="hdop" reuseLastValue="0"/>
    <field name="photo" reuseLastValue="0"/>
    <field name="photo_timestamp" reuseLastValue="0"/>
    <field name="photo_timestamp_with_offset" reuseLastValue="0"/>
    <field name="time" reuseLastValue="0"/>
    <field name="track_seg_point_id" reuseLastValue="0"/>
  </reuseLastValue>
  <dataDefinedFieldProperties/>
  <widgets/>
  <mapTip></mapTip>
  <layerGeometryType>0</layerGeometryType>
</qgis>
