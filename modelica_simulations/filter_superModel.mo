model filter_superModel
  Real valve_V103_simulator(start=1);
  Real valve_V102_simulator(start=0);
  Real valve_clogging_simulator(start=1);
  Real valve_leaking_simulator(start=0);
  Real valve_V105_simulator(start=0);
  Real valve_V107_simulator(start=0);
  Real valve_V111_simulator(start=0);
  Real pump_P102_simulator(start=0);
  Real pump_P101_simulator(start=500);
equation
  // CPPS parameters
  valve_V102_simulator = 0;
  valve_V103_simulator = 1;
  valve_V105_simulator = 0;
  valve_V107_simulator = 0;
  valve_V111_simulator = 0;
  pump_P102_simulator = 0;
  pump_P101_simulator = 150;
  
  // error induction
  valve_leaking_simulator = if time >= 2000 then 0.0001 else 0; // leaking
  valve_clogging_simulator = if time >= 2000 then 0.01 else 1; // clogging
end filter_superModel;