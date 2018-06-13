within IBPSA.Fluid.Interfaces;
connector FluidPort_a "Generic fluid connector at design inlet"
  replaceable package Medium = Modelica.Media.Interfaces.PartialMedium
    "Medium model" annotation (choicesAllMatching=true);

  flow Medium.MassFlowRate m_flow
    "Mass flow rate from the connection point into the component";
  Modelica.SIunits.Pressure r "Intertial pressure in the connection";
  input Medium.AbsolutePressure p "Absolute pressure in the connection point";
  stream Medium.SpecificEnthalpy h_outflow
    "Specific thermodynamic enthalpy close to the connection point";
  stream Medium.MassFraction Xi_outflow[Medium.nXi]
    "Independent mixture mass fractions m_i/m close to the connection point";
  stream Medium.ExtraProperty C_outflow[Medium.nC]
    "Properties c_i/m close to the connection point";

  annotation (defaultComponentName="port_a",
              Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,
            -100},{100,100}}), graphics={Ellipse(
          extent={{-40,40},{40,-40}},
          lineColor={0,0,0},
          fillColor={0,127,255},
          fillPattern=FillPattern.Solid), Text(extent={{-150,110},{150,50}},
            textString="%name"),
        Polygon(
          points={{-20,30},{-20,-30},{32,0},{-20,30}},
          fillColor={0,0,0},
          fillPattern=FillPattern.Solid,
          pattern=LinePattern.None)}),
       Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,-100},{
            100,100}}), graphics={Ellipse(
          extent={{-100,100},{100,-100}},
          lineColor={0,127,255},
          fillColor={0,127,255},
          fillPattern=FillPattern.Solid), Ellipse(
          extent={{-100,100},{100,-100}},
          lineColor={0,0,0},
          fillColor={0,127,255},
          fillPattern=FillPattern.Solid),
        Polygon(
          points={{-60,68},{-60,-70},{88,0},{-60,68}},
          fillColor={0,0,0},
          fillPattern=FillPattern.Solid,
          pattern=LinePattern.None)}));
end FluidPort_a;
