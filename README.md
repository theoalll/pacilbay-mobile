# README - PacilBay Mobile

<details>  <summary><h2>📝7️⃣ Tugas 7: Elemen Dasar Flutter (Click to Expand)</h2></summary>

<details>
  <summary><h3>1️⃣ Stateless Widget dan Stateful Widget</h3></summary>

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
</details>

<details>
  <summary><h3>2️⃣ Daftar Widget yang Digunakan dan Fungsinya</h3></summary>

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
</details>
<details>
  <summary><h3>3️⃣ Fungsi setstate()</h3></summary>
setState() adalah fungsi yang dimiliki oleh kelas State untuk mengelola keadaan (state) dari widget dalam aplikasi. Ketika fungsi setState() dipanggil, fungsi tersebut akan memberitahu Flutter untuk melakukan rebuild widget yang menggunakan state tersebut.

#### Kegunaan setstate()

1. Mengupdate UI
    Ketika keadaan suatu widget berubah (misal nilai variabel, hasil perhitungan, atau status interaksi *User* (seperti klik tombol)), maka setState() digunakan untuk memperbarui UI supaya memeproses perubahan tersebut. Flutter akan menjalankan kembali build() dari widget yang bersangkutan dan menghasilkan UI baru yang sesuai dengan state terbaru.

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
</details>

<details>
  <summary><h3>4️⃣ Langkah-langkah Implementasi Elemen Dasar Flutter</h3></summary>

- Membuat Program Flutter Baru: Pertama, saya membuka terminal dan menggunakan perintah `flutter create pacilbay` untuk membuat aplikasi Flutter baru dengan nama "pacilbay".
- Buat file baru bernama menu.dart di direktori mental_health_tracker/lib. Tambahkan kode import 'package:flutter/material.dart'; pada baris pertama file tersebut.
- Di menu.dart, ubah kelas MyHomePage dari StatefulWidget menjadi StatelessWidget dengan menghapus bagian yang tidak diperlukan dan menambahkan constructor baru.
- Di dalam file lib/main.dart, saya mengimplementasikan kelas MyHomePage yang merupakan widget utama aplikasi. Dalam metode build, saya menggunakan widget Column untuk menyusun tombol-tombol secara vertikal. Saya membuat tiga tombol dengan menggunakan widget ElevatedButton, masing-masing dilengkapi dengan ikon dan teks yang sesuai. Untuk mengisi card tersebut, saya deklarasikan tiga variabel bertipe string (npm, name, className) di dalam kelas MyHomePage.
- Selanjutnya, saya buat kelas baru bernama InfoCard di menu.dart untuk menampilkan informasi NPM, nama, dan kelas.
- Selanjutnya, saya mengimplementasikan warna yang berbeda untuk setiap tombol dengan menambahkan properti `final Color color;` pada class `ItemHomepage` yang sudah dibuat sebelumnya. 
- Saya menggunakan widget ScaffoldMessenger untuk menampilkan Snackbar ketika tombol ditekan. Dalam setiap fungsi onPressed dari tombol, saya menambahkan kode untuk menampilkan Snackbar yang sesuai
- Setelah semua kelas selesai dimplementasikan, saya menjalankan perintah flutter analyze untuk memastikan tidak ada isu pada kode yang dapat mengganggu performa atau fungsionalitas aplikasi.
</details>

</details>

<details>
  <summary><h2>📝8️⃣ Tugas 8: Flutter Navigation, Layouts, Forms, and Input Elements (Click to Expand)</h2></summary>

<details>
  <summary><h3>1️⃣ Kegunaan const di Flutter</h3></summary>

`const` adalah keyword di Flutter yang digunakan untuk mendefinisikan objek atau widget yang immutable (tidak bisa diubah) dan akan diinisialisasi sekali saja pada saat kompilasi. Dengan `const`, kita memastikan bahwa objek tersebut bersifat konstan dan tidak akan berubah sepanjang masa hidup aplikasi.

#### Keuntungan menggunakan const
1. **Meningkatkan Performa Aplikasi**
   - **Reuse**: Objek `const` hanya dibuat satu kali dalam memori, sehingga dapat digunakan kembali (reused) tanpa perlu dibuat ulang.
   - **Optimasi Rendering**: Flutter tidak perlu merender ulang widget yang diberi `const`, sehingga mempercepat proses rendering dan mengurangi kerja CPU.

2. **Efisiensi Memori**
   - Objek `const` hanya memakan memori sekali saja, karena tidak dibuat ulang setiap kali dipanggil.
   - Penggunaan memori menjadi lebih hemat, terutama dalam aplikasi dengan banyak widget statis.

3. **Deteksi Kesalahan di Waktu Kompilasi**
   - Kesalahan yang berkaitan dengan nilai konstan dapat dideteksi lebih awal, saat proses kompilasi, bukan di runtime.
   - Membantu pengembang menemukan bug lebih cepat dan meningkatkan keandalan aplikasi.

4. **Meningkatkan Readability dan Maintainability**
   - Kode yang menggunakan `const` lebih mudah dibaca dan dipahami, karena developer lain tahu bahwa objek tersebut tidak akan berubah.
   - Membantu menjaga konsistensi dalam kode, sehingga lebih mudah dikelola dan di-maintain.

#### Kapan Sebaiknya Menggunakan `const`?
- **Widget Statis**: Ketika widget atau objek tidak berubah selama masa hidup aplikasi.
  ```dart
  const Text('Hello, Flutter');
  ```

- **Konfigurasi Aplikasi**: Untuk nilai-nilai yang tidak berubah, seperti warna, margin, padding, atau konfigurasi lainnya.
    ```dart
    const Color primaryColor = Colors.blue;
    ```

- **Penggunaan Berulang**: Ketika sebuah widget atau objek sering digunakan di berbagai tempat dalam aplikasi.
    ```dart
    const EdgeInsets allPadding = EdgeInsets.all(16.0);
    ```

#### Kapan Sebaiknya Menggunakan `const`?
- **Widget Dinamis**: Jika widget atau objek bergantung pada input *User* atau data yang berubah.
    ```dart
    Text('Welcome, $userName'); // Tidak bisa menggunakan const karena userName bisa berubah
    ```

- **Stateful Widget**: Untuk widget yang memiliki state atau memerlukan perubahan selama runtime.
    ```dart
    setState(() {
    // Update state
    });
    ```

