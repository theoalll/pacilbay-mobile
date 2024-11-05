# README - PacilBay Mobile

<details>
  <summary><h2>Tugas 7: Elemen Dasar Flutter (Click to Expand)</h2></summary>

### Stateless Widget dan Stateful Widget

1. Stateless Widget

   - Stateless Widget adalah widget yang tidak menyimpan state (keadaan) internal. Artinya, ketika widget ini dibuat, widget tidak akan berubah. Stateless Widget bersifat final dan hanya menerima parameter yang diberikan pada saat pembuatan. Stateless widget lebih sering digunakan untuk menampilkan informasi statis atau elemen yang tidak memerlukan update.
   
   - Contoh penggunaan stateless widget: membuat teks statis, gambar, ikon, dll

   

2. Stateful Widget
    - Stateful Widget adalah widget yang memiliki state internal yang dapat berubah. Stateful Widget bisa menyimpan informasi dan mengupdate tampilan berdasarkan perubahan yang terjadi selama life cycle aplikasi. Stateful Widget menggunakan dua kelas: kelas utama turunan dari StatefulWidget dan kelas State yang bertanggung jawab untuk menyimpan state dan mengelola update tampilan.
    - Contoh pengunaan stateful widget: tombol yang dapat ditekan (untuk mengubah status), form input yang menyimpan data, elemen interaktif lainnya

3. Perbandingan stateless widget dan stateful widget
    | Aspek          | Stateless Widget                                               | Stateful Widget                                                  |
    |----------------|---------------------------------------------------------------|-----------------------------------------------------------------|
    | Definisi       | Widget yang tidak menyimpan state dan tidak dapat berubah setelah dibuat | Widget yang menyimpan state dan dapat berubah seiring interaksi dengan user. |
    | Kelas          | Turunan dari StatelessWidget.                                 | Turunan dari StatefulWidget dan memiliki kelas State.           |
    | Pembaharuan    | Tidak dapat mengupdate tampilan setelah dibangun.           | Dapat mengupdate tampilan menggunakan metode setState().       |
    | Penggunaan     | Cocok untuk elemen statis seperti teks, ikon, gambar.        | Cocok untuk elemen interaktif seperti tombol, form, atau sign in. |
    | Siklus Hidup   | Hanya memiliki satu life cycle.                             | Memiliki dua life cycle: widget life cycle dan state life cycle. |
    | Kompleksitas   | Lebih sederhana dan lebih mudah digunakan.                   | Lebih kompleks karena memerlukan manajemen state.               |

### Daftar Widget yang Digunakan dan Fungsinya

| Widget               | Fungsi                                                                 |
|----------------------|------------------------------------------------------------------------|
| Scaffold             | Menyediakan struktur dasar halaman, termasuk AppBar, body, dan elemen lain di dalam aplikasi. |
| AppBar               | Menampilkan bagian atas aplikasi yang berisi judul dan elemen lainnya |
| Text                 | Menampilkan teks dalam aplikasi. Pada aplikasi ini digunakan untuk menampilkan judul aplikasi dan teks |
| Padding              | Memberikan jarak (padding) di sekeliling widget anaknya |
| Column               | Menyusun widget secara vertikal. |
| Row                  | Menyusun widget secara horizontal. |
| SizedBox             | Memberikan ruang kosong di antara widget. Digunakan untuk memberikan jarak vertikal antar elemen. |
| Center               | Meletakkan widget child di dalam area untuk menempatkan child di tengah area widget. |
| GridView.count       | Menyusun widget anak dalam bentuk grid. Dalam aplikasi ini digunakan untuk menampilkan ItemCard dalam 3 kolom. |
| Card                 | Menampilkan informasi dalam bentuk kartu. |
| Container            | Memberikan space untuk widget dan mengatur ukuran, warna, dan padding dari widget di dalamnya. |
| Material             | Memberikan efek material pada widget dan penggunaan tema. |
| InkWell              | Menambahkan efek sentuh (touch effect) pada widget ketika diklik.      |
| SnackBar             | Menampilkan pesan temporary di bagian bawah layar untuk memberikan feedback pada user. |
| Icon                 | Menampilkan ikon grafis.  |

### Fungsi setstate()
setState() adalah fungsi yang dimiliki oleh kelas State untuk mengelola keadaan (state) dari widget dalam aplikasi. Ketika fungsi setState() dipanggil, fungsi tersebut akan memberitahu Flutter untuk melakukan rebuild widget yang menggunakan state tersebut.

#### Kegunaan setstate()

