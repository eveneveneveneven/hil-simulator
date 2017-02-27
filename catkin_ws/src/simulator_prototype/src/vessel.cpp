#include "vessel.h"

Vessel::Vessel(){
	// On creation of new vessel
	eta = Vector6d::Zero();
	nu  = Vector6d::Zero();
	nu_n = Vector3d::Zero();
	nu_r  = Vector6d::Zero();
	nu_c_b  = Vector6d::Zero();
	nu_c_n  = Vector6d::Zero();
	tau_wind = Vector6d::Zero();
	tau_waves = Vector6d::Zero();
	tau_current = Vector6d::Zero();
	tau_control = Vector6d::Zero();
	tau_total = Vector6d::Zero();	
	ros::NodeHandle nh;
	readParameters(nh);
	gps.setStepSize(dt);
	gps.receiveStartCoordinates(0, 0);
	initializeFluidMemoryMatrices();
	initializeMatrices();
	initializeSolver();
	updateMatrices();
}

void Vessel::receiveThrust(const geometry_msgs::Twist::ConstPtr& thrust_msg){
	
	tau_control << thrust_msg->linear.x, thrust_msg->linear.y, thrust_msg->linear.z, thrust_msg->angular.x, thrust_msg->angular.y, thrust_msg->angular.z;
}

Vector6d Vessel::getThrust(){

	return tau_control;
}

Vessel::~Vessel() {}

void Vessel::setState(Vector6d eta_new, Vector6d nu_new){
	eta = eta_new;
	nu = nu_new;
}

void Vessel::getState(Vector6d &eta_2, Vector6d &nu_2){
	eta_2 = eta;
	nu_2 = nu;
}

void Vessel::initializeFluidMemoryMatrices(){
	mu << 0,0,0,0,0,0;
	A_11 << -10.5819,	-40.3442,	-74.3206,	-51.0862,
			1,			0, 			0, 			0,
			0, 			1, 			0, 			0,
			0,			0,			1,			0;

	A_22 << -10.8044, 	-40.2573, 	-74.2156, 	-51.4893,
			1,			0,			0,			0,
			0,			1,			0,			0,
			0,			0,			1,			0;

	A_33 << -5.9560,	-11.4690, 	-5.3749, 	-0.4502,
			1,			0,			0,			0,
			0,			1,			0,			0,
			0,			0,			1,			0;

	A_55 << -6.0199, 	-11.3013, 	-5.2349, 	-0.4339,
			1,			0,			0,			0,
			0,			1,			0,			0,
			0,			0,			1,			0;

	A_66 << -11.0792, 	-43.8660, 	-84.4465, 	-63.9643,
			1,			0,			0,			0,
			0,			1,			0,			0,	
			0,			0,			1,			0;

	A_53 << -6.4986, 	-31.5127, 	-16.5388, 	-1.4476,
			1,			0,			0,			0,
			0,			1,			0,			0,
			0,			0,			1,			0;

	A_35 = A_53;

	A_44 << -8.4332, 	-23.9192, 	-36.1083,
			1,			0,			0,
			0,			1,			0;

	A_24 << -8.1047, 	-23.4101, 	-34.5435,
			1,			0,			0,
			0,			1,			0;

	A_42 = A_24;

	A_26 << -1.1147,	-6.0631,
			1,			0;

	A_62 = A_26;

	A_46 << -1.5393, 	-5.8180,
			1,			0;

	A_64 = A_46;	

	B_11 << 1,
			0,
			0,
			0;

	B_22 << 1,
			0,
			0,
			0;

	B_33 << 1,
			0,
			0,
			0;

	B_55 << 1,
			0,
			0,
			0;

	B_66 << 1,
			0,
			0,
			0;

	B_53 << 1,
			0,
			0,
			0;
	
	B_35 << 1,
			0,
			0,
			0;		

	B_44 << 1,
			0,
			0;

	B_24 << 1,
			0,
			0;

	B_42 << 1,
			0,
			0;

	B_26 << 1,
			0;

	B_46 << 1,
			0;

	B_62 << 1,
			0;

	B_64 << 1,
			0;

	C_11 << 9979.32741355037, 22918.4583751628, 15780.8377225351, 0;

	C_22 << 40179.7498055168, 92673.0452638225, 64374.4305099363, 0;

	C_33 << 147159.294077335, 243503.238108501, 43814.5056222167, 0;

	C_55 << 434621.463430541, 665145.221962119, 116485.986335729, 0;

	C_66 << 123351.802797675, 300235.457336133, 227412.688726648, 0;

	C_53 << -42225.0493265813, 49487.0184208576, 14376.5689784988, 0;

	C_35 = C_53;

	C_44 << 28610.6674325093, 40464.3930955079, 0;

	C_24 << 30394.1087395157, 42384.5103537706, 0;

	C_42 = C_24;

	C_26 << -209.165956356670, 0;

	C_46 << -1263.19362192829, 0;

	C_62 = C_26;

	C_64 = C_46;

	x_11 << 0,
			0,
			0,
			0;

	x_22 = x_11;	
	x_33 = x_11;
	x_55 = x_11;
	x_66 = x_11;
	x_53 = x_11;
	x_35 = x_11;

	x_44 << 0,
			0,
			0;

	x_24 = x_44;
	x_42 = x_24;	

	x_26 << 0,
			0;
	x_46 = x_26;
	x_62 = x_26;
	x_64 = x_26;

}

