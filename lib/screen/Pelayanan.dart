import 'package:appdesa/model/Pelayanan_model.dart';
import 'package:appdesa/model/syrat_model.dart';
import 'package:appdesa/style.dart';
import 'package:appdesa/widgets/pelayanan_request.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Pelayanan extends StatefulWidget {
  @override
  _PelayananState createState() => _PelayananState();
}

class _PelayananState extends State<Pelayanan> {
  static final List<Syrat> syrat = [
    Syrat('Syrat 1 ', 'Penjelasan'),
    Syrat('Syrat 1 ', 'Penjelasan'),
  ];

  final List<PelayananModel> pelayanan = [
    PelayananModel(
      judul: 'Surat Keterangan Pindah',
      biaya: 'Gratis',
      waktu: '10 Menit',
      syrat: syrat,
    ),
    PelayananModel(
      judul: 'Surat Keterangan Nikah',
      biaya: 'Gratis',
      waktu: '10 Menit',
      syrat: syrat,
    ),
    PelayananModel(
      judul: 'Surat Keterangan Hewan',
      biaya: 'Gratis',
      waktu: '10 Menit',
      syrat: syrat,
    ),
    PelayananModel(
      judul: 'Surat Keterangan Waris dan Kuasa Waris',
      biaya: 'Gratis',
      waktu: '10 Menit',
      syrat: syrat,
    ),
    PelayananModel(
      judul: 'Surat Pernyataan Hibah',
      biaya: 'Gratis',
      waktu: '10 Menit',
      syrat: syrat,
    ),
    PelayananModel(
      judul: 'Surat Pernyataan Jual Beli',
      biaya: 'Gratis',
      waktu: '10 Menit',
      syrat: syrat,
    ),
    PelayananModel(
      judul: 'Surat Pernyataan Kuasa',
      biaya: 'Gratis',
      waktu: '10 Menit',
      syrat: syrat,
    ),
    PelayananModel(
      judul: 'Surat Pernyataan Tanggung jawab \n Mutlak (SPTM)',
      biaya: 'Gratis',
      waktu: '10 Menit',
      syrat: syrat,
    ),
    PelayananModel(
      judul: 'Surat Permohonan Kartu identitas anak',
      biaya: 'Gratis',
      waktu: '10 Menit',
      syrat: syrat,
    ),
    PelayananModel(
      judul: 'Surat permohonan Kartu keluarga',
      biaya: 'Gratis',
      waktu: '10 Menit',
      syrat: syrat,
    ),
    PelayananModel(
      judul: 'Surat Permohonan KTP',
      biaya: 'Gratis',
      waktu: '10 Menit',
      syrat: syrat,
    ),
    PelayananModel(
      judul: 'Surat keterangan Hilang',
      biaya: 'Gratis',
      waktu: '10 Menit',
      syrat: syrat,
    ),
    PelayananModel(
      judul: 'Surat keterangan usaha',
      biaya: 'Gratis',
      waktu: '10 Menit',
      syrat: syrat,
    ),
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        title:
            Text('Pelayanan', style: GoogleFonts.roboto(color: Colors.white)),
      ),
      body: Row(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              itemCount: pelayanan.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => PelayananRequest(),
                      ),
                    );
                  },
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: _ListContainer(
                        judul: pelayanan[index].judul,
                        waktu: pelayanan[index].waktu,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _ListContainer extends StatelessWidget {
  final String judul;
  final String biaya;
  final String waktu;

  const _ListContainer({Key key, this.judul, this.biaya, this.waktu})
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
                  judul,
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
                  'Waktu $waktu',
                  style: TextStyle(
                    fontFamily: "Muli",
                    fontSize: 12,
                    color: Color(0xffffffff),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
