% Intrinsic and Extrinsic Camera Parameters
%
% This script file can be directly executed under Matlab to recover the camera intrinsic and extrinsic parameters.
% IMPORTANT: This file contains neither the structure of the calibration objects nor the image coordinates of the calibration points.
%            All those complementary variables are saved in the complete matlab data file Calib_Results.mat.
% For more information regarding the calibration model visit http://www.vision.caltech.edu/bouguetj/calib_doc/


%-- Focal length:
fc = [ 516.716015654662328 ; 516.517966043240563 ];

%-- Principal point:
cc = [ 319.825986978533990 ; 233.154921631533796 ];

%-- Skew coefficient:
alpha_c = 0.000000000000000;

%-- Distortion coefficients:
kc = [ 0.234259949388766 ; -0.721786199912875 ; 0.001269449889482 ; 0.009342488223934 ; 0.000000000000000 ];

%-- Focal length uncertainty:
fc_error = [ 3.590279648702833 ; 3.724495986520555 ];

%-- Principal point uncertainty:
cc_error = [ 4.066064246111349 ; 3.669933828664458 ];

%-- Skew coefficient uncertainty:
alpha_c_error = 0.000000000000000;

%-- Distortion coefficients uncertainty:
kc_error = [ 0.028514767347599 ; 0.147104020614145 ; 0.003349884449184 ; 0.003931558197086 ; 0.000000000000000 ];

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
omc_1 = [ 1.243124e+00 ; 2.665663e+00 ; 7.562259e-01 ];
Tc_1  = [ -5.660283e+00 ; -3.361442e+02 ; 1.180577e+03 ];
omc_error_1 = [ 6.327473e-03 ; 7.804007e-03 ; 1.301139e-02 ];
Tc_error_1  = [ 9.431155e+00 ; 8.570033e+00 ; 9.903151e+00 ];

%-- Image #2:
omc_2 = [ 9.890838e-01 ; 2.871018e+00 ; 1.224246e-01 ];
Tc_2  = [ 1.263316e+02 ; -3.315583e+02 ; 1.100747e+03 ];
omc_error_2 = [ 4.415745e-03 ; 9.668931e-03 ; 1.458794e-02 ];
Tc_error_2  = [ 8.718900e+00 ; 7.909807e+00 ; 8.712906e+00 ];

%-- Image #3:
omc_3 = [ 1.831247e+00 ; 2.240554e+00 ; -1.574660e-01 ];
Tc_3  = [ -1.507798e+02 ; -2.537248e+02 ; 1.159671e+03 ];
omc_error_3 = [ 6.327880e-03 ; 7.636052e-03 ; 1.364975e-02 ];
Tc_error_3  = [ 9.151570e+00 ; 8.213252e+00 ; 8.654901e+00 ];

%-- Image #4:
omc_4 = [ 7.205461e-01 ; 2.654790e+00 ; 7.315003e-01 ];
Tc_4  = [ 2.297422e+02 ; -2.951891e+02 ; 1.088077e+03 ];
omc_error_4 = [ 5.403702e-03 ; 7.988283e-03 ; 1.085601e-02 ];
Tc_error_4  = [ 8.593645e+00 ; 7.850158e+00 ; 8.820132e+00 ];

%-- Image #5:
omc_5 = [ -1.550615e+00 ; -2.538153e+00 ; -5.826413e-01 ];
Tc_5  = [ -3.513476e+01 ; -2.971817e+02 ; 1.085574e+03 ];
omc_error_5 = [ 4.241402e-03 ; 8.958394e-03 ; 1.364485e-02 ];
Tc_error_5  = [ 8.662327e+00 ; 7.874168e+00 ; 8.991421e+00 ];

%-- Image #6:
omc_6 = [ 1.125837e+00 ; 2.832127e+00 ; 3.441408e-01 ];
Tc_6  = [ 5.112979e+01 ; -4.707238e+02 ; 1.313683e+03 ];
omc_error_6 = [ 5.159066e-03 ; 1.199221e-02 ; 1.864615e-02 ];
Tc_error_6  = [ 1.060438e+01 ; 9.534700e+00 ; 1.114323e+01 ];

%-- Image #7:
omc_7 = [ 2.042554e+00 ; 1.905854e+00 ; -3.790304e-01 ];
Tc_7  = [ -1.598199e+02 ; -2.289462e+02 ; 1.190736e+03 ];
omc_error_7 = [ 6.422013e-03 ; 6.806318e-03 ; 1.228719e-02 ];
Tc_error_7  = [ 9.393409e+00 ; 8.376791e+00 ; 8.028159e+00 ];

%-- Image #8:
omc_8 = [ 2.230533e+00 ; 1.319138e+00 ; -2.292286e-01 ];
Tc_8  = [ -2.364372e+02 ; -8.697112e+01 ; 9.856452e+02 ];
omc_error_8 = [ 6.958606e-03 ; 5.050541e-03 ; 1.066664e-02 ];
Tc_error_8  = [ 7.794666e+00 ; 6.939146e+00 ; 6.839020e+00 ];

%-- Image #9:
omc_9 = [ 2.303588e+00 ; 1.523190e+00 ; -5.176224e-01 ];
Tc_9  = [ -1.917581e+02 ; -5.105243e+01 ; 1.410409e+03 ];
omc_error_9 = [ 8.023191e-03 ; 6.222414e-03 ; 1.348104e-02 ];
Tc_error_9  = [ 1.108909e+01 ; 9.963184e+00 ; 9.183640e+00 ];