void Vessel::calculateFluidMemoryEffects(){
	delta_nu = nu_r;
	delta_nu(0) = 0;
	x_11 = x_11 + dt*(A_11*x_11+B_11*delta_nu(0));
	
	x_22 = x_22 + dt*(A_22*x_22+B_22*delta_nu(1));
	x_24 = x_24 + dt*(A_24*x_24+B_24*delta_nu(3));
	x_26 = x_26 + dt*(A_26*x_26+B_26*delta_nu(5));
	
	x_33 = x_33 + dt*(A_33*x_33+B_33*delta_nu(2));
	x_35 = x_35 + dt*(A_35*x_35+B_35*delta_nu(4));
	
	x_42 = x_42 + dt*(A_42*x_42+B_42*delta_nu(1));
	x_44 = x_44 + dt*(A_44*x_44+B_44*delta_nu(3));
	x_46 = x_46 + dt*(A_46*x_46+B_46*delta_nu(5));
	
	x_53 = x_53 + dt*(A_53*x_53+B_53*delta_nu(2));
	x_55 = x_55 + dt*(A_55*x_55+B_55*delta_nu(4));
	
	x_62 = x_62 + dt*(A_62*x_62+B_62*delta_nu(1));
	x_64 = x_64 + dt*(A_64*x_64+B_64*delta_nu(3));
	x_66 = x_66 + dt*(A_66*x_66+B_66*delta_nu(5));

	double mu_1, mu_2, mu_3, mu_4, mu_5, mu_6;

	// The fluid memory effects model used in this prototype is calculated for the Viknes830-vessel. A simple transformation of the forces using the BIS-system is performed here, 
	// to make sure the forces "fits" the vessel simulated. 

	mu_1 = double(C_11*x_11)*m_11/5002.6;
	mu_2 = (double(C_22*x_22)+double(C_24*x_24)+double(C_26*x_26))*m_11/5002.6;
	mu_3 = (double(C_33*x_33)+double(C_35*x_35))*m_11/5002.6;
	mu_4 = (double(C_42*x_42)+double(C_44*x_44)+double(C_46*x_46))*(m_11*L_pp)/(5002.6*7.2);
	mu_5 = (double(C_53*x_53)+double(C_55*x_55))*(m_11*L_pp)/(5002.6*7.2);
	mu_6 = (double(C_62*x_62)+double(C_64*x_64)+double(C_66*x_66))*(m_11*L_pp)/(5002.6*7.2);

	mu << mu_1, mu_2, mu_3, mu_4, mu_5, mu_6;
}	

