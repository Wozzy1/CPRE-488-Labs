clear; clc; close all;
% clear     = remove all variables from the workspace (fresh start)
% clc       = clear the command window text
% close all = close any figure windows that are open

% --- Your image path ---
inFile = "C:\Users\cihem\CPRE-488-Labs\MP-2\Submit\part5\RGB_image.jpg";
% inFile stores the full path to the image file you want to process

% --- Must match your Bayer pattern setting in Vivado ---
pattern = "grbg";   % change to "bggr", "grbg", or "gbrg" if needed
% pattern tells the script which Bayer mosaic layout to emulate:
% rggb means:
%   Row 1: R G R G ...
%   Row 2: G B G B ...
% This MUST match what your CFA/demosaic IP expects, or colors will be wrong.

% Read image
rgb = imread(inFile);
% imread loads the image file into a matrix called rgb
% For a normal color image, rgb will be Height x Width x 3 (R,G,B channels)

if size(rgb,3) ~= 3
    error("Image must be RGB (color).");
end
% size(rgb,3) checks the number of channels.
% If it isn't 3, the image isn't an RGB color image (could be grayscale),
% and the script stops with an error message.

rgb = im2uint8(rgb);  % ensure 8-bit
% Ensures the image data is 8-bit per channel (0..255).
% Even if the image was stored as another type (double, uint16, etc.),
% this converts it to uint8.

figure; imshow(rgb); title("Original RGB");
% Opens a new figure window and displays the original RGB image.
% title adds the label on top of the figure.

% Make Bayer mosaic (1 color per pixel)
[H,W,~] = size(rgb);
% H = height (number of rows)
% W = width  (number of columns)
% ~ ignores the third dimension (which is 3 for RGB)

bayer = zeros(H,W,'uint8');
% Pre-allocates a single-channel image (H x W) for the Bayer mosaic.
% It is uint8 because real sensors typically output 8-bit per pixel in these labs.
% Bayer is single-channel because each pixel stores ONLY ONE color sample.

R = rgb(:,:,1); G = rgb(:,:,2); B = rgb(:,:,3);
% Extract the Red, Green, and Blue channels from the RGB image:
% R, G, B are each H x W matrices.

switch lower(pattern)
% switch chooses which Bayer layout to use based on the pattern string.
% lower(pattern) makes it lowercase so "RGGB" and "rggb" behave the same.

    case "rggb"
        % RGGB pattern layout:
        %   (row odd, col odd)   = R
        %   (row odd, col even)  = G
        %   (row even, col odd)  = G
        %   (row even, col even) = B

        bayer(1:2:end,1:2:end) = R(1:2:end,1:2:end);
        % Put RED values into the bayer image at odd rows, odd columns.

        bayer(1:2:end,2:2:end) = G(1:2:end,2:2:end);
        % Put GREEN values into odd rows, even columns.

        bayer(2:2:end,1:2:end) = G(2:2:end,1:2:end);
        % Put GREEN values into even rows, odd columns.

        bayer(2:2:end,2:2:end) = B(2:2:end,2:2:end);
        % Put BLUE values into even rows, even columns.

    case "bggr"
        % BGGR pattern layout:
        %   Row 1: B G B G ...
        %   Row 2: G R G R ...
        bayer(1:2:end,1:2:end) = B(1:2:end,1:2:end);
        % Blue at odd row, odd col

        bayer(1:2:end,2:2:end) = G(1:2:end,2:2:end);
        % Green at odd row, even col

        bayer(2:2:end,1:2:end) = G(2:2:end,1:2:end);
        % Green at even row, odd col

        bayer(2:2:end,2:2:end) = R(2:2:end,2:2:end);
        % Red at even row, even col

    case "grbg"
        % GRBG pattern layout:
        %   Row 1: G R G R ...
        %   Row 2: B G B G ...
        bayer(1:2:end,1:2:end) = G(1:2:end,1:2:end);
        % Green at odd row, odd col

        bayer(1:2:end,2:2:end) = R(1:2:end,2:2:end);
        % Red at odd row, even col

        bayer(2:2:end,1:2:end) = B(2:2:end,1:2:end);
        % Blue at even row, odd col

        bayer(2:2:end,2:2:end) = G(2:2:end,2:2:end);
        % Green at even row, even col

    case "gbrg"
        % GBRG pattern layout:
        %   Row 1: G B G B ...
        %   Row 2: R G R G ...
        bayer(1:2:end,1:2:end) = G(1:2:end,1:2:end);
        % Green at odd row, odd col

        bayer(1:2:end,2:2:end) = B(1:2:end,2:2:end);
        % Blue at odd row, even col

        bayer(2:2:end,1:2:end) = R(2:2:end,1:2:end);
        % Red at even row, odd col

        bayer(2:2:end,2:2:end) = G(2:2:end,2:2:end);
        % Green at even row, even col

    otherwise
        error("pattern must be rggb, bggr, grbg, or gbrg");
        % If pattern is not one of the accepted ones, stop and show an error.
