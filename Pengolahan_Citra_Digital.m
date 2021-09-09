%Gambar Asli
figure(1);
a = imread('Spiderman.jpg');
imshow(a)

%RGB Ke Greyscale(rata-rata)
I_grey = (a(:,:,1)+a(:,:,2)+a(:,:,3))/3;
figure(2);
imshow(I_grey)
title('rumus rata-rata')

%RGB Ke Greyscale(komposisi)
I_komp = 0.4*a(:,:,1)+0.32*a(:,:,2)+0.2*a(:,:,3);
figure(3);
imshow(I_komp)
title('rumus komposisi')

%Brightness Citra Keabuan
t_brgth = 75;
I_brght = I_komp + t_brgth;
figure(4);
imshow(I_brght)
title('citra keabuan')

%Mengatur Contras Citra
t_cont = 2;
I_cont = I_komp * t_cont;
figure(5);
imshow(I_cont)
title('contras')