1. Mengupdate UI
    Ketika keadaan suatu widget berubah (misal nilai variabel, hasil perhitungan, atau status interaksi pengguna (seperti klik tombol)), maka setState() digunakan untuk memperbarui UI supaya memeproses perubahan tersebut. Flutter akan menjalankan kembali build() dari widget yang bersangkutan dan menghasilkan UI baru yang sesuai dengan state terbaru.

2. Mengoptimalkan Proses Rebuild
    Dengan menggunakan fungsi setState(), Flutter hanya akan merebuild widget yang berkaitan dengan state yang diubah, bukan seluruh widget tree sehingga membantu meningkatkan performa aplikasi.

Contoh:
```dart
setState(() {
  // Perubahan pada state
  counter++;
});
```
Ketika kita memanggil setState(), kita harus memberikan fungsi callback yang berisi logika untuk memperbarui state. Fungsi ini kemudian diambil oleh Flutter untuk memperbarui UI.
Pada contoh ini, variabel counter merupakan bagian dari state yang dikelola. Dengan memanggil setState(), nilai counter akan diubah dan UI akan diperbarui dengan menggunakan nilai(state) yang baru.


### Perbedaan const dan final

1. const

    const digunakan untuk mendeklarasikan konstanta yang diinisialisasi pada waktu kompilasi. Nilai yang diassign kepada variabel const harus diketahui sebelum program dijalankan. Variabel const bersifat immutable dan lebih efisien dalam penggunaan memori karena Flutter dapat melakukan optimasi dengan mengelola nilai yang sama hanya sekali dalam memori.

2. final

    final digunakan untuk mendeklarasikan variabel yang hanya dapat diinisialisasi sekali, tapi nilainya tidak harus diketahui pada waktu kompilasi. Nilai dari variabel final dapat ditetapkan pada waktu runtime. Final bersifat immutable setelah diinisialisasi, tapi final memungkinkan re-assign nilai yang lebih fleksibel karena nilainya bisa ditentukan oleh ekspresi yang dijalankan saat program berjalan.

3. Perbedaan const dan final

    | Aspek                | const                             | final                                |
    |----------------------|-----------------------------------|--------------------------------------|
    | Inisialisasi         | Diinisialisasi pada waktu kompilasi    | Diinisialisasi pada waktu runtime         |
    | Imutabilitas         | Nilai tidak dapat diubah setelah inisialisasi | Nilai tidak dapat diubah setelah inisialisasi |
    | Tipe Data            | Harus bertipe data yang diketahui saat kompilasi | Tipe data bisa ditentukan saat runtime |
    | Penggunaan Memori    | Dapat dioptimalkan untuk penggunaan memori yang efisien | Memori akan dialokasikan untuk setiap instance |
    | Contoh               | `const pi = 3.14;`               | `final name = getName();`           |
    | Scope                | Dapat digunakan dalam konteks compile-time | Dapat digunakan dalam konteks runtime |

### Langkah-langkah Implementasi Elemen Dasar Flutter
- Membuat Program Flutter Baru: Pertama, saya membuka terminal dan menggunakan perintah `flutter create pacilbay` untuk membuat aplikasi Flutter baru dengan nama "pacilbay".
- Buat file baru bernama menu.dart di direktori mental_health_tracker/lib. Tambahkan kode import 'package:flutter/material.dart'; pada baris pertama file tersebut.
- Di menu.dart, ubah kelas MyHomePage dari StatefulWidget menjadi StatelessWidget dengan menghapus bagian yang tidak diperlukan dan menambahkan constructor baru.
- Di dalam file lib/main.dart, saya mengimplementasikan kelas MyHomePage yang merupakan widget utama aplikasi. Dalam metode build, saya menggunakan widget Column untuk menyusun tombol-tombol secara vertikal. Saya membuat tiga tombol dengan menggunakan widget ElevatedButton, masing-masing dilengkapi dengan ikon dan teks yang sesuai. Untuk mengisi card tersebut, saya deklarasikan tiga variabel bertipe string (npm, name, className) di dalam kelas MyHomePage.
- Selanjutnya, saya buat kelas baru bernama InfoCard di menu.dart untuk menampilkan informasi NPM, nama, dan kelas.
- Selanjutnya, saya mengimplementasikan warna yang berbeda untuk setiap tombol dengan menambahkan properti `final Color color;` pada class `ItemHomepage` yang sudah dibuat sebelumnya. 
- Saya menggunakan widget ScaffoldMessenger untuk menampilkan Snackbar ketika tombol ditekan. Dalam setiap fungsi onPressed dari tombol, saya menambahkan kode untuk menampilkan Snackbar yang sesuai
- Setelah semua kelas selesai dimplementasikan, saya menjalankan perintah flutter analyze untuk memastikan tidak ada isu pada kode yang dapat mengganggu performa atau fungsionalitas aplikasi.
</details>