#### Contoh Penggunaan `const`?
```dart
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Const Example'),
        ),
        body: Center(
          child: Text('Hello, const world!'),
        ),
      ),
    );
  }
}
```
Dalam kode Dart tersebut, penggunaan const memiliki beberapa fungsi:
1. Konstruksi class: Konstruktor `MyApp` ditandai sebagai const, yang berarti bahwa setiap instance dari `MyApp` tidak akan berubah (immutable) dan dapat diinisialisasi sebagai konstan. Konstruktor ini membantu Flutter memahami bahwa widget ini tidak perlu dirender ulang jika tidak ada perubahan.
2. Reusable `MaterialApp`: Dengan menggunakan const, `MaterialApp` dibuat sebagai objek immutable. Jika tidak ada perubahan pada konfigurasi aplikasi, Flutter tidak perlu membuat ulang widget ini setiap kali aplikasi dijalankan atau dirender ulang.
3. Immutable `Text` Widget: `Text` ini memiliki nilai yang tidak akan berubah selama runtime. Dengan `const`, Flutter tidak perlu membuat ulang widget ini, yang meningkatkan efisiensi rendering.
</details>

<details>
  <summary><h3>2️⃣ Penggunaan Column dan Row pada Flutter</h3></summary>

#### 1. **Column**
    `Column` adalah widget di Flutter yang menyusun *children*-nya secara vertikal (dari atas ke bawah).

    **Karakteristik:**
    - Menyusun widget secara **vertikal**.
    - Bisa menyesuaikan **alignment** dan **main axis** (vertikal) serta **cross axis** (horizontal).
    - Fleksibel untuk membuat tata letak dengan elemen-elemen yang harus ditampilkan berurutan dari atas ke bawah.

    **Properti Utama:**
    - `mainAxisAlignment`: Mengatur bagaimana *children* diatur secara vertikal.
    - `crossAxisAlignment`: Mengatur bagaimana *children* disejajarkan secara horizontal.

    **Contoh Implementasi:**
    ```dart
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Item 1'),
        Text('Item 2'),
        Text('Item 3'),
      ],
    )
    ```
    Penggunaan `Column` dalam kode ini bertujuan untuk menyusun beberapa widget `Text` secara vertikal, dari atas ke bawah. 
    - `Column` Widget

        `Column` digunakan untuk menyusun anak-anaknya (dalam hal ini widget `Text`) secara vertikal.

    - `mainAxisAlignment: MainAxisAlignment.center`

        Properti `mainAxisAlignment` mengatur posisi anak-anak widget di **sumbu utama** (vertikal dalam `Column`). Dengan `MainAxisAlignment.center`, semua anak-anak `Column` akan ditempatkan di tengah-tengah sumbu vertikal.

    - `crossAxisAlignment: CrossAxisAlignment.start`

        Properti `crossAxisAlignment` mengatur posisi anak-anak di sepanjang **sumbu sekunder** (horizontal dalam `Column`). Dengan `CrossAxisAlignment.start`, setiap anak dari `Column` akan disejajarkan di sisi **kiri** dari sumbu horizontal.

    - `children`

      Daftar widget yang merupakan anak-anak dari `Column`. Dalam kode ini, ada tiga widget `Text`:
      `Text('Item 1')`
      `Text('Item 2')`
      `Text('Item 3')`

    Ketiga widget ini akan ditampilkan secara vertikal dalam `Column`, dimulai dari sisi kiri (karena `crossAxisAlignment.start`) dan dipusatkan di sumbu vertikal (karena `mainAxisAlignment.center`).

