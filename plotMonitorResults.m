% load RSdata.mat
load('RSdata')
% assign the saved data in 'rt_estimatedStates' to each variable
tt = rt_estimatedStates.time;
x_est     = rt_estimatedStates.signals.values(:,1);
y_est     = rt_estimatedStates.signals.values(:,2);
z_est     = rt_estimatedStates.signals.values(:,3);
yaw_est   = rt_estimatedStates.signals.values(:,4)*180/pi;
pitch_est = rt_estimatedStates.signals.values(:,5)*180/pi;
roll_est  = rt_estimatedStates.signals.values(:,6)*180/pi;
dx_est    = rt_estimatedStates.signals.values(:,7);
dy_est    = rt_estimatedStates.signals.values(:,8);
dz_est    = rt_estimatedStates.signals.values(:,9);
p_est     = rt_estimatedStates.signals.values(:,10)*180/pi;
q_est     = rt_estimatedStates.signals.values(:,11)*180/pi;
r_est     = rt_estimatedStates.signals.values(:,12)*180/pi;

% assign the saved data in 'References' to each variable
x_ref     = rt_References.signals.values(:,1);
y_ref     = rt_References.signals.values(:,2);
z_ref     = rt_References.signals.values(:,3);
yaw_ref   = rt_References.signals.values(:,4)*180/pi;
pitch_ref = rt_References.signals.values(:,5)*180/pi;
roll_ref  = rt_References.signals.values(:,6)*180/pi;

% Workspace Data
% assign the saved data in 'estimatedStates' to each variable
w_tt = estimatedStates.time;
w_x_est     = estimatedStates.signals.values(:,1);
w_y_est     = estimatedStates.signals.values(:,2);
w_z_est     = estimatedStates.signals.values(:,3);
w_yaw_est   = estimatedStates.signals.values(:,4)*180/pi;
w_pitch_est = estimatedStates.signals.values(:,5)*180/pi;
w_roll_est  = estimatedStates.signals.values(:,6)*180/pi;
w_dx_est    = estimatedStates.signals.values(:,7);
w_dy_est    = estimatedStates.signals.values(:,8);
w_dz_est    = estimatedStates.signals.values(:,9);
w_p_est     = estimatedStates.signals.values(:,10)*180/pi;
w_q_est     = estimatedStates.signals.values(:,11)*180/pi;
w_r_est     = estimatedStates.signals.values(:,12)*180/pi;

% assign the saved data in 'References' to each variable
w_x_ref     = References.signals.values(:,1);
w_y_ref     = References.signals.values(:,2);
w_z_ref     = References.signals.values(:,3);
w_yaw_ref   = References.signals.values(:,4)*180/pi;
w_pitch_ref = References.signals.values(:,5)*180/pi;
w_roll_ref  = References.signals.values(:,6)*180/pi;

% Plot
figure('Name','Monitor & Tune Results')
Nrow = 3;
Ncol = 2;
subplot(Nrow,Ncol,1)
plot(tt,[x_ref x_est],'LineWidth',2)
hold on
plot(w_tt,w_x_est,'LineWidth',2)
hold off
title('position X','FontSize',16)
legend('$$ x_r $$','$$ \hat x $$','$$ ws \hat x $$',...
    'interpreter','latex','FontSize',14,'location','NorthWest')
ylabel('[m]','FontSize',14)
grid on

subplot(Nrow,Ncol,2)
plot(tt,[y_ref y_est],'LineWidth',2)
hold on
plot(w_tt,w_y_est,'LineWidth',2)
hold off
title('position Y','FontSize',16)
legend('$$ y_r $$','$$ \hat y $$','$$ ws \hat y $$',...
    'interpreter','latex','FontSize',14,'location','NorthWest')
ylabel('[m]','FontSize',14)
grid on

subplot(Nrow,Ncol,3)
plot(tt,[pitch_ref pitch_est],'LineWidth',2)
hold on
plot(w_tt,w_pitch_est,'LineWidth',2)
hold off
title('Pitch','FontSize',16)
legend('$$ \theta_r $$','$$ \hat \theta $$','$$ ws \hat \theta $$',...
    'interpreter','latex','FontSize',14,'location','NorthWest')
ylabel('[deg]','FontSize',14)
grid on

subplot(Nrow,Ncol,4)
plot(tt,[roll_ref roll_est],'LineWidth',2)
hold on
plot(w_tt,w_roll_est,'LineWidth',2)
hold off
title('Roll','FontSize',16)
legend('$$ \phi_r $$','$$ \hat \phi $$','$$ ws \hat \phi $$',...
    'interpreter','latex','FontSize',14,'location','NorthWest')
ylabel('[deg]','FontSize',14)
grid on

subplot(Nrow,Ncol,5)
plot(tt,[z_ref z_est],'LineWidth',2)
hold on
plot(w_tt,w_z_est,'LineWidth',2)
hold off
title('position Z','FontSize',16)
legend('$$ z_r $$','$$ \hat z $$','$$ ws \hat z $$',...
    'interpreter','latex','FontSize',14,'location','NorthWest')
ylabel('[m]','FontSize',14)
grid on

subplot(Nrow,Ncol,6)
plot(tt,[yaw_ref yaw_est],'LineWidth',2)
hold on
plot(w_tt,w_yaw_est,'LineWidth',2)
hold off
title('Yaw','FontSize',16)
legend('$$ \psi_r $$','$$ \hat \psi $$','$$ ws \hat \psi $$',...
    'interpreter','latex','FontSize',14,'location','NorthWest')
ylabel('[deg]','FontSize',14)
grid on