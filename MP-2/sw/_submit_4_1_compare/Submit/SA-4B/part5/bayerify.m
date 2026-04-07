clear; clc;

input = "C:\Users\penny\Downloads\MP-2\images\toucan1080original.jpg";
output = "C:\Users\penny\Downloads\MP-2\images\toucan1080grayscale.jpg";

rgb = imread(input);
rgb = uint8(rgb);

oddRows = 1:2:1080;
evenRows = 2:2:1080;
oddCols = 1:2:1920;
evenCols = 2:2:1920;

R = rgb(:,:,1);
G = rgb(:,:,2);
B = rgb(:,:,3);

bayer = zeros(1080, 1920, "uint8");
%  R G
%  G B
bayer(oddRows, oddCols) = R(oddRows, oddCols);
bayer(oddRows, evenCols) = G(oddRows, evenCols);
bayer(evenRows, oddCols) = G(evenRows, oddCols);
bayer(evenRows, evenCols) = B(evenRows, evenCols);

imwrite(bayer, output);