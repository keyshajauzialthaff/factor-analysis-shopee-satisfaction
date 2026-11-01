# factor-analysis-shopee-satisfaction
# Factor Analysis of Shopee E-Commerce User Satisfaction
Repository ini berisi proyek analisis data multivariat menggunakan **Exploratory Factor Analysis (EFA)** dengan bahasa pemrograman R. Proyek ini bertujuan untuk mengidentifikasi faktor-faktor utama dan variabel indikator yang memengaruhi kepuasan pengguna platform e-commerce Shopee di kalangan mahasiswa

## Tujuan
Pertumbuhan *e-commerce* di Indonesia menuntut platform seperti Shopee untuk terus menjaga kualitas layanannya demi mempertahankan kepuasan pengguna. Penelitian ini menganalisis 20 variabel indikator kepuasan berdasarkan tanggapan dari 45 responden (mahasiswa Statistika Unisba angkatan 2022-2024) menggunakan skala Likert.

**Tujuan Penelitian:**
1. Mengidentifikasi faktor-faktor laten yang memengaruhi kepuasan pengguna Shopee.
2. Mengetahui variabel indikator pembentuk dari masing-masing faktor tersebut.

---

## Metodologi & Tahapan Analisis
Analisis dilakukan menggunakan **RStudio** melalui tahapan berikut:
1. **Matriks Korelasi:** Memeriksa hubungan antar variabel.
2. **Uji Asumsi:**
   * **Uji Bartlett's Test of Sphericity:** Menguji dependensi/hubungan antar variabel ($p\text{-value} < 0.05$).
   * **Uji KMO-MSA:** Menguji kecukupan data/sampel (Overall MSA = 0.68, $\ge 0.5$ layak difaktorkan).
3. **Ekstraksi Faktor:** Menggunakan *Principal Component Analysis* (PCA), *Principal Factor* (PF), dan *Iterated Principal Factor* (IPF). Berdasarkan *Eigenvalue* $> 1.0$, terbentuk **5 faktor utama**.
4. **Rotasi Faktor:** Menggunakan metode **Varimax** (tanpa beririsan) dan **Oblimin**. Rotasi Varimax dipilih karena menghasilkan struktur yang lebih sederhana dan jelas dengan total keragaman varians yang dijelaskan sebesar **79%**.

## Hasil Temuan (5 Faktor Terbentuk)
Berdasarkan metode *Principal Component* dengan rotasi *Varimax*, 20 variabel dikelompokkan menjadi 5 faktor baru:

1. **Pengalaman Belanja yang Menyeluruh (29% varians):** Tersusun oleh aksesibilitas aplikasi ($X_1$), gratis ongkir ($X_{10}$), keamanan transaksi ($X_{12}$), kecepatan penyelesaian transaksi ($X_{13}$), kemudahan pembayaran ($X_{14}$), kualitas pengalaman belanja ($X_{19}$), dan dukungan aktivitas belanja ($X_{20}$).
2. **Kejelasan Informasi dan Promosi (20% varians):** Tersusun oleh kejelasan notifikasi ($X_6$), kejelasan informasi produk/layanan ($X_7$), keterjangkauan biaya ($X_8$), dan ketersediaan promosi ($X_9$).
3. **Keamanan dan Kelengkapan Layanan (20% varians):** Tersusun oleh kelengkapan produk ($X_2$), kecepatan respons sistem ($X_3$), akurasi informasi produk ($X_5$), dan keamanan data pribadi ($X_{11}$).
4. **Kemudahan dan Efisiensi Proses Pembayaran (16% varians):** Tersusun oleh kemudahan metode pembayaran ($X_4$), efisiensi waktu belanja ($X_{15}$), serta kualitas kecepatan dan akurasi pelayanan ($X_{16}$).
5. **Efektivitas Pengelolaan Retur dan Keluhan (15% varians):** Tersusun oleh kemudahan pengembalian produk ($X_{17}$) dan efektivitas penanganan retur/keluhan ($X_{18}$).
