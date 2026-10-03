# FORM-EWS-REFERENCE.md

## Sumber Referensi

Dokumen referensi utama:
`docs/references/Lembar-EWSANAK.pdf`

Referensi adalah lembar asli **LEMBAR OBSERVASI EARLY WARNING SCORE (EWS) PADA ANAK** milik Rumah Sakit Amal Sehat Wonogiri.

## Hasil Analisis Visual

- Dokumen terdiri dari **1 halaman**.
- Ukuran halaman: **A4**.
- Orientasi: **portrait**.
- Form menggunakan struktur tabel padat dan banyak kolom observasi waktu.
- Bagian header memuat identitas Rumah Sakit Amal Sehat Wonogiri serta identitas pasien.
- Kode/label dokumen di bagian kanan atas: **RM 3A**.
- Judul utama: **LEMBAR OBSERVASI EARLY WARNING SCORE (EWS) PADA ANAK**.
- Subjudul: **Pencatatan observasi menggunakan National Early Warning System (NEWS) untuk usia < 16 th**.
- Header identitas pasien memuat: Nama, Umur, TTL, Alamat, Ruang, dan Jenis kelamin L/P.
- Bagian tabel observasi memiliki header Waktu Pemantauan, Tanggal, dan Jam serta beberapa kolom observasi berurutan.
- Parameter observasi pada tabel utama:
  - Umur Pasien / Kelompok Umur
  - Pernapasan
  - Denyut Jantung
  - Tingkat Kesadaran
  - Alat Bantu O2
  - Saturasi Oksigen
  - Tekanan Darah Sistolik
  - CRT
  - Warna Kulit
  - Suhu
- Tabel menggunakan kode warna untuk score 0, 1, 2, dan 3.
- Di bagian bawah tabel terdapat:
  - Total Score EWS
  - Frekuensi Pemantauan (Jam)
  - Jumlah Intake
  - Jumlah Out Put
  - NAMA & TTD
  - Nama
  - Paraf / Tanda tangan
- Terdapat bagian **Keterangan** dengan **Kunci Early Warning Score** untuk score 0, 1, 2, dan 3.
- Terdapat bagian **TINDAK LANJUT ASUHAN** dengan kelompok parameter 0-2, 3-4, 5, dan >= 6.
- Footer dokumen memuat kode **A3A**.

## Struktur Scoring yang Terlihat pada Referensi

### Pernapasan
Kelompok umur:
- < 28 hari
- < 1 tahun
- 1-5 tahun
- 5-11 tahun
- 12-16 tahun

Baris score yang tampak pada referensi:
- score 3: >60, >60, >60, >60, >60
- score 2: 51-60, 51-60, 51-60, 51-60, 31-40
- score 1: 41-50, 41-50, 31-50, 31-50, 21-30
- score 0: 40-60, 30-40, 20-30, 20-30, 10-20
- score 1: 30-39, 20-29, dan nilai sesuai kelompok umur yang tercetak pada referensi
- score 2: <20, <20, <20, <20, <20

**Catatan implementasi:** jangan mengubah atau menafsirkan ulang threshold. Gunakan tabel PDF sebagai sumber kebenaran. Bila ada teks gambar yang tidak terbaca sempurna, tandai sebagai TODO untuk validasi manual dengan petugas rumah sakit.

### Denyut Jantung
Kelompok umur mengikuti 5 kelompok umur di atas.

Baris yang tampak pada referensi meliputi score 3, 2, 1, 0, 1, 2, 3 dengan rentang berbeda untuk setiap kelompok umur.

Nilai yang terlihat jelas antara lain:
- >200 pada kelompok pertama untuk score 3
- rentang tinggi 171-190, 161-170, 141-160, 121-140 untuk score 2
- 101-190, 161-170, 141-160, 101-120 untuk score 1 pada baris berwarna hijau
- 100-180, 110-160, 90-140, 80-120, 55-100 untuk score 0
- 99-90, 100-100, 80-89, 70-79, 50-55 untuk score 1
- 81-90, 90-99, 70-79, 60-69 untuk score 2
- <60, <60, <70, <60, <60 untuk score 3

**Catatan:** karena beberapa karakter pada hasil scan kurang tajam, nilai akhir harus diverifikasi terhadap dokumen asli sebelum dijadikan logika scoring produksi.

### Tingkat Kesadaran
- Sadar (A) -> score 0
- Respon Suara (V) -> score 1
- Respon Nyeri (P) -> score 3
- Tidak Respon (U) -> score 3

### Alat Bantu O2
- Tidak -> score 0
- Ya -> score 1

### Saturasi Oksigen
- >= 95 -> score 0
- 91-93 -> score 1
- 87-89 -> score 2
- < 86 -> score 3

### Tekanan darah Sistolik
Label: **Tekanan darah Sistolik (diisi nilai dari hasil pemeriksaan)**

Baris yang terlihat:
- >140 -> score 3
- 130-139 -> score 2
- 120-129 -> score 0
- 90-119 -> score 1
- 80-89 -> score 2
- <80 -> score 3

### CRT
- > 2 detik -> score 0
- < 2 detik -> score 0

### Warna Kulit
- Pink -> score 0
- Pucat -> score 3

### Suhu
- > 40 -> score 0
- 39 -> score 0
- 38 -> score 0
- 37 -> score 0
- 36 -> score 0
- < 35 -> score 0

## Tindak Lanjut Asuhan

Gunakan teks pada PDF sebagai sumber tampilan. Kelompok parameter:

### 0 - 2
- Kaji tiap 4 jam

### 3 - 4
- Lapor perawat ke Tim untuk konfirmasi parameter
- Lakukan intervensi sesuai instruksi bila ada
- Kaji tiap 2 jam

### 5
- Lapor perawat ke Tim yang bertanggung jawab untuk konfirmasi parameter
- Lapor Dokter umum
- Lakukan intervensi sesuai instruksi
- Kaji tiap 1 jam

### >= 6
- Lapor perawat ke Tim yang bertanggung jawab untuk konfirmasi parameter
- Lapor dr umum dan DPJP dengan kunjungan wajib darurat
- Lakukan intervensi sesuai instruksi
- Kaji tiap 30 menit atau setiap saat

**Catatan:** teks harus dibuat setepat mungkin mengikuti dokumen asli. Jangan memperbaiki istilah atau mengubah substansi medis tanpa verifikasi rumah sakit.

## Aturan Kritis untuk Implementasi

1. PDF asli adalah referensi visual dan struktural.
2. Jangan membuat form EWS generik.
3. Jangan mengarang threshold EWS.
4. Jangan mengubah skor medis berdasarkan asumsi umum.
5. Bila terdapat hasil scan yang meragukan, tandai sebagai TODO dan jangan diam-diam menggantinya.
6. Preview web dan print harus menggunakan struktur HTML yang sama sejauh memungkinkan.
7. Hasil cetak harus tetap satu halaman A4 portrait.
