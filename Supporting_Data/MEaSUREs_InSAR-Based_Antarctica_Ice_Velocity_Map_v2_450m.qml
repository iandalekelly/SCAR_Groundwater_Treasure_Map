<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis version="3.0" styleCategories="Symbology">
  <pipe>
    <rasterrenderer type="singlebandpseudocolor" band="1" opacity="1" alphaBand="-1">
      <rasterTransparency/>
      <minMaxOrigin>
        <limits>None</limits>
        <extent>WholeRaster</extent>
        <statAccuracy>Estimated</statAccuracy>
        <cumulativeCutLower>0.02</cumulativeCutLower>
        <cumulativeCutUpper>0.98</cumulativeCutUpper>
        <stdDevFactor>2</stdDevFactor>
      </minMaxOrigin>
      <rastershader>
        <colorrampshader colorRampType="INTERPOLATED" clip="0" minimumValue="0" maximumValue="1000" classificationMode="1" labelPrecision="4">
          <colorramp name="[source]" type="gradient">
            <Option type="Map">
              <Option name="color1" value="255,255,255,255" type="QString"/>
              <Option name="color2" value="106,1,10,255" type="QString"/>
              <Option name="stops" value="0.1;40,76,166,255:0.4;246,247,130,255:0.7;244,68,64,255" type="QString"/>
            </Option>
          </colorramp>
          <item value="0"    label="0"    color="#ffffff" alpha="255"/>
          <item value="100"  label="100"  color="#284ca6" alpha="255"/>
          <item value="400"  label="400"  color="#f6f782" alpha="255"/>
          <item value="700"  label="700"  color="#f44440" alpha="255"/>
          <item value="1000" label="1000" color="#6a010a" alpha="255"/>
        </colorrampshader>
      </rastershader>
    </rasterrenderer>
    <brightnesscontrast brightness="0" contrast="0" gamma="1"/>
    <huesaturation colorizeStrength="100" colorizeBlue="128" colorizeGreen="128" colorizeRed="255" colorizeOn="0" grayscaleMode="0" saturation="0"/>
    <rasterresampler maxOversampling="2"/>
    <resamplingStage>resamplingFilter</resamplingStage>
  </pipe>
  <blendMode>0</blendMode>
</qgis>
