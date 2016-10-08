clear all;
close all;
clc

disp('*****************************************************************');
disp('**                        CITRA KEABUAN                        **');
disp('*****************************************************************');
disp(' ');

%input file citra
G = input('Masukkan nama gambar dengan format (''nama.format'')  : ');

image = imread(G); %Membaca file citra
r  = image(:,:,1); %Mengambil matriks penyusun citra merah
g  = image(:,:,2); %-------------------------------- hijau
b  = image(:,:,3); %-------------------------------- biru

%Mengubah citra, mengambil nilai rata" rgb
grey = (0.3*r)+(0.5*g)+(0.2*b); 

%Menampilkan gambar citra asli
subplot(1,2,1), imshow(G), title('Citra Asli'); 

%Menampilkan gambar citra keabuan
subplot(1,2,2), imshow(grey), title('Citra Keabuan'); 

disp(' ');   
disp('*****************************************************************');
disp('**             Copy right by Febri Irwin WindaEstu             **');
disp('*****************************************************************');
    