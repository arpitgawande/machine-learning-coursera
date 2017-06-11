function [C, sigma] = dataset3Params(X, y, Xval, yval)
%DATASET3PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = DATASET3PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
C = 1;
sigma = 0.1;

% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the optimal C and sigma
%               learning parameters found using the cross validation set.
%               You can use svmPredict to predict the labels on the cross
%               validation set. For example, 
%                   predictions = svmPredict(model, Xval);
%               will return the predictions on the cross validation set.
%
%  Note: You can compute the prediction error using 
%        mean(double(predictions ~= yval))
%

%Actual
% C_vec = [0.01, 0.03, 0.1, 0.3, 1, 3, 10, 30];
% sigma_vec = [0.01, 0.03, 0.1, 0.3, 1, 3, 10, 30]

%Shorlisted vector to decrese compute time.
% C_vec = [1, 3, 10];
% sigma_vec = [0.01, 0.03, 0.1];

% error_matrix = zeros(length(C_vec) * length(sigma_vec), 3);

% k = 1;
% %Iterate through each C and sigma value to find best match having minimum error.
% for i = 1:length(C_vec)
% 	for j = 1:length(sigma_vec)
% 		C = C_vec(i);
% 		sigma = sigma_vec(j);
% 		%Train model using current C and Sigma values.
% 		model= svmTrain(X, y, C, @(x1, x2) gaussianKernel(x1, x2, sigma));
% 		%Get predicted value of yval for Xval using current model.
% 		predictions = svmPredict(model, Xval);
% 		%Compare predicated yval and given yval to find out error.
% 		error_val = mean(double(predictions ~= yval));
% 		% Store error in a matrix along current C and Sigma values.
% 		error_matrix(k,:) = [error_val, C, sigma];
% 		k++;
% 	end
% end
% % Find row with minimum error.
% [val index] = min(error_matrix(:,1));
% % Get C and Sigma which gives minimum error.
% C = error_matrix(index,2)
% sigma = error_matrix(index,3)
% =========================================================================

end