%-- Image #10:
omc_10 = [ -2.051376e+00 ; -2.305509e+00 ; 4.361565e-01 ];
Tc_10  = [ -1.279633e+02 ; -2.760306e+02 ; 1.287207e+03 ];
omc_error_10 = [ 7.959934e-03 ; 7.851062e-03 ; 1.613110e-02 ];
Tc_error_10  = [ 1.013109e+01 ; 9.067233e+00 ; 8.987046e+00 ];

%-- Image #11:
omc_11 = [ -2.572495e+00 ; -6.169251e-01 ; 1.876692e-01 ];
Tc_11  = [ -2.449492e+02 ; 5.299718e+01 ; 1.377866e+03 ];
omc_error_11 = [ 8.714072e-03 ; 3.665596e-03 ; 1.297784e-02 ];
Tc_error_11  = [ 1.083088e+01 ; 9.759500e+00 ; 8.997904e+00 ];

%-- Image #12:
omc_12 = [ -2.057249e+00 ; -1.746920e+00 ; -1.121542e+00 ];
Tc_12  = [ -2.410797e+02 ; -1.856492e+02 ; 8.525640e+02 ];
omc_error_12 = [ 5.197318e-03 ; 7.430440e-03 ; 1.089224e-02 ];
Tc_error_12  = [ 6.961270e+00 ; 6.280352e+00 ; 7.975697e+00 ];

%-- Image #13:
omc_13 = [ -2.130572e+00 ; -1.806198e+00 ; -8.975702e-01 ];
Tc_13  = [ -1.927537e+02 ; -1.832314e+01 ; 1.084017e+03 ];
omc_error_13 = [ 5.522150e-03 ; 7.870670e-03 ; 1.199029e-02 ];
Tc_error_13  = [ 8.560974e+00 ; 7.766133e+00 ; 9.317329e+00 ];

%-- Image #14:
omc_14 = [ -2.582303e+00 ; -1.574711e+00 ; -4.430794e-01 ];
Tc_14  = [ -1.858757e+02 ; -1.283308e+02 ; 1.064054e+03 ];
omc_error_14 = [ 7.126674e-03 ; 6.625866e-03 ; 1.435331e-02 ];
Tc_error_14  = [ 8.490166e+00 ; 7.558574e+00 ; 8.801188e+00 ];

%-- Image #15:
omc_15 = [ -1.998491e+00 ; -2.001107e+00 ; -6.669404e-01 ];
Tc_15  = [ -1.983516e+02 ; -2.006284e+02 ; 1.341111e+03 ];
omc_error_15 = [ 6.263676e-03 ; 8.202651e-03 ; 1.366992e-02 ];
Tc_error_15  = [ 1.064826e+01 ; 9.674574e+00 ; 1.119767e+01 ];

%-- Image #16:
omc_16 = [ -2.212790e+00 ; -1.523373e+00 ; 1.207209e-01 ];
Tc_16  = [ -1.727113e+02 ; -1.529131e+02 ; 1.130894e+03 ];
omc_error_16 = [ 7.068897e-03 ; 5.890616e-03 ; 1.249732e-02 ];
Tc_error_16  = [ 8.934646e+00 ; 7.962154e+00 ; 7.509584e+00 ];

%-- Image #17:
omc_17 = [ 2.061648e+00 ; 1.974344e+00 ; 4.803000e-01 ];
Tc_17  = [ -2.184266e+02 ; -2.543523e+02 ; 1.025750e+03 ];
omc_error_17 = [ 7.195451e-03 ; 5.769496e-03 ; 1.203262e-02 ];
Tc_error_17  = [ 8.319835e+00 ; 7.414592e+00 ; 8.763905e+00 ];

%-- Image #18:
omc_18 = [ -1.992369e+00 ; -2.309503e+00 ; 8.720482e-03 ];
Tc_18  = [ -1.830491e+02 ; -2.984831e+02 ; 1.230976e+03 ];
omc_error_18 = [ 8.381371e-03 ; 9.717498e-03 ; 1.898143e-02 ];
Tc_error_18  = [ 9.767376e+00 ; 8.819443e+00 ; 9.965493e+00 ];

%-- Image #19:
omc_19 = [ -2.106198e+00 ; -2.097982e+00 ; -2.758502e-01 ];
Tc_19  = [ -2.401798e+02 ; -9.773442e+01 ; 1.330107e+03 ];
omc_error_19 = [ 7.507925e-03 ; 9.009728e-03 ; 1.652750e-02 ];
Tc_error_19  = [ 1.046274e+01 ; 9.526029e+00 ; 1.078185e+01 ];

%-- Image #20:
omc_20 = [ 2.175170e+00 ; 2.231772e+00 ; 1.932118e-01 ];
Tc_20  = [ -1.307008e+02 ; -3.647479e+02 ; 1.278306e+03 ];
omc_error_20 = [ 9.233529e-03 ; 9.184350e-03 ; 1.889708e-02 ];
Tc_error_20  = [ 1.025981e+01 ; 9.156514e+00 ; 1.103021e+01 ];

