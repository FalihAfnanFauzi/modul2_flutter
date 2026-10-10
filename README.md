# Praktikum Modul 2 - Navigasi dan Routing pada Flutter

Repositori ini memuat kode program untuk praktikum **Pemrograman Perangkat Bergerak Lanjut (PPBL) - Modul II**.

## Identitas Mahasiswa
- **Nama**: Falih Afnan Fauzi
- **NIM**: 707012400017
- **Kelas**: 48-03
- **Program Studi**: D4 Sistem Informasi Kota Cerdas
- **Fakultas**: Fakultas Ilmu Terapan, Universitas Telkom

---

## Daftar Proyek

### 1. `modul2` (Praktikum Mandiri)
Proyek implementasi konsep navigasi dasar:
- `Named Routes`: Sentralisasi rute pada `app_routes.dart` (termasuk `routes`, `onGenerateRoute`, dan `onUnknownRoute`).
- `NavigationBar`: Tiga tujuan utama (Beranda, Jadwal, Profil).
- `TabBar` & `TabBarView`: Tab navigation jadwal perkuliahan (Senin, Rabu, Jumat).
- `Navigator.pushNamed` & `Navigator.pop(context, value)`: Pengiriman parameter dinamis dan penerimaan nilai balik.
- `NavigationDrawer`: Panel navigasi samping.

### 2. `nusantara_cerdas_nav_707012400017` (Tugas Praktikum)
Purwarupa sistem navigasi terpadu *Kota Nusantara Cerdas*:
- `KerangkaNavigasi`: Kerangka utama dengan `NavigationBar` 3 tujuan (Beranda, Layanan, Warga).
- `NavigationDrawer`: Panel samping dengan identitas balai kota serta menu pendukung (Pengaturan Kota, Tentang Aplikasi, Keluar).
- `HalamanLayanan`: Tab navigation 3 kategori (Perizinan, Kesehatan, Transportasi) dengan daftar kartu layanan publik.
- `HalamanDetailLayanan`: Menerima arguments via generator rute dan memiliki tombol 'Ajukan Permohonan' yang mengembalikan nilai via `Navigator.pop(context, pesan)` yang memicu notifikasi `SnackBar`.
- `HalamanRiwayatLaporan`: Mengintegrasikan `BottomAppBar` dengan 4 aksi dan `FloatingActionButton`.
- `Navigasi Adaptif`: Otomatis beralih ke `NavigationRail` saat dibuka pada layar lebar (>= 600px).
- `Penanganan Galat 404`: Mengamankan rute tidak terdaftar melalui `onUnknownRoute`.