#### 2. **Row**
    `Row` adalah widget di Flutter yang menyusun *children*-nya secara horizontal (dari kiri ke kanan).

    **Karakteristik:**
    - Menyusun widget secara **horizontal**.
    - Sama seperti `Column`, `Row` memiliki kontrol atas **alignment** dan **main axis** (horizontal) serta **cross axis** (vertikal).
    - Digunakan untuk membuat tata letak elemen-elemen yang perlu disusun berurutan dari kiri ke kanan.

    **Properti Utama:**
    - `mainAxisAlignment`: Mengatur bagaimana *children* diatur secara horizontal.
    - `crossAxisAlignment`: Mengatur bagaimana *children* diatur vertikal.

    **Contoh Implementasi:**
    ```dart
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(Icons.star),
        Icon(Icons.favorite),
        Icon(Icons.person),
      ],
    )
    ```
    Kode `Row` ini digunakan untuk menyusun tiga ikon secara horizontal dengan jarak yang merata di antara mereka.

    - `Row'
      - Widget ini menyusun elemen-elemen anak (`children`) secara horizontal, dari kiri ke kanan.

    - `mainAxisAlignment: MainAxisAlignment.spaceAround`. Properti ini mengatur jarak antar elemen anak di **sumbu utama** (horizontal). Dengan `spaceAround`:
        - Memberikan jarak yang sama di sekitar setiap elemen.
        - Jarak antara elemen dan tepi `Row` sedikit lebih kecil dibandingkan jarak antar elemen.

    - `crossAxisAlignment: CrossAxisAlignment.center`
      - Properti ini menentukan bagaimana elemen-elemen anak diatur di **sumbu sekunder** (vertikal).
      - `center` memastikan semua ikon berada di tengah secara vertikal dalam `Row`.

    - `children`
      - Berisi tiga ikon: `Icons.star`, `Icons.favorite`, dan `Icons.person`.
      - Masing-masing ikon akan ditempatkan secara horizontal dalam `Row` dengan jarak merata.

#### 3. Perbandingan `Column` vs `Row`

    | **Aspek**              | **Column**                          | **Row**                                   |
    |------------------------|-------------------------------------|-------------------------------------------|
    | **Orientasi**           | Vertikal (dari atas ke bawah)       | Horizontal (dari kiri ke kanan)           |
    | **Main Axis**           | Vertikal                            | Horizontal                                |
    | **Cross Axis**          | Horizontal                          | Vertikal                                  |
    | **Penggunaan**          | Untuk menyusun elemen vertikal      | Untuk menyusun elemen horizontal          |
    | **Alignment**           | `mainAxisAlignment`, `crossAxisAlignment` | `mainAxisAlignment`, `crossAxisAlignment` |
    | **Contoh Situasi**      | Daftar item, formulir, paragraf     | Navigasi horizontal, icons                |

#### 4. Contoh Penggunaan Gabungan:
    ```dart
    Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Left Item'),
            Text('Right Item'),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.star),
            Icon(Icons.favorite),
            Icon(Icons.person),
          ],
        ),
      ],
    )
    ```
</details>

<details>
  <summary><h3>3️⃣ Elemen Input pada Halaman Form</h3></summary>

#### Elemen Input yang Digunakan dalam Kode:

1. **`TextFormField`**:
   - **`Nama Produk`**: Input teks untuk nama produk dengan validasi untuk memastikan tidak kosong dan tidak lebih dari 100 karakter.
   - **`Deskripsi Produk`**: Input teks untuk deskripsi produk dengan validasi untuk memastikan tidak kosong dan tidak lebih dari 255 karakter.
   - **`Harga Produk`**: Input teks yang memerlukan angka positif untuk harga produk, dengan validasi angka dan memastikan input adalah integer positif.
   - **`Jumlah Tersedia`**: Input teks yang memerlukan angka positif untuk jumlah produk yang tersedia, dengan validasi serupa untuk angka dan integer positif.

2. **`ElevatedButton`**:
   - Tombol untuk menyimpan data formulir, dengan validasi formulir sebelum menampilkan dialog konfirmasi.

#### Elemen Input Flutter Lain yang Tidak Digunakan:
1. **`DropdownButton`**: Untuk memilih dari daftar pilihan yang sudah ditentukan.
2. **`Checkbox`**: Untuk input nilai boolean (true/false).
3. **`Radio`**: Untuk memilih satu opsi dari beberapa pilihan.
4. **`Slider`**: Untuk input angka dalam bentuk slider.
5. **`Switch`**: Untuk input boolean yang bisa diaktifkan/dinonaktifkan.
6. **`DatePicker`**: Untuk memilih tanggal.
7. **`TimePicker`**: Untuk memilih waktu.
</details>

<details>
  <summary><h3>4️⃣ Tema (theme) dalam Aplikasi Flutter</h3></summary>

Flutter menyediakan widget `ThemeData` yang dapat diatur dalam `MaterialApp` untuk memastikan konsistensi tampilan di seluruh aplikasi. Dengan menggunakan `ThemeData`, kita bisa mengatur warna, font, bentuk tombol, gaya teks, dan elemen UI lainnya agar konsisten di seluruh aplikasi.

Dalam aplikasi Flutter yang saya buat, saya menggunakan tema utama yang didefinisikan di `main.dart`. Tema ini berfungsi sebagai **"base"** untuk seluruh screens dan widget lainnya, memastikan konsistensi desain dan gaya di seluruh aplikasi.

Di dalam `main.dart`, saya mengatur `ThemeData` menggunakan `colorScheme` dan beberapa pengaturan tambahan:

```dart
MaterialApp(
  theme: ThemeData(
    colorScheme: ColorScheme.fromSwatch(
      primarySwatch: Colors.deepOrange,
    ).copyWith(
      secondary: Colors.deepOrange[400],
    ),
    useMaterial3: true, // Mengaktifkan Material Design 3
  ),
  home: MyHomePage(),
);
```

1. **MaterialApp**

   `MaterialApp` adalah widget utama yang membungkus aplikasi Flutter. Parameter `theme` membuat kita bisa menentukan tema global yang akan diterapkan ke seluruh aplikasi.

2. **ThemeData**

   `ThemeData` adalah konfigurasi tema yang berisi berbagai pengaturan seperti skema warna, font, dan gaya lainnya.

3. **colorScheme**

   - **`ColorScheme.fromSwatch`**: Digunakan untuk membuat skema warna berbasis warna utama yang kita pilih (`primarySwatch`). Dalam contoh ini, `primarySwatch` diatur ke `Colors.deepOrange`.
   - **`copyWith`**: Digunakan untuk menyesuaikan skema warna lebih lanjut. Dalam kode ini, `secondary` diatur ke `Colors.deepOrange[400]`. Warna sekunder biasanya digunakan untuk elemen tambahan seperti tombol aksi sekunder dan ikon.

4. **useMaterial3**

   **`useMaterial3: true`**: Mengaktifkan penggunaan **Material Design 3**, yang menghadirkan fitur desain baru dan penyesuaian yang lebih baik untuk elemen UI, seperti tombol, card, dan lainnya.

5. **home**

   Menentukan layar awal aplikasi, dalam hal ini, `MyHomePage`.

</details>

<details>
  <summary><h3>5️⃣ Navigasi dalam aplikasi dengan banyak halaman pada Flutter</h3></summary>

Navigasi dalam aplikasi ini ditangani menggunakan **`Navigator`** dengan metode **`pushReplacement`** dan **`push`** untuk berpindah antar halaman.

#### 1. **Penggunaan `Navigator.pushReplacement`**
   - **`Navigator.pushReplacement`** digunakan untuk mengganti halaman saat ini dengan halaman baru. `Navigator.pushReplacement` memastikan bahwa halaman sebelumnya tidak akan tetap berada dalam *stack* navigasi.
   - **Keuntungan**: *User* tidak dapat kembali ke halaman sebelumnya dengan tombol "back", sehingga cocok untuk skenario seperti mengalihkan *User* ke halaman utama atau formulir tertentu setelah tindakan tertentu.

   **Contoh**:
   ```dart
   ListTile(
     leading: const Icon(Icons.home_outlined),
     title: const Text('Halaman Utama'),
     onTap: () {
       Navigator.pushReplacement(
         context,
         MaterialPageRoute(
           builder: (context) => MyHomePage(),
         ),
       );
     },
   );
   ```
   Dalam contoh ini, ketika *User* mengetuk "Halaman Utama", mereka akan diarahkan ke `MyHomePage`, dan halaman sebelumnya akan dihapus dari *stack* navigasi.

Selain menggunakan **`pushReplacement`** untuk navigasi melalui drawer, saya juga menggunakan **`Navigator.push`** di dalam **`InkWell`** pada halaman menu untuk navigasi ke halaman lain.

#### 2. **Navigasi dengan `Navigator.push`**
   - **`Navigator.push`** menambahkan halaman baru ke *stack* navigasi, memungkinkan *user* untuk kembali ke halaman sebelumnya dengan tombol "back".
   - **Perbedaan dengan `pushReplacement`**: 
     - **`push`** menambahkan halaman ke *stack* navigasi.
     - **`pushReplacement`** mengganti halaman saat ini, sehingga halaman sebelumnya dihapus dari *stack* navigasi.
   - **Keuntungan**: Memungkinkan navigasi dengan kemampuan untuk kembali ke halaman sebelumnya, misalnya, setelah menyelesaikan suatu tugas atau form.

   ```dart
   Navigator.push(
     context,
     MaterialPageRoute(
       builder: (context) => ProductEntryFormPage(),
     ),
   );
   ```
   Dalam contoh ini, ketika item menu dengan nama "Tambah Produk" diklik, aplikasi akan menavigasi ke `ProductEntryFormPage`, dan *user* dapat kembali ke halaman sebelumnya dengan tombol "back".

#### 3. **Penggunaan `Drawer` untuk Navigasi**
   - **`Drawer`** adalah komponen navigasi yang menampilkan side menu. *User* dapat memilih item menu untuk berpindah antar halaman.
   - Setiap **`ListTile`** dalam `Drawer` memicu navigasi ke halaman yang berbeda.
   - **Contoh item Drawer**:
     - **Halaman Utama**: Mengarahkan ke `MyHomePage`.
     - **Tambah Produk**: Mengarahkan ke `ProductEntryFormPage`.

   **Kode**:
   ```dart
   Drawer(
     child: ListView(
       children: [
         // Header Drawer
         DrawerHeader(...),
         // Navigasi ke Halaman Utama
         ListTile(
           leading: const Icon(Icons.home_outlined),
           title: const Text('Halaman Utama'),
           onTap: () {
             Navigator.pushReplacement(
               context,
               MaterialPageRoute(builder: (context) => MyHomePage()),
             );
           },
         ),
         // Navigasi ke Tambah Produk
         ListTile(
           leading: const Icon(Icons.shop_2_outlined),
           title: const Text('Tambah Produk'),
           onTap: () {
             Navigator.pushReplacement(
               context,
               MaterialPageRoute(builder: (context) => ProductEntryFormPage()),
             );
           },
         ),
       ],
     ),
   );
   ```

</details>
</details>

<details>  <summary><h2>📝9️⃣ Tugas 9: Integrasi Layanan Web Django dengan Aplikasi Flutter (Click to Expand)</h2></summary>

<details>
  <summary><h3>1️⃣ Pembuatan Model Custom di Flutter</h3></summary>

1. **Struktur Data yang Konsisten**
   - Model menyediakan kerangka atau struktur yang memastikan bahwa data yang diterima atau dikirim memiliki format yang sama.
   - Dalam Django, model biasanya digunakan untuk mendefinisikan bagaimana data disimpan dalam database. Saat data ini diubah menjadi JSON (menggunakan serializer), struktur model tetap terjaga.
   - Di sisi Flutter, model (dalam bentuk kelas Dart) memastikan data JSON yang diterima dari Django dapat diakses dengan atribut atau metode tertentu. Dengan pendekatan ini, data yang ditransfer antara Django dan Flutter tetap konsisten, mencegah error parsing atau akses atribut yang tidak ada.

2. **Validasi Data**
   - Model di Django (dan serializer) memvalidasi data sebelum menyimpan ke database. Jika tidak ada model, data bisa saja diterima meskipun tidak valid atau tidak sesuai dengan harapan.
   - Di Flutter, model memastikan data JSON yang diterima memiliki tipe dan format yang benar.

   **Contoh Validasi di Django:**
   ```python
   class ProductSerializer(serializers.ModelSerializer):
       class Meta:
           model = Product
           fields = ['id', 'name', 'price', 'description']

       def validate_price(self, value):
           if value <= 0:
               raise serializers.ValidationError("Price must be greater than zero.")
           return value
   ```

   **Error yang Dapat Terjadi Tanpa Validasi:**
   Jika Flutter menerima JSON tanpa validasi:
   ```json
   {
     "id": 1,
     "name": "Laptop",
     "price": "not_a_number",
     "description": "High-performance laptop"
   }
   ```
   Maka aplikasi Flutter akan crash ketika mencoba mengubah tipe data `price` menjadi `double`.

3. **Kemudahan Pengembangan dan Perawatan**
   - Model berfungsi sebagai sumber kebenaran tunggal (**Single Source of Truth**) untuk pengelolaan data, baik di Django maupun Flutter.
   - Jika ada perubahan pada struktur data (misalnya penambahan atribut baru), model memastikan bahwa perubahan ini diterapkan dengan konsisten pada backend dan frontend.
   - Tanpa Model, perubahan harus dilakukan secara manual di beberapa tempat, yang meningkatkan risiko inkonsistensi.

4. **Keamanan Data**
   - Django model dapat dilengkapi dengan kontrol akses dan logika validasi yang mencegah eksploitasi.
   - Tanpa model, data mentah yang tidak diverifikasi dapat menyebabkan celah keamanan.

### **Apakah Akan Terjadi Error Jika Tidak Membuat Model?**

- **Di Django:** 
  Tidak menggunakan model Django untuk database (misalnya hanya bekerja dengan data JSON mentah) tidak akan menyebabkan error secara langsung, tetapi akan sangat sulit untuk mengelola data dengan struktur kompleks. Serializer membutuhkan model atau struktur data untuk bekerja dengan baik.

- **Di Flutter:** 
  Tanpa model Dart, JSON parsing menjadi tidak efisien dan rawan error. Akses atribut menggunakan cara manual (`json['key']`) dapat menyebabkan error runtime jika atribut tidak ada atau tipe data tidak sesuai.

  **Contoh Masalah Tanpa Model Dart:**
  ```dart
  var jsonData = {'id': 1, 'name': 'Laptop', 'price': 1500};
  
  // Akses manual
  var price = jsonData['price']; // Berjalan
  var description = jsonData['description']; // Error runtime: Key not found
  ```

Tanpa model, error eksplisit mungkin tidak langsung ada, tetapi akan ada banyak potensi masalah yang menjadikan program tidak efisien dan rawan bug.
</details>
<details>
  <summary><h3>2️⃣ Fungsi dari library http</h3></summary>
  Library `http` dalam Flutter digunakan untuk mengirim HTTP request dari aplikasi Flutter ke layanan backend seperti Django. Library http menyediakan API untuk melakukan request, seperti `GET`, `POST`, `PUT`, `DELETE`, dll sehingga memungkinkan komunikasi antara frontend (Flutter) dan backend (Django).

Fungsi `http` dalam integrasi Django dan Flutter:

### 1. **Mengirim Data ke Backend (POST Request)**

Pada integrasi flutter dan django, **POST** digunakan untuk mengirimkan data dari Flutter ke Django. Contohnya, mengirim data formulir menambah user (register).

**Kode di Flutter:**

```dart
import 'package:http/http.dart' as http;
import 'dart:convert';

