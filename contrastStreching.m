clear all;
close all;
clc

disp('*****************************************************************');
disp('**                   OPERASI ARITMATIKA                        **');
disp('*****************************************************************');
disp(' ');

%Input file citra
G = input('Masukkan nama gambar dengan format (''nama.format'')  : ');

image=imread(G); %Membaca file citra
imageG=rgb2gray(image);%Konvert citra ke dalam citra keabuan

%Membaca array citra kedalam format double
DImage=double(imageG);

%Menentukan ukuran citra dalam matrik
[Qbaris Qkolom]=size(DImage);

%Menginputan titik (r1,s1) dan (r2,s2) untuk transformasi
disp(' ');
r1 = input('   Masukkan nilai r1 : ' );
s1 = input('   Masukkan nilai s1 : ' );
r2 = input('   Masukkan nilai r2 : ' );
s2 = input('   Masukkan nilai s1 : ' );
disp(' ');
    
L=(2)^8; %Citra gray 8 bit
Lmaks=(L-1);
    
%Iterasi sesuai ukuran baris dan kolom citra
    for P=1:Qbaris
        for Q=1:Qkolom
            
            %Mendefinisikan citra baru
            Pbaru=DImage(P,Q);
            
            %Nilai intensitas < r1
            if(Pbaru<r1)                
                Pbaru=(round((s1/r1)*Pbaru));
                
            %Nilai intensitas antara r1 dan r2
            elseif (Pbaru<=r2)          
                Pbaru=(s1+round((Pbaru-r1)*(s2-s1)/(r2-r1)));
            
            %Pada nilai Pbaru >= r2 dan Pbaru < Lmaks    
            else                        
                Pbaru=(s2+round((Pbaru-r2)*(Lmaks-s2)/(Lmaks-r2)));
            end 
            
            %mengisi nilai intensitas baru pada citra titik P dan J
            DImage(P,Q)=Pbaru;
        end
    end
    
    imagecontras=uint8(DImage);
    
    %menampilkan citra awal (keabuan)
    subplot(2,2,1);imshow(imageG);title('Citra Awal');
    subplot(2,2,2);imhist(imageG);title('Histogram Citra Awal');
    
    %menampilkan citra hasil contrast 
    subplot(2,2,3);imshow(imagecontras);title('Citra hasil contrast stretching');
    subplot(2,2,4);imhist(imagecontras);title('Histogram Citra hasil contrast stretching');
        
disp(' ');   
disp('*****************************************************************');
disp('**             Copy right by Febri Irwin WindaEstu             **');
disp('*****************************************************************');
    