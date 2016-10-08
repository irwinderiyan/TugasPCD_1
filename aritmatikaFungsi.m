function artk = aritmatika(G,x)
    Ar = imread(G); %Membaca file citra
    r  = Ar(:,:,1); %Mengambil matriks penyusun citra merah
    g  = Ar(:,:,2); %-------------------------------- hijau
    b  = Ar(:,:,3); %-------------------------------- biru
    grey = (0.3*r)+(0.5*g)+(0.2*b); %Mengubah citra, mengambil nilai rata" rgb
    
    operasi1 = grey+x; %operasi aritmatika penambahan
    operasi2 = grey-x; %------------------ pengurangan
    operasi3 = grey*x; %------------------ perkalian
    operasi4 = grey/x; %------------------ pembagian
    
    subplot(2,4,1), imshow(operasi1), title('Penambahan'); %Menampilkan gambar operasi1
    subplot(2,4,2), imhist(operasi1); %Menampilkan histogram operasi1
    subplot(2,4,3), imshow(operasi2), title('Pengurangan');
    subplot(2,4,4), imhist(operasi2); 
    subplot(2,4,5), imshow(operasi3), title('Perkalian'); 
    subplot(2,4,6), imhist(operasi3);     
    subplot(2,4,7), imshow(operasi4), title('Pembagian'); 
    subplot(2,4,8), imhist(operasi4);     
end