Future<void> registerUser(String username, String password) async {
  final url = Uri.parse('http://127.0.0.1:8000/api/register/');
  final response = await http.post(
    url,
    headers: {'Content-Type': 'application/json'},
    body: jsonEncode({'username': username, 'password': password}),
  );

  if (response.statusCode == 201) {
    print('User registered successfully');
  } else {
    print('Failed to register user: ${response.statusCode}');
  }
}
```

**Kode di Django (views.py):**

```python
from rest_framework.decorators import api_view
from rest_framework.response import Response
from rest_framework import status

@api_view(['POST'])
def register_user(request):
    username = request.data.get('username')
    password = request.data.get('password')
    # Simpan data ke database (contoh sederhana)
    if username and password:
        return Response({'message': 'User registered'}, status=status.HTTP_201_CREATED)
    return Response({'error': 'Invalid data'}, status=status.HTTP_400_BAD_REQUEST)
```

- Library `http` akan membuat **request POST** dengan header dan isi request yang sesuai.
- `jsonEncode` digunakan untuk mengonversi data Dart menjadi format JSON yang dapat dipahami Django.
- Error handling dilakukan dengan memeriksa `statusCode`.

### 2. **Mengambil Data dari Backend (GET Request)**

**GET** request digunakan untuk mengambil data dari Django, seperti daftar produk atau detail pengguna.

Misalkan aplikasi Flutter perlu mengambil daftar produk dari endpoint Django `/api/products/`.

**Kode di Flutter:**

```dart
Future<void> fetchProducts() async {
  final url = Uri.parse('http://127.0.0.1:8000/api/products/');
  final response = await http.get(url);

  if (response.statusCode == 200) {
    final data = jsonDecode(response.body);
    print('Products: $data');
  } else {
    print('Failed to fetch products: ${response.statusCode}');
  }
}
```

**Kode di Django (views.py):**

```python
from rest_framework.decorators import api_view
from rest_framework.response import Response

