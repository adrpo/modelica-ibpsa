within IBPSA.Fluid.HeatExchangers.GroundHeatExchangers.Data.ConfigurationData;
record SmallScale_validation
  "ConfigurationData record for the Cimmino and Bernier (2015) experiment"
  extends IBPSA.Fluid.HeatExchangers.GroundHeatExchangers.Data.ConfigurationData.Template(
    borCon = Types.BoreholeConfiguration.SingleUTube,
    nbBor=1,
    cooBor={{0,0}},
    mBor_flow_nominal=0.0303/60,
    dp_nominal=5e4,
    hBor=0.4,
    rBor=0.00629,
    dBor=0.019,
    rTub=0.125*0.0254/2,
    kTub=401.0,
    eTub=0.06*0.0254,
    xC=0.0050/2);

  annotation (
    Icon(coordinateSystem(preserveAspectRatio=false)),
    Diagram( coordinateSystem(preserveAspectRatio=false)),
    Documentation(
info="<html>
<p>This record contains the configuration data of the Cimmino and
Bernier (2015) experiment.</p>
<h4>References</h4>
<p>
Cimmino, M. and Bernier, M. 2015. <i>Experimental determination of the
g-functions of a small-scale geothermal borehole</i>. Geothermics 56: 60-71.
</p>
</html>",
revisions="<html>
<ul>
<li>
July 28, 2018, by Massimo Cimmino:<br/>
First implementation.
</li>
</ul>
</html>"));
end SmallScale_validation;