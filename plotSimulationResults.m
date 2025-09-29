% assign the saved data in 'estimatedStates' to each variable

estimatedStates = out.estimatedStates;
References = out.References;

tt = estimatedStates.time;
x_est     = estimatedStates.signals.values(:,1);
y_est     = estimatedStates.signals.values(:,2);
z_est     = estimatedStates.signals.values(:,3);
yaw_est   = estimatedStates.signals.values(:,4)*180/pi;
pitch_est = estimatedStates.signals.values(:,5)*180/pi;
roll_est  = estimatedStates.signals.values(:,6)*180/pi;
dx_est    = estimatedStates.signals.values(:,7);
dy_est    = estimatedStates.signals.values(:,8);
dz_est    = estimatedStates.signals.values(:,9);
p_est     = estimatedStates.signals.values(:,10)*180/pi;
q_est     = estimatedStates.signals.values(:,11)*180/pi;
r_est     = estimatedStates.signals.values(:,12)*180/pi;

% assign the saved data in 'References' to each variable
x_ref     = References.signals.values(:,1);
y_ref     = References.signals.values(:,2);
z_ref     = References.signals.values(:,3);
yaw_ref   = References.signals.values(:,4)*180/pi;
pitch_ref = References.signals.values(:,5)*180/pi;
roll_ref  = References.signals.values(:,6)*180/pi;


% Plot
figure('Name','Simulation Results')
Nrow = 3;
Ncol = 2;
subplot(Nrow,Ncol,1)
plot(tt,[x_ref x_est],'LineWidth',2)
title('position X','FontSize',16)
legend('$$ x_r $$','$$ \hat x $$','interpreter','latex','FontSize',14,'location','NorthWest')
ylabel('[m]','FontSize',14)
grid on
subplot(Nrow,Ncol,2)
plot(tt,[y_ref y_est],'LineWidth',2)
title('position Y','FontSize',16)
legend('$$ y_r $$','$$ \hat y $$','interpreter','latex','FontSize',14,'location','NorthWest')
ylabel('[m]','FontSize',14)
grid on
subplot(Nrow,Ncol,3)
plot(tt,[pitch_ref pitch_est],'LineWidth',2)
title('Pitch','FontSize',16)
legend('$$ \theta_r $$','$$ \hat \theta $$','interpreter','latex','FontSize',14,'location','NorthWest')
ylabel('[deg]','FontSize',14)
grid on
subplot(Nrow,Ncol,4)
plot(tt,[roll_ref roll_est],'LineWidth',2)
title('Roll','FontSize',16)
legend('$$ \phi_r $$','$$ \hat \phi $$','interpreter','latex','FontSize',14,'location','NorthWest')
ylabel('[deg]','FontSize',14)
grid on
subplot(Nrow,Ncol,5)
plot(tt,[z_ref z_est],'LineWidth',2)
title('position Z','FontSize',16)
legend('$$ z_r $$','$$ \hat z $$','interpreter','latex','FontSize',14,'location','NorthWest')
ylabel('[m]','FontSize',14)
grid on
subplot(Nrow,Ncol,6)
plot(tt,[yaw_ref yaw_est],'LineWidth',2)
title('Yaw','FontSize',16)
legend('$$ \psi_r $$','$$ \hat \psi $$','interpreter','latex','FontSize',14,'location','NorthWest')
ylabel('[deg]','FontSize',14)
grid on