@api_view(['GET'])
def get_products(request):
    products = [
        {'id': 1, 'name': 'Product 1', 'price': 100},
        {'id': 2, 'name': 'Product 2', 'price': 200},
    ]
    return Response(products)
```

- Fungsi `http.get` mengirimkan permintaan tanpa body, cukup dengan URL.
- Data JSON yang diterima dari Django di-*decode* menggunakan `jsonDecode` di Flutter.
- Library `http` meng-*handle* proses pengambilan data secara asinkron dengan `Future`.

### 3. **Mengupdate Data di Backend (PUT Request)**

**PUT** request digunakan untuk meng-*update* data yang sudah ada, seperti mengedit profil pengguna.

**Kode di Flutter:**

```dart
Future<void> updateUser(int userId, String username) async {
  final url = Uri.parse('http://127.0.0.1:8000/api/user/$userId/');
  final response = await http.put(
    url,
    headers: {'Content-Type': 'application/json'},
    body: jsonEncode({'username': username}),
  );

  if (response.statusCode == 200) {
    print('User updated successfully');
  } else {
    print('Failed to update user: ${response.statusCode}');
  }
}
```

**Kode di Django (views.py):**

```python
from rest_framework.decorators import api_view
from rest_framework.response import Response
from rest_framework import status

@api_view(['PUT'])
def update_user(request, user_id):
    username = request.data.get('username')
    # Perbarui data di database (contoh sederhana)
    if username:
        return Response({'message': 'User updated'}, status=status.HTTP_200_OK)
    return Response({'error': 'Invalid data'}, status=status.HTTP_400_BAD_REQUEST)
```

- Library `http` menggunakan method **PUT** untuk pembaruan data.
- Header `Content-Type` memastikan server Django dapat membaca data dalam format JSON.

### 4. **Menghapus Data di Backend (DELETE Request)**

Permintaan **DELETE** digunakan untuk menghapus data, seperti menghapus akun pengguna.

**Kode di Flutter:**

```dart
Future<void> deleteUser(int userId) async {
  final url = Uri.parse('http://127.0.0.1:8000/api/user/$userId/');
  final response = await http.delete(url);

  if (response.statusCode == 204) {
    print('User deleted successfully');
  } else {
    print('Failed to delete user: ${response.statusCode}');
  }
}
```

**Kode di Django (views.py):**

```python
from rest_framework.decorators import api_view
from rest_framework.response import Response
from rest_framework import status

@api_view(['DELETE'])
def delete_user(request, user_id):
    # Hapus data dari database
    return Response({'message': 'User deleted'}, status=status.HTTP_204_NO_CONTENT)
