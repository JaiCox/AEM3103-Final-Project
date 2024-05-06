# Paper Airplane Numerical Study
  Final Project: AEM 3103 Spring 2024

  - By: Jaidyn Cox

  ## Summary of Findings

  In this experiment we studied the affects of different initial velocities and flight path angles on the 2D motion of a paper airplane.
  From this we determined a few diffrent observations.

  First as shown in figure one when comparing the graphs changing the initial velocity creates a bigger diffrence overall between all three values. 
  Whereas varying the flight path angle creates a diffrence in the beginning of the flight and then all three values converge to a similar value in the end. 
  Which means changing the initial velocity has a greater effect on the motion; this can be useful when determining properties like max range as you can get a wider or smaller range of values.
  
  Secoundly, using figure two which uses 100 randomly generated values for both initial velocity and flight path angle between the maximum and minimum values,
  we see that the major diffrences occur between 0 and 5 meters then they begin level out and decline. This is further supported by the average trajectory line which has a large slope before 5 meters it levels out.
  this shows when the plane acheives trim or static stability which is important for an aircraft to maintain steady flight. In, addition figure two also supports the determination that initial velocity has a greater impact on motion,
  because the values with a higher velocity result in a further range. 

  Finally, from the third figure which shows the time derivatives of the average trajectory for height and range, we find that both create a sinusoidal type wave then as time contiues approach a single value.
  This further supports the claim of the plane acheiving trim as the rates of change slow to be almost constant meaning that it is in stable glide. In the end varying the inital velocity has a greater affect on the 2D motion of the plane 
  then the flight path angle, and the plane acheives trim after 5 meters
  
  Summarized what was accomplished in this study.  Describe 2-4 observations from simulating the flight path.
  Reference the figures below as needed.
  
  | Parameters	| Minimum	| Nominal	| Maximum	|
  | ----------- | ------------- | ------------- | ------------- |
  | Initial Velocity (m/s) | 2.0 | 3.55 | 7.5 |
  | Flight Path Angle (rad)| -0.5| -0.18| 0.4 | 
 
  # Code Listing
  [paperAirplane.m](https://github.com/JaiCox/AEM3103-Final-Project/blob/main/paperAirplane.m) - Runs setupSim and plots results from original experiment
  
  [setupSim.m](https://github.com/JaiCox/AEM3103-Final-Project/blob/main/setupSim.m) - Defines inital variables for cases
  
  [EqMotion.m](https://github.com/JaiCox/AEM3103-Final-Project/blob/main/EqMotion.m) - Equations of motion for the aircraft
  
  [finalCaseA.m](https://github.com/JaiCox/AEM3103-Final-Project/blob/main/finalCaseA.m) - Varies initial velocity or flight path angle independently
  
  [finalCaseB.m](https://github.com/JaiCox/AEM3103-Final-Project/blob/main/finalCaseB.m) - Plots 100 random runs of varying velocities and path angles and calculates average trajectory
  
  [timeDerivatives.m](https://github.com/JaiCox/AEM3103-Final-Project/blob/main/timeDerivatives.m) - Computes and plots time derivatives for the average trajectory in case B
  
  [num_der_central.m](https://github.com/JaiCox/AEM3103-Final-Project/blob/main/num_der_central.m) - Formula for midpoint method
  
  # Figures

  ## Fig. 1: Single Parameter Variation
  ![Single Parameter fig](https://github.com/JaiCox/AEM3103-Final-Project/blob/main/Figures/caseAFig.jpg)

  The top graph varies the inital velocity of a paper plane at the specified values and with a constant flight path angle and shows the effect on the 2D motion. 
  While the secound graph shows the same effects, but velocity is constants and the flight path angle is varied.

  ## Fig. 2: Monte Carlo Simulation
  ![Random variation and avg trajectory](https://github.com/JaiCox/AEM3103-Final-Project/blob/main/Figures/cseBFig.jpg)

  This case uses 100 randomly generated runs with different initial velocities and flight path angles and plots them together. 
  The pink line is a average trajectory of the 100 flights fit using a 5th order polynomial.

 ## Fig. 3: Time Derivatives
  ![Time Derivatives](https://github.com/JaiCox/AEM3103-Final-Project/blob/main/Figures/derivFig.jpg)

  The top graph shows the time derivative for the range values of the average trajectory calculated in case B,
  and the bottom graph is the time derivative of the height values for the average trajectory.