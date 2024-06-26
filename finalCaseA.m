%% Case A: Single Parameter
% This case changes a single parameter (V or gamma) while keeping 
% the other constant

%	Sets needed inital values and time span
	to		=	0;			% Initial Time, sec
	tf		=	6;			% Final Time, sec
	tspan	=	[to tf];
    vMin    =   2;          % Minimum Velocity, m/s
    vNom    =   3.55;       % Nominal Velocity, m/s
    vMax    =   7.5;        % Maximum Velocity, m/s
    gamMin  =   -0.5;       % Minimum Gamma, rad
    gamNom  =   -0.18;      % Nominal Gamma, rad
    gamMax  =   0.4;        % Maximum Gamma, rad

	
%	Oscillating Glide due to Zero Initial Flight Path Angle
	%   xo changes Vo and sets flight path angle
    xo		    =	[vMin;gamNom;H;R]; 
	[tv1,xv1]   =	ode23('EqMotion',tspan,xo);
    xo		    =	[vNom;gamNom;H;R];
    [tv2,xv2]	=	ode23('EqMotion',tspan,xo);
    xo		    =	[vMax;gamNom;H;R];
    [tv3,xv3]	=	ode23('EqMotion',tspan,xo);

%	Effect of Increased Initial Velocity
	%   xo changes gamma and sets Vo
    xo		=	[vNom;gamMin;H;R];
    [tg1,xg1]	=	ode23('EqMotion',tspan,xo);
    xo		=	[vNom;gamNom;H;R];
	[tg2,xg2]	=	ode23('EqMotion',tspan,xo);
    xo		=	[vNom;gamMax;H;R];
	[tg3,xg3]	=	ode23('EqMotion',tspan,xo);

	
    figure
    hold on

    subplot(2,1,1)
	plot(xv1(:,4),xv1(:,3),'r',xv2(:,4),xv2(:,3),'k',xv3(:,4),xv3(:,3),'g')
	xlabel('Range, m'), ylabel('Height, m'), grid
    title('Varying Initial Velocity')
    legend('Min, 2.0 m/s', 'Nom, 3.55 m/s', 'Max, 7.5 m/s')

    subplot(2,1,2)
    plot(xg1(:,4),xg1(:,3),'r',xg2(:,4),xg2(:,3),'k',xg3(:,4),xg3(:,3),'g')
	xlabel('Range, m'), ylabel('Height, m'), grid
    title('Varying Initial Flight Path Angle')
    legend('Min, -0.5 rad', 'Nom, -0.18 rad', 'Max, 0.4 rad')
