% Intrinsic and Extrinsic Camera Parameters
%
% This script file can be directly executed under Matlab to recover the camera intrinsic and extrinsic parameters.
% IMPORTANT: This file contains neither the structure of the calibration objects nor the image coordinates of the calibration points.
%            All those complementary variables are saved in the complete matlab data file Calib_Results.mat.
% For more information regarding the calibration model visit http://www.vision.caltech.edu/bouguetj/calib_doc/


%-- Focal length:
fc = [ 516.716045314467237 ; 516.517979038173621 ];

%-- Principal point:
cc = [ 319.825931307139797 ; 233.154750170556781 ];

%-- Skew coefficient:
alpha_c = 0.000000000000000;

%-- Distortion coefficients:
kc = [ 0.234260516699615 ; -0.721787087449212 ; 0.001269309957182 ; 0.009342392777284 ; 0.000000000000000 ];

%-- Focal length uncertainty:
fc_error = [ 3.590278455926149 ; 3.724494349148353 ];

%-- Principal point uncertainty:
cc_error = [ 4.066062866096938 ; 3.669930833112929 ];

%-- Skew coefficient uncertainty:
alpha_c_error = 0.000000000000000;

%-- Distortion coefficients uncertainty:
kc_error = [ 0.028514740465484 ; 0.147103837442085 ; 0.003349884704033 ; 0.003931561642003 ; 0.000000000000000 ];

%-- Image size:
nx = 640;
ny = 480;


%-- Various other variables (may be ignored if you do not use the Matlab Calibration Toolbox):
%-- Those variables are used to control which intrinsic parameters should be optimized

n_ima = 20;						% Number of calibration images
est_fc = [ 1 ; 1 ];					% Estimation indicator of the two focal variables
est_aspect_ratio = 1;				% Estimation indicator of the aspect ratio fc(2)/fc(1)
center_optim = 1;					% Estimation indicator of the principal point
est_alpha = 0;						% Estimation indicator of the skew coefficient
est_dist = [ 1 ; 1 ; 1 ; 1 ; 0 ];	% Estimation indicator of the distortion coefficients


%-- Extrinsic parameters:
%-- The rotation (omc_kk) and the translation (Tc_kk) vectors for every calibration image and their uncertainties

%-- Image #1:
omc_1 = [ 1.243124e+00 ; 2.665663e+00 ; 7.562254e-01 ];
Tc_1  = [ -5.660148e+00 ; -3.361438e+02 ; 1.180578e+03 ];
omc_error_1 = [ 6.327472e-03 ; 7.804007e-03 ; 1.301139e-02 ];
Tc_error_1  = [ 9.431151e+00 ; 8.570027e+00 ; 9.903148e+00 ];

%-- Image #2:
omc_2 = [ 9.890838e-01 ; 2.871018e+00 ; 1.224242e-01 ];
Tc_2  = [ 1.263317e+02 ; -3.315579e+02 ; 1.100747e+03 ];
omc_error_2 = [ 4.415744e-03 ; 9.668928e-03 ; 1.458794e-02 ];
Tc_error_2  = [ 8.718897e+00 ; 7.909801e+00 ; 8.712903e+00 ];

%-- Image #3:
omc_3 = [ 1.831247e+00 ; 2.240554e+00 ; -1.574664e-01 ];
Tc_3  = [ -1.507797e+02 ; -2.537245e+02 ; 1.159671e+03 ];
omc_error_3 = [ 6.327878e-03 ; 7.636045e-03 ; 1.364975e-02 ];
Tc_error_3  = [ 9.151568e+00 ; 8.213247e+00 ; 8.654899e+00 ];

%-- Image #4:
omc_4 = [ 7.205461e-01 ; 2.654790e+00 ; 7.314998e-01 ];
Tc_4  = [ 2.297423e+02 ; -2.951888e+02 ; 1.088077e+03 ];
omc_error_4 = [ 5.403699e-03 ; 7.988284e-03 ; 1.085601e-02 ];
Tc_error_4  = [ 8.593642e+00 ; 7.850152e+00 ; 8.820129e+00 ];

%-- Image #5:
omc_5 = [ -1.550615e+00 ; -2.538153e+00 ; -5.826409e-01 ];
Tc_5  = [ -3.513463e+01 ; -2.971813e+02 ; 1.085574e+03 ];
omc_error_5 = [ 4.241398e-03 ; 8.958389e-03 ; 1.364485e-02 ];
Tc_error_5  = [ 8.662324e+00 ; 7.874162e+00 ; 8.991419e+00 ];

%-- Image #6:
omc_6 = [ 1.125837e+00 ; 2.832127e+00 ; 3.441403e-01 ];
Tc_6  = [ 5.112993e+01 ; -4.707234e+02 ; 1.313684e+03 ];
omc_error_6 = [ 5.159065e-03 ; 1.199220e-02 ; 1.864614e-02 ];
Tc_error_6  = [ 1.060437e+01 ; 9.534693e+00 ; 1.114323e+01 ];

%-- Image #7:
omc_7 = [ 2.042554e+00 ; 1.905854e+00 ; -3.790308e-01 ];
Tc_7  = [ -1.598197e+02 ; -2.289458e+02 ; 1.190737e+03 ];
omc_error_7 = [ 6.422011e-03 ; 6.806312e-03 ; 1.228718e-02 ];
Tc_error_7  = [ 9.393406e+00 ; 8.376785e+00 ; 8.028156e+00 ];

%-- Image #8:
omc_8 = [ 2.230532e+00 ; 1.319138e+00 ; -2.292288e-01 ];
Tc_8  = [ -2.364371e+02 ; -8.697080e+01 ; 9.856453e+02 ];
omc_error_8 = [ 6.958602e-03 ; 5.050536e-03 ; 1.066663e-02 ];
Tc_error_8  = [ 7.794664e+00 ; 6.939140e+00 ; 6.839017e+00 ];

