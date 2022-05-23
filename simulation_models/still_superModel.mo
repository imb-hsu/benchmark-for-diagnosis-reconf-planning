model still_superModel
  Real pump_N(start = 150);
  Real max_levelTank(start = 0);
  Real min_levelTank(start = 0);
  Real evap_level(start = 0);
  Real valve_leaking_simulator(start = 0);
  Real valve_clogging_simulator(start = 0);
  Real outlet(start = 0);
equation
// CPPS component controll
  outlet = if time <= 3000 then 0 else 1;
// CPPS parameters
  pump_N = 200;
  max_levelTank = 0.8;
  min_levelTank = 0.2;
  evap_level = 0.35;
// fault induction
  valve_leaking_simulator = if time >= 4000 then 0.0001 else 0;
// leaking
  valve_clogging_simulator = if time >= 4000 then 0.8 else 1;
// clogging
end still_superModel;