within IBPSA.Fluid.Sources;
model Sink1Connector
  replaceable package Medium =
    Modelica.Media.Interfaces.PartialMedium
    "Medium model within the source"
   annotation (choicesAllMatching=true);

  Interfaces.FluidPort_a port_a(redeclare package Medium = Medium)
   annotation (Placement(transformation(extent={{-110,
            -10},{-90,10}}), iconTransformation(extent={{-110,-10},{-90,10}})));

equation
  port_a.p + port_a.r = 1E5;
  port_a.h_outflow = Medium.h_default;
  port_a.Xi_outflow = zeros(Medium.nXi);
  port_a.C_outflow = zeros(Medium.nC);
  annotation (Icon(coordinateSystem(preserveAspectRatio=false), graphics={
          Polygon(
          points={{-62,68},{10,-64},{42,28},{-26,72},{-22,10},{-62,68}},
          lineColor={28,108,200},
          fillColor={28,108,200},
          fillPattern=FillPattern.Solid)}),                      Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end Sink1Connector;
