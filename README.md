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
  <summary><h3>4️⃣ Tema (theme) dalam Aplikasi Flutter</h3><summary>

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