clear all;
close all;
clc

disp('*****************************************************************');
disp('**                   OPERASI ARITMATIKA                        **');
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

disp(' ');
%inputan nilai x yang akan dilakukan operasi aritmatika
x = input('Masukkan nilai x : ');

disp(' ');
disp('Masukkan angka 1 untuk operasi penjumlahan');
disp('Masukkan angka 2 untuk operasi pengurangan');
disp('Masukkan angka 3 untuk operasi perkalian');
disp('Masukkan angka 4 untuk operasi penjumlahan');
disp(' ');

%pilihan operasi aritmatika
o = input('Masukkan pilihan angka : ');
    switch o
        case 1
            o = 1;
            %operasi aritmatika penambahan
            operasi1 = grey+x; 
            
            %Menampilkan citra keabuan beserta histogramnya
            subplot(2,2,1), imshow(grey), title('Citra Keabuan'); 
            subplot(2,2,2), imhist(grey), title('Histogram Citra Keabuan');
            
            %Menampilkan citra penambahan beserta histogramnya
            subplot(2,2,3), imshow(operasi1), title('Citra Penambahan'); 
            subplot(2,2,4), imhist(operasi1), title('Histogram Citra Penambahan');
            
        case 2
            o = 2;
            %operasi aritmatika pengurangan
            operasi2 = grey-x; 
            
            %Menampilkan citra keabuan beserta histogramnya
            subplot(2,2,1), imshow(grey), title('Citra Keabuan');
            subplot(2,2,2), imhist(grey), title('Histogram Citra Keabuan');
            
            %Menampilkan citra pengurangan beserta histogramnya
            subplot(2,2,3), imshow(operasi2), title('Citra Pengurangan');
            subplot(2,2,4), imhist(operasi2), title('Histogram Citra Pengurangan');
            
        case 3
            o = 3;
            %operasi aritmatika perkalian
            operasi3 = grey*x; 
            
            %Menampilkan citra keabuan beserta histogramnya
            subplot(2,2,1), imshow(grey), title('Citra Keabuan');
            subplot(2,2,2), imhist(grey), title('Histogram Citra Keabuan');
            
            %Menampilkan citra perkalian beserta histogramnya
            subplot(2,2,3), imshow(operasi3), title('Citra Perkalian');
            subplot(2,2,4), imhist(operasi3), title('Histogram Citra Perkalian');
            
        case 4
            o = 4;
            %operasi aritmatika pembagian
            operasi4 = grey/x; 
            
            %Menampilkan citra keabuan beserta histogramnya
            subplot(2,2,1), imshow(grey), title('Citra Keabuan');
            subplot(2,2,2), imhist(grey), title('Histogram Citra Keabuan');
            
            %Menampilkan citra pembagian beserta histogramnya
            subplot(2,2,3), imshow(operasi4), title('Citra Pembagian');
            subplot(2,2,4), imhist(operasi4), title('Histogram Citra Pembagian');
    end
    
disp(' ');   
disp('*****************************************************************');
disp('**             Copy right by Febri Irwin WindaEstu             **');
disp('*****************************************************************');

   