void Vessel::initializeSolver(){
	// For now this initializes an Ode45 solver, could be arranged to read solver from some Solver.yaml configuration file.
	solver.t = 0L;
	solver.h = dt;
	solver.a21 = 1.0L / 5L;
	solver.a31 = 3.0L / 40;
	solver.a32 = 9.0L / 40;
	solver.a41 = 44.0L / 45;
	solver.a42 = -56.0L / 15;
	solver.a43 = 32.0L / 9;
	solver.a51 = 19372.0L / 6561;
	solver.a52 = -25360.0L / 2187;
	solver.a53 = 64448.0L / 6561;
	solver.a54 = -212.0L / 729;
	solver.a61 = 9017.0L / 3168;
	solver.a62 = -355.0L / 33;
	solver.a63 = 46732.0L / 5247;
	solver.a64 = 49.0L / 176;
	solver.a65 = -5103.0L / 18656;
	solver.a71 = 35.0L / 384;
	solver.a72 = 0;
	solver.a73 = 500.0L / 1113;
	solver.a74 = 125.0L / 192;
	solver.a75 = -2187.0L / 6784;
	solver.a76 = 11.0L / 84;
	solver.c2 = 1.0L / 5;
	solver.c3 = 3.0L / 10;
	solver.c4 = 4.0L / 5;
	solver.c5 = 8.0L / 9;
	solver.c6 = 1.0L;
	solver.c7 = 1.0L;
	solver.b11 = 35.0L / 384;
	solver.b12 = 0.0L;
	solver.b13 = 500.0L / 1113;
	solver.b14 = 125.0L / 192;
	solver.b15 = -2187.0L / 6784;
	solver.b16 = 11.0L / 84;
	solver.b17 = 0.0L;
	solver.b21 = 5179.0L / 57600;
	solver.b22 = 0.0L;
	solver.b23 = 7571.0L / 16695;
	solver.b24 = 393.0L / 640;
	solver.b25 = -92097.0L / 339200;
	solver.b26 = 187.0L / 2100;
	solver.b27 = 1.0L / 40;
}

void Vessel::updateMatrices(){
	double u, v, q, r, phi, theta, psi;
	u = nu_r(0);
	v = nu_r(1);
	q = nu_r(4);
	r = nu_r(5);
	phi = eta(3);
	theta=eta(4);
	psi=eta(5);
	C_rb << 0,	0,	0,	0,	0,	0,
			0,	0,	0,	0,	0,	5002.6,
			0,	0,	0,	0,	-5002.6,	0,
			0,	0,	0,	0,	0,	1260.7,
			0,	0,	0,	0,	0,	0,	
			0,	0,	0,	0,	0,	0;

	C_a <<  0,	0,	0,	0,	0,	0,	
			0,	0,	0,	0,	0,	0.17,
			0,	0,	0,	0,	-1.37, 0,
			0,	0,	0,	0,	0,	0.08,
			0,	0,	0,	0,	-0.76, 0,
			0,	0,	0,	0,	0,	0.03;
	C = u*(C_rb+C_a);
	//Coriolis and centripetal
	/*C << 	0, 										-m_11*r,			0,	0,	0,	-m_11*x_g*r+Y_v_dot*v+r*(Y_r_dot),
			m_11*r,									0,					0,	0,	0,	-X_u_dot*u,
			0, 										0,					0,	0,	0,	0,	
			0,										0,					0,	0,	0,	0,	
			0,										0,					0,	0,	0,	0,	
			m_11*x_g*r-Y_v_dot*v+r*(-Y_r_dot), 		X_u_dot*u, 			0,	0,	0,	0;*/



	// Damping matrix. Contains non-linear elements for the standard 3DOF representation, and linear elements in the restoring 3 DOFs.
	D << 	-X_u-X_uu*abs(u)-X_uuu*u*u, 0, 										0, 										0, 		0, 		0, 
			0, 							-Y_v-Y_vv*abs(v)-Y_vvv*v*v-Y_rv*abs(r), 0, 										0, 		0, 		-Y_r-Y_vr*abs(v)-Y_rr*abs(r)-Y_rrr*r*r,
			0, 							0, 										-Z_w, 									0, 		-Z_q, 		0, 
			0, 							0, 										0, 										-K_p, 	0, 		-K_r, 
			0, 							0, 										0, 										0, 		-M_q - M_qq*abs(q),	-M_r, 
			0, 							-N_v-N_vv*abs(v)-N_rv*abs(r)-N_vvv*v*v, 0, 										0, 		0, 		-N_r-N_vr*abs(v)-N_rr*abs(r)-N_rrr*r*r;

	// Kinematics:
	J << 	cos(psi)*cos(theta), 	-sin(psi)*cos(phi)+cos(psi)*sin(theta)*sin(phi), 	sin(psi)*sin(phi)+cos(psi)*cos(phi)*sin(theta), 	0, 	0, 						0,
			sin(psi)*cos(theta), 	cos(psi)*cos(phi)+sin(phi)*sin(theta)*sin(psi), 	-cos(psi)*sin(phi)+sin(theta)*sin(psi)*cos(phi), 	0, 	0, 						0,
			-sin(theta), 			cos(theta)*sin(phi), 								cos(theta)*cos(phi), 								0, 	0, 						0,
			0, 						0, 													0, 													1, 	sin(phi)*tan(theta), 	cos(phi)*tan(theta),
			0, 						0, 													0, 													0, 	cos(phi), 				-sin(theta),
			0, 						0, 													0, 													0, 	sin(phi)/cos(theta), 	cos(phi)/cos(theta);
}

