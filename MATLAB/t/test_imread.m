function test_imread
img = imread('cameraman.png');

img_size = size(img);

t_img_size = [ 512 512 ];

if ~all(img_size == t_img_size)
	error('not equal');
end
end
