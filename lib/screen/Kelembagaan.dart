import 'package:appdesa/style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:line_awesome_icons/line_awesome_icons.dart';

class Kelambagaan extends StatelessWidget {
  final ScrollController _controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              'Kelambagaan',
              style: GoogleFonts.roboto(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.0),
            ),
            Icon(Icons.info)
          ],
        ),
      ),
      body: SingleChildScrollView(
        reverse: true,
        controller: _controller,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
          child: Column(
            children: <Widget>[
              SizedBox(height: 20.0),
              // * Section Aparat Desa
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Aparat Desa',
                    style:
                        GoogleFonts.roboto(color: Colors.white, fontSize: 24.0),
                  ),
                  Icon(
                    Icons.arrow_downward,
                    color: Colors.white,
                    size: 23.0,
                  ),
                ],
              ),
              SizedBox(height: 35.0),
              Column(
                children: <Widget>[
                  _ListContainer(
                      nama: 'Sunarsono',
                      jabatan: 'KEPALA DESA',
                      gambar: "assets/aparatdesa/1.jpg"),
                  SizedBox(height: 10.0),
                  _ListContainer(
                      nama: 'Pairin S.pd',
                      jabatan: 'Sekretaris',
                      gambar: "assets/aparatdesa/4.jpg"),
                  SizedBox(height: 10.0),
                  _ListContainer(
                      nama: 'Sagino',
                      jabatan: 'KAUR UMUR',
                      gambar: "assets/aparatdesa/10.jpg"),
                  SizedBox(height: 10.0),
                  _ListContainer(
                      nama: 'Rahman Hadianto',
                      jabatan: 'KAUR PERANCANGAN',
                      gambar: "assets/aparatdesa/12.jpg"),
                  SizedBox(height: 10.0),
                  _ListContainer(
                      nama: 'SRI PUJAWATI',
                      jabatan: 'KAUR Keuangan',
                      gambar: "assets/aparatdesa/6.jpg"),
                  SizedBox(height: 10.0),
                  _ListContainer(
                      nama: 'SUYATI',
                      jabatan: 'KASI PEMERINTAHAN',
                      gambar: "assets/aparatdesa/3.jpg"),
                  SizedBox(height: 10.0),
                  _ListContainer(
                      nama: 'Bambang Hadi Widodo',
                      jabatan: 'KASI KESEJAHTRAAN',
                      gambar: "assets/aparatdesa/11.jpg"),
                  SizedBox(height: 10.0),
                  _ListContainer(
                      nama: 'Purwadi , ST',
                      jabatan: 'KASI PELAYANAN',
                      gambar: "assets/aparatdesa/7.jpg"),
                  SizedBox(height: 10.0),
                  _ListContainer(
                      nama: 'Ibrahmim Asibe',
                      jabatan: 'KADUS SIDOREJO',
                      gambar: "assets/aparatdesa/9.jpg"),
                  SizedBox(height: 10.0),
                  _ListContainer(
                      nama: 'Watiman',
                      jabatan: 'KADUS SIDODADI',
                      gambar: "assets/aparatdesa/8.jpg"),
                  SizedBox(height: 10.0),
                  _ListContainer(
                      nama: 'Manan',
                      jabatan: 'KADUS PONOROGO',
                      gambar: "assets/aparatdesa/15.jpg"),
                  SizedBox(height: 10.0),
                  _ListContainer(
                      nama: 'Suyati',
                      jabatan: 'plt KADUS Tuban',
                      gambar: "assets/aparatdesa/3.jpg"),
                  SizedBox(height: 10.0),
                  _ListContainer(
                      nama: 'SISWAHYU',
                      jabatan: 'STAF Keuangan',
                      gambar: "assets/aparatdesa/5.jpg"),
                  SizedBox(height: 10.0),
                  _ListContainer(
                      nama: 'HERI SADYO',
                      jabatan: 'STAF Aset Desa',
                      gambar: "assets/aparatdesa/14.jpg"),
                  SizedBox(height: 10.0),
                  _ListContainer(
                      nama: 'Musirah',
                      jabatan: 'STAF Perpustakaan',
                      gambar: "assets/aparatdesa/2.jpg"),
                  SizedBox(height: 10.0),
                  _ListContainer(
                      nama: 'Halim Suwetno , ST ',
                      jabatan: 'STAF Perpustakaan',
                      gambar: "assets/aparatdesa/13.jpg"),
                ],
              ),
              // * Section BPD
              SizedBox(height: 15.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'BPD',
                    style:
                        GoogleFonts.roboto(color: Colors.white, fontSize: 24.0),
                  ),
                  Icon(
                    Icons.arrow_downward,
                    color: Colors.white,
                    size: 23.0,
                  ),
                ],
              ),
              SizedBox(height: 25.0),
              // ! Container Bpd
              Column(
                children: <Widget>[
                  _ListContainer(
                      nama: 'Dasiman',
                      jabatan: 'Ketua BPD ',
                      gambar: "assets/lembaga/5.jpg"),
                  SizedBox(height: 10.0),
                  _ListContainer(
                      nama: 'Tabri',
                      jabatan: 'Wakil Ketua ',
                      gambar: "assets/lembaga/2.jpg"),
                  SizedBox(height: 10.0),
                  _ListContainer(
                      nama: 'Rahmawati',
                      jabatan: 'Sekretaris',
                      gambar: "assets/lembaga/4.jpg"),
                  SizedBox(height: 10.0),
                  _ListContainer(
                      nama: 'Jumadi',
                      jabatan: 'Bidang I BPD ',
                      gambar: "assets/lembaga/1.jpg"),
                  SizedBox(height: 10.0),
                  _ListContainer(
                      nama: 'Safri Nammin',
                      jabatan: 'Bidang II BPD ',
                      gambar: "assets/lembaga/3.jpg"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ListContainer extends StatelessWidget {
  final String nama;
  final String jabatan;
  final String gambar;

  const _ListContainer({Key key, this.nama, this.jabatan, this.gambar})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 98.00,
      width: 364.00,
      decoration: BoxDecoration(
        color: Color(0xff283f4d),
        boxShadow: [
          BoxShadow(
            offset: Offset(0.00, 3.00),
            color: Color(0xff000000).withOpacity(0.16),
            blurRadius: 50,
          ),
        ],
        borderRadius: BorderRadius.circular(10.00),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  nama,
                  style: TextStyle(
                    fontFamily: "Muli",
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                    color: Color(0xffffffff),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text(
                  jabatan,
                  style: TextStyle(
                    fontFamily: "Muli",
                    fontSize: 12,
                    color: Color(0xffffffff),
                  ),
                ),
              )
            ],
          ),
          Container(
            height: 98.00,
            width: 100,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15.0),
              image:
                  DecorationImage(image: AssetImage(gambar), fit: BoxFit.fill),
            ),
          ),
        ],
      ),
    );
  }
}