```

- Fungsi `http.delete` lebih sederhana karena tidak membutuhkan body.
- Respons dilakukan untuk memverifikasi keberhasilan penghapusan. (optional)
</details>
<details>
  <summary><h3>3️⃣ Fungsi dari CookieRequest</h3></summary>

### Fungsi dari `CookieRequest`

`CookieRequest` adalah sebuah abstraksi yang digunakan untuk mengelola sesi *user* dalam komunikasi antara aplikasi Flutter dan django. `CookieRequest` berfungsi untuk:

1. **Mengelola Otorisasi dan Autentikasi**  
   - Django menggunakan cookie untuk melacak status login *user* setelah proses autentikasi berhasil. `CookieRequest` menangkap cookie ini dan menggunakannya untuk menjaga status login *user* di sisi klien (Flutter).  
   - Karena cookue sudah ditangkap dengan `CookieRequest`, *user* tidak perlu login setiap kali melakukan *request* ke server setelah login.

2. **Mengirimkan Header Cookie**  
   - `CookieRequest` memastikan bahwa setiap *request* HTTP ke server Django menggunakan header cookie yang sesuai. Hal ini penting untuk mengakses endpoint yang memerlukan otorisasi, seperti mengambil data pribadi atau melakukan perubahan pada data *user*.

3. **Menyimpan Status Sesi**  
   - `CookieRequest` berperan sebagai sebagai pengelola *session* yang akan menyimpan cookie selama aplikasi berjalan. Jika aplikasi dimatikan, status *session* dapat disimpan ke penyimpanan lokal untuk di-reload nanti.

4. **Menyediakan Fitur Logout**  
   - `CookieRequest` juga menangani penghapusan cookie ketika *user* logout, sehingga *session* dihapus baik di sisi server maupun klien.

### Mengapa Instance `CookieRequest` Perlu Dibagikan ke Semua Komponen

Instance `CookieRequest` perlu bersifat global dan dapat diakses oleh semua komponen Flutter supaya *user experience* tetap konsisten di seluruh aplikasi. Fungsi instance `CookieRequest` yang dibagikan ke semua komponen:

1. **Membuat Status *Session* Konsisten**  
   - Semua bagian aplikasi yang memerlukan data dari server membutuhkan status *session* yang sama. Pembagian instance `CookieRequest` ke seluruh komponen, semua *HTTP request* akan dilakukan menggunakan cookie yang sama.

2. **Mencegah Redundansi**  
   - Jika setiap komponen membuat instance `CookieRequest` sendiri, akan terjadi konflik dalam penyimpanan cookie yang akan mengurangi efisiensi, dan meningkatkan kompleksitas debugging.

3. **Peningkatan Keamanan**  
   - Dengan membagikan instance `CookieRequest` ke semua komponen, pengelolaan cookie menjadi lebih terpusat. Pengelolaan cookie yang terpusat akan meminimalkan risiko (misal pengiriman header cookie yang salah atau penyimpanan cookie yang tidak terenkripsi).

4. **Kemudahan Integrasi**  
   - Banyak fitur aplikasi (login otomatis, sinkronisasi data, atau pengelolaan cache) yang bergantung pada cookie yang sama. Instance global membuat semua fitur ini berfungsi dengan baik dan mengurangi kemungkinan konflik.

</details>
<details>
  <summary><h3>4️⃣ Mekanisme pengiriman data di Flutter</h3></summary>

1. **Input Data di Aplikasi Flutter**  
   - *User* mengisi form di aplikasi Flutter dengan widget `TextFormField` yang sudah dibuat dengan field sesuai model yang sudah dibuat di django:
     - **Nama Produk** (`_productName`)
     - **Deskripsi Produk** (`_productDescription`)
     - **Harga Produk** (`_price`)
     - **Jumlah Tersedia** (`_availableQty`)
   - Widget form menggunakan validator untuk memeriksa validitas input (angka positif untuk harga, panjang maksimal string, dsb.).

2. **Klik Tombol "Save"**  
   - Setelah *user* mengisi semua field, *user* dapat menekan tombol **"Save"** jika semua validator terpenuhi.
   - Tombol ini memicu fungsi asynchronous di Flutter untuk mengirimkan data ke server Django.

3. **Persiapan Data untuk Pengiriman**  
   - Fungsi `request.postJson` pada Flutter digunakan untuk membuat HTTP POST request.
   - Data input dari *user* (`_productName`, `_productDescription`, `_price`, dan `_availableQty`) diterjemahkan dalam format JSON menggunakan fungsi `jsonEncode`.

4. **Pengiriman HTTP Request ke Server Django**  
   - Endpoint tujuan adalah `http://127.0.0.1:8000/create-flutter/`.
   - Header request secara otomatis mengandung `Content-Type: application/json` untuk memberi tahu Django bahwa data dikirim dalam format JSON.
   - Payload JSON berisi:
     ```json
     {
       "product_name": "Example Product",
       "price": "100",
       "product_description": "Example Description",
       "available_qty": "10"
     }
     ```

5. **Penerimaan dan Pemrosesan Data di Django**  
   - Fungsi `create_product_flutter` pada Django menerima request POST.
   - Dekorator `@csrf_exempt` memastikan bahwa request dari Flutter tidak memerlukan token CSRF.
   - Request body yang berupa JSON di-parse menggunakan `json.loads(request.body)`.

6. **Validasi dan Penyimpanan Data di Django**  
   - Django membaca data yang diterima dan membuat objek baru `ProductEntry` menggunakan model Django.
   - Field yang diisi adalah:
     - **user**: Otentikasi pengguna diambil dari `request.user`.
     - **product_name**: Data dari `data["product_name"]`.
     - **price**: Data dari `data["price"]` di-casting menjadi integer.
     - **product_description**: Data dari `data["product_description"]`.
     - **available_qty**: Data dari `data["available_qty"]` di-casting menjadi integer.
   - Objek kemudian disimpan ke database dengan `new_product.save()`.

7. **Respon Django ke Flutter**  
   - Jika data berhasil disimpan, Django mengembalikan respons JSON dengan status `200 OK`:
     ```json
     {
       "status": "success"
     }
     ```
   - Jika metode selain POST digunakan, Django mengembalikan respons dengan status `401 Unauthorized`:
     ```json
     {
       "status": "error"
     }
     ```

8. **Pengolahan Respons di Flutter**  
   - Setelah respons diterima, Flutter memproses JSON menggunakan key `response['status']`:
     - Jika status adalah `success`, aplikasi:
       - Menampilkan **SnackBar** dengan pesan "Produk baru berhasil disimpan!".
       - Mengarahkan *user* kembali ke halaman `MyHomePage` dengan `Navigator.pushReplacement`.
     - Jika status adalah `error`, aplikasi:
       - Menampilkan **SnackBar** dengan pesan "Terdapat kesalahan, silakan coba lagi.".

9. ***User* Melihat Data Tersimpan**  
   - Setelah pengiriman sukses, data produk baru sudah tersimpan di database Django.
   - Data ini dapat diambil oleh Flutter melalui endpoint GET untuk ditampilkan dalam aplikasi.

- **Flutter**: *User* mengisi form → Klik Save → JSON dikirim via HTTP POST →  
- **Django**: Menerima JSON → Parsing → Simpan data ke database → Berikan respons JSON →  
- **Flutter**: Terima respons → Tampilkan notifikasi dan navigasi ulang.

</details>
<details>
  <summary><h3>5️⃣ Mekanisme autentikasi di Flutter</h3></summary>

#### **1. Proses Register**

1. **Input Data di Flutter:**
   - *User* memasukkan username, password, dan konfirmasi password melalui form di Flutter (`RegisterPage`).

2. **Mengirim Data ke Django:**
   - Flutter mengirimkan data ke endpoint Django `/auth/register/` menggunakan metode POST.
   - Data dikirim dalam format JSON, berisi `username`, `password1`, dan `password2`.

3. **Django Memproses Permintaan:**
   - Django menerima data melalui fungsi `register(request)`.
   - Data JSON di-*parse* untuk memvalidasi:
     - Apakah password cocok.
     - Apakah username sudah ada di database.
   - Jika valid, Django membuat akun menggunakan `User.objects.create_user`.

4. **Respons dari Django:**
   - Jika pendaftaran berhasil, Django mengembalikan respons JSON:
     ```json
     {
         "username": "username_pengguna",
         "status": "success",
         "message": "User created successfully!"
     }
     ```
   - Jika gagal, Django mengirimkan pesan kesalahan.

