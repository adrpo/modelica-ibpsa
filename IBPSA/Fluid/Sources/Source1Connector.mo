within IBPSA.Fluid.Sources;
model Source1Connector
  replaceable package Medium =
    Modelica.Media.Interfaces.PartialMedium
    "Medium model within the source"
   annotation (choicesAllMatching=true);

  Interfaces.FluidPort_b port_b(redeclare package Medium = Medium)
   annotation (Placement(transformation(extent={{90,-10},{110,10}}),
                             iconTransformation(extent={{90,-10},{110,10}})));

equation
  port_b.p + port_b.r = 1E5+100;
  port_b.r = 0;
  port_b.h_outflow = Medium.h_default;
  port_b.Xi_outflow = zeros(Medium.nXi);
  port_b.C_outflow = zeros(Medium.nC);
  annotation (Icon(coordinateSystem(preserveAspectRatio=false), graphics={
          Polygon(
          points={{-62,68},{10,-64},{42,28},{-26,72},{-22,10},{-62,68}},
          lineColor={28,108,200},
          fillColor={28,108,200},
          fillPattern=FillPattern.Solid)}),                      Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end Source1Connector;
