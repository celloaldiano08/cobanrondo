import 'package:flutter/material.dart';

void main() {
  runApp(Coba());
}

class Coba extends StatelessWidget {
  Coba({super.key});

  Widget animasi({
    required Widget child,
  }) {
    return TweenAnimationBuilder<double>(
      duration: Duration(milliseconds: 700),
      tween: Tween(begin: 0.0, end: 1.0),
      builder: (context, value, child) {
        return Opacity(
          opacity: value,
          child: Transform.translate(
            offset: Offset(0, 20 * (1 - value)),
            child: child,
          ),
        );
      },
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // BACKGROUND BIRU PASTEL
        backgroundColor: Color(0xffe9e7fb),

        appBar: AppBar(
          title: Text('Coban Rondo'),
          backgroundColor: Color(0xffc2d0f6),
          foregroundColor: Color(0xff5e5489),
        ),

        body: SingleChildScrollView(
          child: Column(
            children: [
              // =========================
              // FOTO
              // =========================
              Container(
                width: double.infinity,
                child: Image.asset(
                  'assets/cobanrondo.jpeg',
                  height: 250,
                  fit: BoxFit.cover,
                ),
              ),

              // =========================
              // JUDUL
              // =========================
              animasi(
                child: Container(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    'Sejarah Singkat Coban Rondo',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff5e5489),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),

              // =========================
              // SEJARAH
              // =========================
              animasi(
                child: Container(
                  padding: EdgeInsets.fromLTRB(16, 0, 16, 20),
                  child: Text(
                    'Air Terjun Coban Rondo merupakan salah satu destinasi wisata alam yang terletak di Desa Pandesari, Kecamatan Pujon, Kabupaten Malang, Provinsi Jawa Timur. Air terjun ini berada di kawasan lereng Gunung Kawi dan menjadi salah satu objek wisata alam terkenal di Malang. '
                    'Air Terjun Coban Rondo memiliki ketinggian sekitar 84 meter dan berada pada ketinggian sekitar 1.135 meter di atas permukaan laut (mdpl). Sumber airnya berasal dari mata air Cemoro Dudo yang berada di lereng Gunung Kawi. Debit airnya mencapai sekitar 150 liter per detik pada musim hujan dan 90 liter per detik pada musim kemarau. '
                    'Nama Coban Rondo berasal dari bahasa Jawa, yaitu coban yang berarti air terjun dan rondo yang berarti janda. Nama tersebut berkaitan dengan legenda Dewi Anjarwati dari Gunung Kawi yang menikah dengan Raden Baron Kusuma dari Gunung Anjasmoro. Menurut cerita rakyat, setelah terjadi pertarungan antara Raden Baron Kusuma dan Joko Lelono, keduanya gugur sehingga Dewi Anjarwati menjadi seorang janda. Konon, tempat Dewi Anjarwati menunggu suaminya tersebut kemudian dikenal dengan nama Coban Rondo. '
                    'Air Terjun Coban Rondo mulai dikenal sebagai objek wisata sejak tahun 1980. Kawasan ini dikelola sebagai wisata alam yang berada dalam wilayah Perum Perhutani Malang. Lingkungan sekitarnya masih memiliki pepohonan yang rindang, kawasan hutan, serta udara pegunungan yang sejuk sehingga memberikan suasana alami bagi para pengunjung. '
                    'Tidak hanya menawarkan keindahan air terjun, kawasan Coban Rondo juga menyediakan berbagai aktivitas wisata dan fasilitas menarik, seperti taman labirin, area berkemah, jogging track, sepeda gunung, serta berbagai wahana rekreasi. Keindahan alam, suasana yang sejuk, dan legenda yang melekat menjadikan Coban Rondo sebagai salah satu destinasi wisata yang menarik untuk dikunjungi.',
                    style: TextStyle(
                      fontSize: 16,
                      height: 1.5,
                      color: Color(0xff5e5489),
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ),

              // =========================
              // LOKASI DAN KONTAK
              // =========================
              animasi(
                child: Container(
                  margin: EdgeInsets.all(16),
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Color(0xffebebfd),
                    border: Border.all(
                      color: Color(0xff473f66),
                      width: 1.5,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // =========================
                      // LOKASI
                      // =========================
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Lokasi',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff473f66),
                              ),
                            ),
                            SizedBox(height: 8),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.location_on,
                                  size: 22,
                                  color: Color(0xff473f66),
                                ),
                                SizedBox(width: 8),
                                Expanded(
                                  child: Text(
                                    'Coban Rondo Waterfall\n'
                                    'Desa Pandesari,\n'
                                    'Kecamatan Pujon,\n'
                                    'Kabupaten Malang,\n'
                                    'Jawa Timur',
                                    style: TextStyle(
                                      fontSize: 14,
                                      height: 1.5,
                                      color: Color(0xff5e5489),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),

                      // =========================
                      // GARIS PEMISAH
                      // =========================
                      Container(
                        height: 150,
                        width: 1,
                        color: Color(0xff473f66),
                        margin: EdgeInsets.symmetric(horizontal: 16),
                      ),

                      // =========================
                      // CONTACT
                      // =========================
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Contact Saya',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff473f66),
                              ),
                            ),

                            SizedBox(height: 12),

                            // WHATSAPP
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.phone,
                                  size: 20,
                                  color: Color(0xff473f66),
                                ),
                                SizedBox(width: 8),
                                Expanded(
                                  child: Text(
                                    '085196996368',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Color(0xff5e5489),
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            SizedBox(height: 12),

                            // GARIS PEMISAH
                            Container(
                              height: 1,
                              color: Color(0xff473f66),
                            ),

                            SizedBox(height: 12),

                            // EMAIL
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.email,
                                  size: 20,
                                  color: Color(0xff473f66),
                                ),
                                SizedBox(width: 8),
                                Expanded(
                                  child: Text(
                                    'celloaldiano08@gmail.com',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Color(0xff5e5489),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