5. **Feedback ke Flutter:**
   - Flutter menampilkan pesan sukses atau gagal kepada pengguna.

#### **2. Proses Login**

1. **Input Data di Flutter:**
   - *User* memasukkan `username` dan `password` di form login pada Flutter.

2. **Mengirim Data ke Django:**
   - Flutter mengirimkan data ke endpoint `/auth/login/` menggunakan metode POST.
   - Data dikirim dalam format form-urlencoded (bukan JSON) karena Django membaca `request.POST`.

3. **Django Memproses Permintaan:**
   - Django menerima data login melalui fungsi `login(request)`:
     - Django mencoba mengotentikasi pengguna dengan `authenticate(username=username, password=password)`.
     - Jika autentikasi berhasil:
       - Django memanggil `auth_login(request, user)` untuk membuat sesi login.
       - Django mengirim respons JSON:
         ```json
         {
             "username": "username_pengguna",
             "status": true,
             "message": "Login sukses!"
         }
         ```
     - Jika gagal:
       - Django mengirim respons kesalahan:
         ```json
         {
             "status": false,
             "message": "Login gagal, periksa kembali email atau kata sandi."
         }
         ```

4. **Feedback di Flutter:**
   - Jika berhasil:
     - Flutter menyimpan status login dan mengarahkan pengguna ke halaman `MyHomePage` (menu utama).
     - Pesan sukses ditampilkan menggunakan `SnackBar`.
   - Jika gagal:
     - Pesan kesalahan ditampilkan dalam `AlertDialog`.

#### **3. Proses Logout**

1. **Trigger Logout di Flutter:**
   - *User* menekan tombol logout di Flutter.

2. **Mengirim Permintaan ke Django:**
   - Flutter mengirim permintaan GET/POST ke endpoint `/auth/logout/`.

3. **Django Memproses Permintaan:**
   - Django memanggil `auth_logout(request)` untuk menghapus sesi pengguna.
   - Django mengirimkan respons JSON:
     ```json
     {
         "username": "username_pengguna",
         "status": true,
         "message": "Logout berhasil!"
     }
     ```

4. **Feedback di Flutter:**
   - Flutter menampilkan pesan sukses dan mengarahkan pengguna kembali ke halaman login.

</details>
<details>
  <summary><h3>6️⃣ Implementasi Integrasi Layanan Web Django dengan Aplikasi Flutter</h3></summary>
  
#### **1. Membuat Sistem Autentikasi di Flutter**

1. Saya membuat django-app bernama `authentication` untuk memisahkan fungsi autentikasi ke dalam modul terpisah supaya lebih terstruktur dan mudah dikelola dengan menjalankan perintah:  
     ```bash
     python manage.py startapp authentication
     ```

2. Saya menambahkan `authentication` ke `INSTALLED_APPS` di proyek Django agar Django mengenali aplikasi ini dan kode di dalamnya dapat digunakan

3. Saya menginstal `django-cors-headers` yang memungkinkan Django menangani permintaan dari domain berbeda (CORS). Dengan demikian, flutter (yang berjalan di domain berbeda) berkomunikasi dengan backend Django.  Saya juga menambahkan juga `django-cors-headers` ke file `requirements.txt` untuk dokumentasi dependensi.

4. Saya menambahkan konfigurasi CORS ke `settings.py` agar Django mengizinkan akses lintas domain dan menangani cookie secara aman. Hal ini memastikan autentikasi antara Flutter dan Django dapat bekerja meskipun berasal dari domain berbeda dengan memambahkan ke `settings.py`:
     ```python
     CORS_ALLOW_ALL_ORIGINS = True
     CORS_ALLOW_CREDENTIALS = True
     CSRF_COOKIE_SECURE = True
     SESSION_COOKIE_SECURE = True
     CSRF_COOKIE_SAMESITE = 'None'
     SESSION_COOKIE_SAMESITE = 'None'
     ```

5. Saya menambahkan `corsheaders` ke `INSTALLED_APPS` dan `MIDDLEWARE` untuk mengaktifkan dan mengatur middleware CORS di Django.  Hal ini memastikan setiap request ke Django melalui validasi CORS sebelum diproses.  
     - Tambahkan ke `INSTALLED_APPS`:  
       ```python
       INSTALLED_APPS = [
           ...
           'corsheaders',
       ]
       ```
     - Tambahkan middleware:  
       ```python
       MIDDLEWARE = [
           'corsheaders.middleware.CorsMiddleware',
           'django.middleware.common.CommonMiddleware',
           ...
       ]
       ```

6. Saya menambahkan `10.0.2.2` ke `ALLOWED_HOSTS` untuk emulator Android sehingga alamat localhost emulator Android terdaftar ke host yang diizinkan Django. Dengan demikian, flutter (yang berjalan di emulator) dapat terhubung ke server Django di komputer lokal.  

7. Saya membuat metode `login` di `authentication/views.py` untuk memproses permintaan login dari Flutter. Fungsi ini akan memvalidasi kredensial pengguna dan memberikan respons sesuai status autentikasi.  

8. Saya membuat `urls.py` di folder `authentication` untuk menentukan endpoint untuk fungsi `login`. URL ini yang akan digunakan oleh Flutter untuk mengakses login API.  

9. Saya menambahkan endpoint `auth/` ke `urls.py` utama untuk menghubungkan URL aplikasi `authentication` ke proyek utama.  

10. Saya memastikan Django dapat menerima request dari Flutter menggunakan URL emulator (`http://10.0.2.2`) untuk menghubungkan Flutter ke Django.  

11. Selanjutnya, saya menginstall package `provider` untuk state management yang memungkinkan objek seperti `CookieRequest` dibagikan ke seluruh aplikasi.  
    Package `pbp_django_auth` akan menangani autentikasi dengan Django (termasuk pengiriman request HTTP (GET/POST)) dan pengelolaan cookie.

12. Saya memodifikasi root eidget dengan mengubah 
  ```dart
  home: MyHomePage(),
  ```
menjadi:
  ```dart
  home: const LoginPage(),
  ```
  Root widget diubah untuk bisa menggunakan state management dengan menambahkan `Provider` sebagai wrapper. `CookieRequest` digunakan untuk mengelola autentikasi user, seperti login dan logout, dengan Django backend.