%-- Image #9:
omc_9 = [ 2.303587e+00 ; 1.523190e+00 ; -5.176227e-01 ];
Tc_9  = [ -1.917579e+02 ; -5.105196e+01 ; 1.410409e+03 ];
omc_error_9 = [ 8.023188e-03 ; 6.222410e-03 ; 1.348102e-02 ];
Tc_error_9  = [ 1.108909e+01 ; 9.963176e+00 ; 9.183637e+00 ];

%-- Image #10:
omc_10 = [ -2.051376e+00 ; -2.305509e+00 ; 4.361570e-01 ];
Tc_10  = [ -1.279632e+02 ; -2.760302e+02 ; 1.287207e+03 ];
omc_error_10 = [ 7.959928e-03 ; 7.851059e-03 ; 1.613109e-02 ];
Tc_error_10  = [ 1.013109e+01 ; 9.067226e+00 ; 8.987043e+00 ];

%-- Image #11:
omc_11 = [ -2.572496e+00 ; -6.169251e-01 ; 1.876694e-01 ];
Tc_11  = [ -2.449491e+02 ; 5.299763e+01 ; 1.377866e+03 ];
omc_error_11 = [ 8.714064e-03 ; 3.665596e-03 ; 1.297785e-02 ];
Tc_error_11  = [ 1.083088e+01 ; 9.759492e+00 ; 8.997902e+00 ];

%-- Image #12:
omc_12 = [ -2.057250e+00 ; -1.746920e+00 ; -1.121542e+00 ];
Tc_12  = [ -2.410796e+02 ; -1.856489e+02 ; 8.525642e+02 ];
omc_error_12 = [ 5.197315e-03 ; 7.430434e-03 ; 1.089225e-02 ];
Tc_error_12  = [ 6.961266e+00 ; 6.280347e+00 ; 7.975696e+00 ];

%-- Image #13:
omc_13 = [ -2.130572e+00 ; -1.806198e+00 ; -8.975698e-01 ];
Tc_13  = [ -1.927536e+02 ; -1.832278e+01 ; 1.084017e+03 ];
omc_error_13 = [ 5.522146e-03 ; 7.870665e-03 ; 1.199030e-02 ];
Tc_error_13  = [ 8.560971e+00 ; 7.766127e+00 ; 9.317328e+00 ];

%-- Image #14:
omc_14 = [ -2.582303e+00 ; -1.574711e+00 ; -4.430792e-01 ];
Tc_14  = [ -1.858756e+02 ; -1.283305e+02 ; 1.064054e+03 ];
omc_error_14 = [ 7.126668e-03 ; 6.625861e-03 ; 1.435331e-02 ];
Tc_error_14  = [ 8.490162e+00 ; 7.558567e+00 ; 8.801186e+00 ];

%-- Image #15:
omc_15 = [ -1.998492e+00 ; -2.001108e+00 ; -6.669400e-01 ];
Tc_15  = [ -1.983515e+02 ; -2.006280e+02 ; 1.341112e+03 ];
omc_error_15 = [ 6.263670e-03 ; 8.202645e-03 ; 1.366992e-02 ];
Tc_error_15  = [ 1.064826e+01 ; 9.674567e+00 ; 1.119767e+01 ];

%-- Image #16:
omc_16 = [ -2.212791e+00 ; -1.523373e+00 ; 1.207213e-01 ];
Tc_16  = [ -1.727112e+02 ; -1.529127e+02 ; 1.130894e+03 ];
omc_error_16 = [ 7.068893e-03 ; 5.890616e-03 ; 1.249732e-02 ];
Tc_error_16  = [ 8.934643e+00 ; 7.962149e+00 ; 7.509582e+00 ];

%-- Image #17:
omc_17 = [ 2.061648e+00 ; 1.974344e+00 ; 4.802995e-01 ];
Tc_17  = [ -2.184265e+02 ; -2.543519e+02 ; 1.025750e+03 ];
omc_error_17 = [ 7.195446e-03 ; 5.769490e-03 ; 1.203263e-02 ];
Tc_error_17  = [ 8.319832e+00 ; 7.414586e+00 ; 8.763903e+00 ];

%-- Image #18:
omc_18 = [ -1.992369e+00 ; -2.309503e+00 ; 8.720943e-03 ];
Tc_18  = [ -1.830490e+02 ; -2.984827e+02 ; 1.230976e+03 ];
omc_error_18 = [ 8.381365e-03 ; 9.717495e-03 ; 1.898143e-02 ];
Tc_error_18  = [ 9.767373e+00 ; 8.819437e+00 ; 9.965489e+00 ];

%-- Image #19:
omc_19 = [ -2.106199e+00 ; -2.097982e+00 ; -2.758455e-01 ];
Tc_19  = [ -2.401800e+02 ; -9.773397e+01 ; 1.330109e+03 ];
omc_error_19 = [ 7.507949e-03 ; 9.009742e-03 ; 1.652756e-02 ];
Tc_error_19  = [ 1.046275e+01 ; 9.526035e+00 ; 1.078186e+01 ];

%-- Image #20:
omc_20 = [ 2.175170e+00 ; 2.231772e+00 ; 1.932114e-01 ];
Tc_20  = [ -1.307006e+02 ; -3.647475e+02 ; 1.278307e+03 ];
omc_error_20 = [ 9.233523e-03 ; 9.184342e-03 ; 1.889708e-02 ];
Tc_error_20  = [ 1.025981e+01 ; 9.156507e+00 ; 1.103021e+01 ];