void Vessel::step(){
	updateMatrices();
	calculateFluidMemoryEffects();
	calculateNextEta();
	calculateNextNu();
	publishState();
	publishSensorData();
	logInfo();
}

void Vessel::publishSensorData(){
	nu_n = (J*nu_r).head(3);
	gps.publishData(nu_n);
	imu.publishData(nu_dot , nu);
}

void Vessel::publishState(){
	// RVIZ uses NWU, while the simulator uses NED, so a transformation is performed
	tf::Transform transform;
    transform.setOrigin(tf::Vector3(eta[0],-eta[1],-eta[2]));
    tf::Quaternion q;
    q.setRPY(-eta[3],-eta[4],-eta[5]);
    transform.setRotation(q);
    tf.sendTransform(tf::StampedTransform(transform, ros::Time::now(), "map", tf_name));
}

void Vessel::publishMap(){
	tf::Transform transform2;
    transform2.setOrigin(tf::Vector3(0,0,0));
    tf::Quaternion q2;
    q2.setRPY(0,0,0);
    transform2.setRotation(q2);
    tf_map.sendTransform(tf::StampedTransform(transform2, ros::Time::now(), "map", tf_map_name));
}

void Vessel::logInfo(){
	geometry_msgs::Twist velocity;
	geometry_msgs::Twist state;
	geometry_msgs::Twist thrust;

	velocity.linear.x = nu_r(0);
	velocity.linear.y = nu_r(1);
	velocity.linear.z = nu_r(2);
	velocity.angular.x = nu_r(3);
	velocity.angular.y = nu_r(4);
	velocity.angular.z = nu_r(5);

	vel_pub.publish(velocity);

	state.linear.x = eta(0);
	state.linear.y = eta(1);
	state.linear.z = eta(2);
	state.angular.x = eta(3);
	state.angular.y = eta(4);
	state.angular.z = eta(5);

	state_pub.publish(state);

	thrust.linear.x = tau_control(0);
	thrust.linear.y = tau_control(1);
	thrust.linear.z = tau_control(2);
	thrust.angular.x = tau_control(3);
	thrust.angular.y = tau_control(4);
	thrust.angular.z = tau_control(5);

	thrust_pub.publish(thrust);
}

double Vessel::getDT(){
	return solver.h;
}

Vector6d Vessel::etaFunction(Vector6d nu_in){
    Vector6d eta_dot = J*nu_in;
   	return eta_dot;
} 

Vector6d Vessel::nuFunction(Vector6d nu_in){
	tau_total = tau_control;
	Vector6d nu_r_dot = -M_inv*(C*nu_in+D*nu_in+G*eta + mu -tau_total);
	return nu_r_dot;
}

void Vessel::calculateNextEta(){
	solver.k1v = solver.h*etaFunction(nu);
	solver.k2v = solver.h*etaFunction(nu + solver.a21*solver.k1v);
	solver.k3v = solver.h*etaFunction(nu + solver.a31*solver.k1v + solver.a32*solver.k2v);
	solver.k4v = solver.h*etaFunction(nu + solver.a41*solver.k1v + solver.a42*solver.k2v + solver.a43*solver.k3v);
	solver.k5v = solver.h*etaFunction(nu + solver.a51*solver.k1v + solver.a52*solver.k2v + solver.a53*solver.k3v + solver.a54*solver.k4v);
	solver.k6v = solver.h*etaFunction(nu + solver.a61*solver.k1v + solver.a62*solver.k2v + solver.a63*solver.k3v + solver.a64*solver.k4v + solver.a65*solver.k5v);
	solver.k7v = solver.h*etaFunction(nu + solver.a71*solver.k1v + solver.a73*solver.k3v + solver.a74*solver.k4v + solver.a75*solver.k5v + solver.a76*solver.k6v);
	eta = eta + solver.b11*solver.k1v + solver.b12*solver.k2v + solver.b13*solver.k3v + solver.b14*solver.k4v + solver.b15*solver.k5v + solver.b16*solver.k6v + solver.b17*solver.k7v;
}

