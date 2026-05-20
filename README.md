# Tugas UI/UX Flutter — WhatsApp UI Clone

## Identitas

- **Nama:** Viona Winola
- **NIM:** 2455201110025
- **Pilihan:** A — WhatsApp

## Deskripsi Singkat

Project ini merupakan replikasi tampilan aplikasi WhatsApp menggunakan Flutter.  
Halaman yang dibuat terdiri dari:

- Halaman Chat List
- Halaman Percakapan (Chat Room)

UI dibuat dengan tema dark mode menyerupai tampilan WhatsApp asli dan dilengkapi navigasi antar halaman.

## Widget yang Digunakan

- **Scaffold** — struktur utama halaman Flutter
- **AppBar** — menampilkan header aplikasi
- **ListView** — menampilkan daftar chat secara vertikal
- **ListTile** — menampilkan item chat
- **CircleAvatar** — menampilkan avatar pengguna
- **Column** — menyusun widget secara vertikal
- **Row** — menyusun widget secara horizontal
- **Container** — membuat bubble chat
- **TextField** — input pesan chat
- **FloatingActionButton** — tombol chat baru
- **Navigator** — berpindah antar halaman
- **Expanded** — mengisi ruang kosong secara fleksibel
- **IconButton** — tombol icon interaktif

## Screenshot

### Chat List

![Chat List](screenshot/sschatlist.png)

### Chat Room

![Chat Room](screenshot/sschatroom.png)

## Wireframe

### Wireframe Chat List

![Wireframe Chat List](wireframe/chatlist.png)

### Wireframe Chat Room

![Wireframe Chat Room](wireframe/chatroom.png)

## Kesulitan yang Ditemui

Beberapa kendala yang ditemui selama pengerjaan:

- Error Gradle saat menjalankan Flutter
- Storage laptop penuh sehingga emulator tidak dapat diinstall
- Kesulitan membuat layout menyerupai WhatsApp asli

Cara mengatasinya:

- Menggunakan Flutter Web melalui browser Chrome
- Memindahkan project ke drive D agar storage lebih lega
- Memisahkan widget menjadi beberapa file agar kode lebih rapi dan mudah dipahami
