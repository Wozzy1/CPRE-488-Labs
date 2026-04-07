clear; clc;

input = "C:\Users\penny\Downloads\MP-2\images\toucan1080grayscale.jpg";
output = "C:\Users\penny\Downloads\MP-2\images\toucan1080reconstruction.jpg";

bayer = imread(input);

oddRows = 1:2:1080;
evenRows = 2:2:1080;
oddCols = 1:2:1920;
evenCols = 2:2:1920;

% brain empty, easy mode
% rgb = demosaic(bayer, "rggb");

R = zeros(1080, 1920, "uint8");
G = zeros(1080, 1920, "uint8");
B = zeros(1080, 1920, "uint8");

%  R G
%  G B
r1 = oddRows; 
r2 = evenRows;
c1 = oddCols; 
c2 = evenCols;

% fill in each R in the 2x2 tile from the R corner
R(r1,c1) = bayer(r1,c1);
R(r1,c2) = bayer(r1,c1);
R(r2,c1) = bayer(r1,c1);
R(r2,c2) = bayer(r1,c1);

% fill in each G from the G to the side
G(r1,c1) = bayer(r1,c2);
G(r1,c2) = bayer(r1,c2);
G(r2,c1) = bayer(r2,c1);
G(r2,c2) = bayer(r2,c1);

% fill in each B in the 2x2 tile from the B corner
B(r1,c1) = bayer(r2,c2);
B(r1,c2) = bayer(r2,c2);
B(r2,c1) = bayer(r2,c2);
B(r2,c2) = bayer(r2,c2);

% write the output
rgb = cat(3, R, G, B);
imwrite(rgb, output);