end

figure; imshow(bayer); title("Bayer Mosaic (single-channel)");
% Show the Bayer mosaic as a grayscale image.
% It looks like a checkerboard because different pixels are different colors
% but we're viewing them as just intensity values.

imwrite(bayer, "bayer_mosaic.png");
% Save the bayer mosaic to a PNG file.
% Note: the saved PNG is still single-channel (grayscale) but the values are the mosaic.

% Demosaic back to RGB (prototype "CFA reverse")
rgb_rec = demosaic(bayer, lower(pattern));
% demosaic() reconstructs a full RGB image from the Bayer mosaic by interpolation.
% This is like what the CFA/demosaic hardware block does (not identical, but similar).
% It uses the specified Bayer pattern to know where R/G/B samples are.

figure; imshow(rgb_rec); title("Demosaiced RGB");
% Display the reconstructed RGB image after demosaicing.

% RGB -> YCbCr 4:4:4
ycbcr = rgb2ycbcr(rgb_rec);
% Convert the demosaiced RGB image into YCbCr color space.
% Y  = luma (brightness)
% Cb = blue-difference chroma
% Cr = red-difference chroma
% This output is 4:4:4 (Y, Cb, Cr all full resolution).

Y  = ycbcr(:,:,1);
Cb = ycbcr(:,:,2);
Cr = ycbcr(:,:,3);
% Extract the individual Y, Cb, Cr planes.

% 4:2:2 subsample (horizontal)
W = size(Y,2);
% Update W to the width of the current image (after any conversions).
% We are about to subsample in the horizontal direction, so width matters.

if mod(W,2) ~= 0
    Y  = Y(:,1:end-1);
    Cb = Cb(:,1:end-1);
    Cr = Cr(:,1:end-1);
end
% 4:2:2 stores one Cb/Cr sample for every TWO horizontal pixels.
% That requires an even width so pixels can be paired as (1,2), (3,4), ...
% If width is odd, this drops the last column so pairing works.

Cb_422 = uint8((double(Cb(:,1:2:end)) + double(Cb(:,2:2:end))) / 2);
% Create the 4:2:2 Cb plane by averaging each horizontal pair:
% - Cb(:,1:2:end) picks columns 1,3,5,... (left pixel of each pair)
% - Cb(:,2:2:end) picks columns 2,4,6,... (right pixel of each pair)
% Average them -> one value per 2 pixels, so width becomes W/2.
% double() avoids overflow during addition, then we convert back to uint8.

Cr_422 = uint8((double(Cr(:,1:2:end)) + double(Cr(:,2:2:end))) / 2);
% Same process for Cr: average each horizontal pair to get half-width chroma.

% Preview (expand chroma back for viewing)
Cb_up = repelem(Cb_422, 1, 2);
% repelem(Cb_422, 1, 2) duplicates each column twice, restoring width to W.
% This is NOT making it truly 4:4:4 again; it's just for display so sizes match Y.

Cr_up = repelem(Cr_422, 1, 2);
% Same expansion for Cr for display purposes.

rgb_preview = ycbcr2rgb(cat(3, Y, Cb_up, Cr_up));
% cat(3, ...) stacks Y, Cb_up, Cr_up into a 3-channel YCbCr image.
% ycbcr2rgb converts that back to RGB so you can visually check it.
% If your 4:2:2 conversion is reasonable, this should look very close to original.

figure; imshow(rgb_preview); title("Preview from YCbCr 4:2:2 (expanded)");
% Display the preview image after converting to 4:2:2 and expanding chroma.

imwrite(rgb_preview, "preview_rgb_from_422.png");
% Save the preview so you can include it in a report / submission.

save("out_matrices.mat", "bayer", "Y", "Cb_422", "Cr_422", "pattern");
% Save the actual numeric matrices into a .mat file.
% This is useful because you can load them later without re-running everything, and
% you can export them into raw formats if you need to feed hardware/software tests.

disp("Done: bayer_mosaic.png, preview_rgb_from_422.png, out_matrices.mat");
% Print a simple "finished" message to the MATLAB command window.