void Vessel::calculateNextNu(){
	solver.k1v = solver.h*nuFunction(nu_r);
	solver.k2v = solver.h*nuFunction(nu_r + solver.a21*solver.k1v);
	solver.k3v = solver.h*nuFunction(nu_r + solver.a31*solver.k1v + solver.a32*solver.k2v);
	solver.k4v = solver.h*nuFunction(nu_r + solver.a41*solver.k1v + solver.a42*solver.k2v + solver.a43*solver.k3v);
	solver.k5v = solver.h*nuFunction(nu_r + solver.a51*solver.k1v + solver.a52*solver.k2v + solver.a53*solver.k3v + solver.a54*solver.k4v);
	solver.k6v = solver.h*nuFunction(nu_r + solver.a61*solver.k1v + solver.a62*solver.k2v + solver.a63*solver.k3v + solver.a64*solver.k4v + solver.a65*solver.k5v);
	solver.k7v = solver.h*nuFunction(nu_r + solver.a71*solver.k1v + solver.a73*solver.k3v + solver.a74*solver.k4v + solver.a75*solver.k5v + solver.a76*solver.k6v);
	nu_r = nu_r + solver.b11*solver.k1v + solver.b12*solver.k2v + solver.b13*solver.k3v + solver.b14*solver.k4v + solver.b15*solver.k5v + solver.b16*solver.k6v + solver.b17*solver.k7v;
	nu_dot = -M_inv*(C*nu+D*nu+G*eta-tau_total);
	nu = nu_r;

}

void Vessel::initializeMatrices(){
	M_det = 0;
	M_rb << m_11, m_12, m_13, m_14, m_15, m_16, 
          	m_21, m_22, m_23, m_24, m_25, m_26, 
			m_31, m_32, m_33, m_34, m_35, m_36, 
			m_41, m_42, m_43, m_44, m_45, m_46, 
			m_51, m_52, m_53, m_54, m_55, m_56, 
			m_61, m_62, m_63, m_64, m_65, m_66;

	M_a << 	X_u_dot, X_v_dot, X_w_dot, X_p_dot, X_q_dot, X_r_dot,
			Y_u_dot, Y_v_dot, Y_w_dot, Y_p_dot, Y_q_dot, Y_r_dot,
			Z_u_dot, Z_v_dot, Z_w_dot, Z_p_dot, Z_q_dot, Z_r_dot,
			K_u_dot, K_v_dot, K_w_dot, K_p_dot, K_q_dot, K_r_dot,
			M_u_dot, M_v_dot, M_w_dot, M_p_dot, M_q_dot, M_r_dot,
			N_u_dot, N_v_dot, N_w_dot, N_p_dot, N_q_dot, N_r_dot;
	M = M_rb+M_a;

	G << 	0, 	0,	0,		0,		0,			0,	
			0,	0,	0,		0,		0,			0,
			0,	0,	-Z_z,	0,		-Z_theta, 	0,
			0,	0,	0,		-K_phi, 0,			0,	
			0,	0,	-M_z, 	0, 		-M_theta, 	0,
			0,	0,	0,		0,		0,			0;

	M_det = M.determinant();
	M_inv = M.inverse();
}