13. Saya membuat halaman login untuk menerima input username dan password dari pengguna. Form ini memanfaatkan `CookieRequest` untuk mengirimkan data ke endpoint `/auth/login/` Django backend.
14. Saya melakukan penyesuaian pada django backend dengan modifikasi file `views.py`, menambahkan endpoint `/register/` untuk meng-*handle* pendaftaran user baru yang mencakup:
    - Memeriksa kecocokan password.
    - Memastikan username belum digunakan.
    - Membuat akun baru jika validasi berhasil.

15. Saya membuat halaman register di `register.dart` untuk *user* membuat akun baru. Mirip dengan halaman login, tetapi form ini mencakup field tambahan untuk konfirmasi password.

#### **2. Fetch Data dari Django**

1. Saya menambahkan dependensi `http` pada proyek Flutter untuk menambahkan package `http`, yang dibutuhkan untuk melakukan HTTP request dari aplikasi Flutter ke backend Django.

2. Saya memberikan izin akses internet pada proyek Flutter dengan mengedit file `android/app/src/main/AndroidManifest.xml` untuk menambahkan izin akses internet dengan menyisipkan kode `<uses-permission android:name="android.permission.INTERNET" />`.

3. Saya membuat halaman baru untuk fetch data di Flutter, membuat file baru bernama `list_moodentry.dart` di direktori `lib/screens`. File ini akan digunakan untuk mengambil data dari Django dan menampilkannya di aplikasi Flutter.

4. Saya mengimpor library yang dibutuhkan pada file `list_moodentry.dart` dan modul proyek seperti `models/mood_entry.dart` untuk melakukan pengelolaan data dan rendering UI.

5. Saya membuat fungsi `fetchMood` untuk mengambil data dari Django di dalam file `list_moodentry.dart`, yang menggunakan package `http` untuk mengirimkan GET request ke endpoint Django. Fungsi ini men-*decode* respons JSON dan mengonversinya menjadi daftar objek `MoodEntry`.

6. Saya membuat UI untuk menampilkan daftar mood dan menambahkan kode di dalam widget `FutureBuilder` untuk menangani data yang diambil kemudian menampilkan daftar mood berdasarkan data yang diterima.

7. Saya menambahkan menu navigasi ke halaman daftar mood dengan mengedit file `widgets/left_drawer.dart`, menambahkan `ListTile` baru untuk mengarahkan *user* ke halaman `MoodEntryPage` dengan menggunakan `Navigator.push`.

8. Saya memperbarui fungsi tombol navigasi utama `widgets/mood_card.dart`, menambahkan logika pada tombol "Lihat Mood" agar mengarahkan *user* ke halaman `MoodEntryPage`.

9. Saya menjalankan aplikasi untuk menguji fungsi integrasi, memastikan data `MoodEntry` yang ditambahkan melalui situs web Django berhasil diambil dan ditampilkan dengan benar di aplikasi Flutter.


#### **3. Mengintegrasikan Form pada FLutter dengan Django**

1. Saya membuat endpoint Django untuk autentikasi login, register, dan logout. Fungsi-fungsi seperti `login`, `register`, dan `logout` di Django menerima request dari Flutter, memprosesnya, dan mengembalikan respons dalam format JSON.

2. Saya menambahkan URL routing pada `urls.py` dan memastikan Flutter dapat mengakses fungsi view di Django.

3. Saya menambahkan logika pengiriman data login di Flutter menggunakan `CookieRequest`. Flutter mengirimkan username dan password ke endpoint login Django menggunakan method POST. Django memverifikasi data dan mengembalikan status autentikasi.

4. Saya menangani respons autentikasi di Flutter. Jika login berhasil, Flutter menampilkan pesan sukses dan berpindah ke halaman menu. Jika gagal, pesan error muncul di dialog atau snackbar.

5. Saya memastikan session atau token disimpan di Flutter untuk autentikasi berkelanjutan. `CookieRequest` akan menyimpan cookies atau session sehingga user tidak perlu login ulang setiap kali membuka aplikasi.

6. Kemudian, saya membuat view Django untuk menerima data dari Flutter. Fungsi `create_mood_flutter` memproses data JSON yang dikirim Flutter, membuat instance model, dan menyimpannya ke database.

7. Saya menambahkan endpoint untuk view di `urls.py`: `path('create-flutter/', create_mood_flutter, name='create_mood_flutter')` untuk menghubungkan fungsi Django dengan Flutter.

8. Saya menghubungkan halaman form di Flutter dengan `CookieRequest`. `context.watch<CookieRequest>()` memungkinkan Flutter mengakses cookies atau session untuk otentikasi request.

9. Saya menyesuaikan logika pengiriman data di tombol submit Flutter menggunakan method POST untuk mengirim data form (mood, intensitas, dll.) ke endpoint Django. Data dikemas dalam JSON.

10. Saya menangani respons Django di Flutter. Jika Django mengembalikan status sukses, saya menampilkan snackbar di Flutter dan mengarahkan user kembali ke halaman utama. Jika gagal, pesan error muncul.


#### **4. Mengimplementasikan Fungsi Logout**

**Langkah pada Django**  
1. Saya membuat metode view untuk logout. Pada `authentication/views.py`, saya menambahkan fungsi `logout`. Fungsi ini memanggil `auth_logout` untuk menghapus sesi pengguna yang aktif. Jika berhasil, program mengembalikan respons JSON dengan pesan "Logout berhasil," atau pesan error jika gagal.

2. Saya menambahkan path baru untuk logout. Di `authentication/urls.py`, saya menambahkan path `logout/` yang menghubungkan URL ini dengan fungsi view logout. Hal ini memungkinkan Django menerima request logout dari Flutter.

**Langkah pada Flutter**  
3. Saya membuka file yang menangani logout di Flutter. Di `lib/widgets/mood_card.dart`, saya mempersiapkan integrasi dengan fitur logout di backend Django.

4. Saya mengubah perintah `onTap` menjadi `onTap: () async {...}`. Hal ini memastikan bahwa fungsi logout dijalankan secara asinkron. Saya menggunakan `async` untuk menangani proses komunikasi dengan server.

5. Saya menambahkan logika untuk request logout. Di dalam `async {...}`, saya menambahkan request logout ke endpoint Django menggunakan `request.logout`. Setelah server merespons, saya menangani pesan keberhasilan atau kegagalan logout.  
     - Jika logout berhasil, saya menunjukkan *Snackbar* dengan pesan "Sampai jumpa," dan menavigasi ulang pengguna ke halaman login.  
     - Jika gagal, saya tetap menunjukkan *Snackbar* dengan pesan error.

</details>

</details>