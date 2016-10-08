Gr = imread('53397.jpg'); %% membaca citra inputan dan dimasukkan pada variabel Gr
r = Gr(:,:,1);%% mengambil matriks penyusun citra merah
g = Gr(:,:,2);%% mengambil matriks penyusun citra hijau
b = Gr(:,:,3);%% mengambil matriks penyusun citra biru
grey = (0.3*r)+(0.5*g)+(0.2*b); %% mengubah citra input berwarna menjadi keabuan dengan mengambil rata rata rgb
citra = grey; %% menginisialisasi nilai variabel grey ke dalam citra
mat = double (citra);%% merubah variabel citra ke dalam variabel tipe data double
[baris , kolom]= size (mat);%% mengambil ukuran dari variabel mat
s1 = 0; %% inisialisasi nilai dari s1
s2 = 255;%% inisialisasi nilai dari s2
r1 = 10;%% inisialisasi nilai dari r1
r2 =230;%% inisialisasi nilai dari r2
for i=1:baris %% perulangan dengan menggunakan for dari i =1 sampai dengan nilai baris
    for j=1:kolom %% perulangan dengan menggunakan for dari j =1 sampai dengan nilai kolom
         output = mat(i,j); %%inisialisasi nilai dari mat ke dalam variabel output
         if (citra(i,j) < r1) %% statement jika nilai dari citra baris i dan kolom j lebih kecil dari r1
             output  = round ((s1/r1) * citra(i,j)); 
        elseif (citra (i,j) > r2) %% statement jika nilai dari citra baris i dan kolom j lebih kecil dari r2 
        output = s2 + round ( (citra(i,j)-r2)*(255-s2)/ (255-r2));
        elseif (citra (i,j) >=r1 && citra(i,j) <=r2) %% statement jika nilai dari citra baris i dan kolom j lebih besar sama dengan 
            %%dari r1 dan lebih kecil dari nilai r2
        output= s1 + round((citra(i,j)- r1) * ((s2-s1)/(r2-r1)));
        end %%batas statement if
        mat(i,j) = output; %% inisialisasi nilai output ke dalam matrik baris i dan kolom j
    end %% batas perulangan 2 
end %% batas perulangan 1
hasil = uint8(mat); %% inisialisasi merubah nilai variabel double ke integer

subplot (2,2,1),imshow(citra),title('CITRA INPUT'); %% menampilkan citra variabel citra 
subplot (2,2,2),imshow(hasil),title('CITRA OUTPUT'); %% menampikan citra variabel hasil

subplot (2,2,3),imhist(citra),title('HISTOGRAM CITRA INPUT'); %% menampilkan histogram dari variabel citra
subplot (2,2,4),imhist(hasil),title('HISTOGRAM CITRA OUTPUT'); %% menampilkan histogram dari variabel hasil