bool Vessel::readParameters(ros::NodeHandle nh) {
	bool parameterFail = false;

	// Mass matrix M_rb
	if (!nh.getParam("m_11", m_11))
		parameterFail=true;
	if (!nh.getParam("m_12", m_12))
		parameterFail=true;
	if (!nh.getParam("m_13", m_13))
		parameterFail=true;
	if (!nh.getParam("m_14", m_14))
		parameterFail=true;
	if (!nh.getParam("m_15", m_15))
		parameterFail=true;
	if (!nh.getParam("m_16", m_16))
		parameterFail=true;

	if (!nh.getParam("m_21", m_21))
		parameterFail=true;
	if (!nh.getParam("m_22", m_22))
		parameterFail=true;
	if (!nh.getParam("m_23", m_23))
		parameterFail=true;
	if (!nh.getParam("m_24", m_24))
		parameterFail=true;
	if (!nh.getParam("m_25", m_25))
		parameterFail=true;
	if (!nh.getParam("m_26", m_26))
		parameterFail=true;

	if (!nh.getParam("m_31", m_31))
		parameterFail=true;
	if (!nh.getParam("m_32", m_32))
		parameterFail=true;
	if (!nh.getParam("m_33", m_33))
		parameterFail=true;
	if (!nh.getParam("m_34", m_34))
		parameterFail=true;
	if (!nh.getParam("m_35", m_35))
		parameterFail=true;
	if (!nh.getParam("m_36", m_36))
		parameterFail=true;

	if (!nh.getParam("m_41", m_41))
		parameterFail=true;
	if (!nh.getParam("m_42", m_42))
		parameterFail=true;
	if (!nh.getParam("m_43", m_43))
		parameterFail=true;
	if (!nh.getParam("m_44", m_44))
		parameterFail=true;
	if (!nh.getParam("m_45", m_45))
		parameterFail=true;
	if (!nh.getParam("m_46", m_46))
		parameterFail=true;

	if (!nh.getParam("m_51", m_51))
		parameterFail=true;
	if (!nh.getParam("m_52", m_52))
		parameterFail=true;
	if (!nh.getParam("m_53", m_53))
		parameterFail=true;
	if (!nh.getParam("m_54", m_54))
		parameterFail=true;
	if (!nh.getParam("m_55", m_55))
		parameterFail=true;
	if (!nh.getParam("m_56", m_56))
		parameterFail=true;

	if (!nh.getParam("m_61", m_61))
		parameterFail=true;
	if (!nh.getParam("m_62", m_62))
		parameterFail=true;
	if (!nh.getParam("m_63", m_63))
		parameterFail=true;
	if (!nh.getParam("m_64", m_64))
		parameterFail=true;
	if (!nh.getParam("m_65", m_65))
		parameterFail=true;
	if (!nh.getParam("m_66", m_66))
		parameterFail=true;

	// Added mass matrix M_a
	if (!nh.getParam("X_u_dot", X_u_dot))
		parameterFail=true;
	if (!nh.getParam("X_v_dot", X_v_dot))
		parameterFail=true;
	if (!nh.getParam("X_w_dot", X_w_dot))
		parameterFail=true;
	if (!nh.getParam("X_p_dot", X_p_dot))
		parameterFail=true;
	if (!nh.getParam("X_q_dot", X_q_dot))
		parameterFail=true;
	if (!nh.getParam("X_r_dot", X_r_dot))
		parameterFail=true;

	if (!nh.getParam("Y_u_dot", Y_u_dot))
		parameterFail=true;
	if (!nh.getParam("Y_v_dot", Y_v_dot))
		parameterFail=true;
	if (!nh.getParam("Y_w_dot", Y_w_dot))
		parameterFail=true;
	if (!nh.getParam("Y_p_dot", Y_p_dot))
		parameterFail=true;
	if (!nh.getParam("Y_q_dot", Y_q_dot))
		parameterFail=true;
	if (!nh.getParam("Y_r_dot", Y_r_dot))
		parameterFail=true;

	if (!nh.getParam("Z_u_dot", Z_u_dot))
		parameterFail=true;
	if (!nh.getParam("Z_v_dot", Z_v_dot))
		parameterFail=true;
	if (!nh.getParam("Z_w_dot", Z_w_dot))
		parameterFail=true;
	if (!nh.getParam("Z_p_dot", Z_p_dot))
		parameterFail=true;
	if (!nh.getParam("Z_q_dot", Z_q_dot))
		parameterFail=true;
	if (!nh.getParam("Z_r_dot", Z_r_dot))
		parameterFail=true;

	if (!nh.getParam("K_u_dot", K_u_dot))
		parameterFail=true;
	if (!nh.getParam("K_v_dot", K_v_dot))
		parameterFail=true;
	if (!nh.getParam("K_w_dot", K_w_dot))
		parameterFail=true;
	if (!nh.getParam("K_p_dot", K_p_dot))
		parameterFail=true;
	if (!nh.getParam("K_q_dot", K_q_dot))
		parameterFail=true;
	if (!nh.getParam("K_r_dot", K_r_dot))
		parameterFail=true;

	if (!nh.getParam("M_u_dot", M_u_dot))
		parameterFail=true;
	if (!nh.getParam("M_v_dot", M_v_dot))
		parameterFail=true;
	if (!nh.getParam("M_w_dot", M_w_dot))
		parameterFail=true;
	if (!nh.getParam("M_p_dot", M_p_dot))
		parameterFail=true;
	if (!nh.getParam("M_q_dot", M_q_dot))
		parameterFail=true;
	if (!nh.getParam("M_r_dot", M_r_dot))
		parameterFail=true;

	if (!nh.getParam("N_u_dot", N_u_dot))
		parameterFail=true;
	if (!nh.getParam("N_v_dot", N_v_dot))
		parameterFail=true;
	if (!nh.getParam("N_w_dot", N_w_dot))
		parameterFail=true;
	if (!nh.getParam("N_p_dot", N_p_dot))
		parameterFail=true;
	if (!nh.getParam("N_q_dot", N_q_dot))
		parameterFail=true;
	if (!nh.getParam("N_r_dot", N_r_dot))
		parameterFail=true;

	//Center of gravity
	if (!nh.getParam("x_g", x_g))
		parameterFail=true;
	if (!nh.getParam("y_g", y_g))
		parameterFail=true;

	// Linear damping
	if (!nh.getParam("X_u", X_u))
		parameterFail=true;
	if (!nh.getParam("X_v", X_v))
		parameterFail=true;
	if (!nh.getParam("Y_v", Y_v))
		parameterFail=true;
	if (!nh.getParam("Y_r", Y_r))
		parameterFail=true;
	if (!nh.getParam("N_v", N_v))
		parameterFail=true;
	if (!nh.getParam("N_r", N_r))
		parameterFail=true;
	if (!nh.getParam("K_p", K_p))
		parameterFail=true;
	if (!nh.getParam("M_q", M_q))
		parameterFail=true;
	if (!nh.getParam("M_r", M_r))
		parameterFail=true;
	if (!nh.getParam("K_r", K_r))
		parameterFail=true;
	if (!nh.getParam("Z_q", Z_q))
		parameterFail=true;
	if (!nh.getParam("Z_w", Z_w))
		parameterFail=true;

	// Restoring forces
	if (!nh.getParam("Z_z", Z_z))
		parameterFail=true;
	if (!nh.getParam("Z_theta", Z_theta))
		parameterFail=true;
	if (!nh.getParam("K_phi", K_phi))
		parameterFail=true;
	if (!nh.getParam("M_z", M_z))
		parameterFail=true;
	if (!nh.getParam("M_theta", M_theta))
		parameterFail=true;

	// Nonlinear damping
	if (!nh.getParam("X_uu", X_uu))
		parameterFail=true;
	if (!nh.getParam("X_uuu", X_uuu))
		parameterFail=true;
	if (!nh.getParam("X_vv", X_vv))
		parameterFail=true;
	if (!nh.getParam("X_vvv", X_vvv))
		parameterFail=true;
	if (!nh.getParam("Y_vv", Y_vv))
		parameterFail=true;
	if (!nh.getParam("Y_vvv", Y_vvv))
		parameterFail=true;
	if (!nh.getParam("Y_rr", Y_rr))
		parameterFail=true;
	if (!nh.getParam("Y_rrr", Y_rrr))
		parameterFail=true;
	if (!nh.getParam("Y_rv", Y_rv))
		parameterFail=true;
	if (!nh.getParam("Y_vr", Y_vr))
		parameterFail=true;
	if (!nh.getParam("N_rr", N_rr))
		parameterFail=true;
	if (!nh.getParam("N_rrr", N_rrr))
		parameterFail=true;
	if (!nh.getParam("N_vv", N_vv))
		parameterFail=true;
	if (!nh.getParam("N_vvv", N_vvv))
		parameterFail=true;
	if (!nh.getParam("N_rv", N_rv))
		parameterFail=true;
	if (!nh.getParam("N_vr", N_vr))
		parameterFail=true;
	if (!nh.getParam("M_qq", M_qq))
		parameterFail=true;

	// Others
	if (!nh.getParam("K_thruster", K_thruster))
		parameterFail=true;
	if (!nh.getParam("L_pp", L_pp))
		parameterFail=true;
	if (!nh.getParam("dt", dt))
		parameterFail=true;
	return parameterFail;
}
