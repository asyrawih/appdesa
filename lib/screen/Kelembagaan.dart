import 'package:appdesa/style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 24.0),
          child: Column(
            children: <Widget>[
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Kelembagaan',
                    style:
                        GoogleFonts.roboto(color: Colors.white, fontSize: 24.0),
                  ),
                  Icon(
                    Icons.arrow_downward,
                    color: Colors.white,
                    size: 23.0,
                  )
                ],
              ),
              SizedBox(height: 10.0),
              _ListContainer(
                nama: 'Hanan Asyrawi',
                jabatan: 'Kepala Desa',
                gambar:
                    'https://images.unsplash.com/photo-1583096985230-7cbff05f1bba?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=755&q=80',
              ),
              SizedBox(height: 10.0),
              _ListContainer(
                nama: 'Hary Sasmito',
                jabatan: 'Sekdes',
                gambar:
                    'https://images.pexels.com/photos/3722173/pexels-photo-3722173.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260',
              ),
              SizedBox(height: 10.0),
               _ListContainer(
                nama: 'Fadly Irawan',
                jabatan: 'CS Cleaning Service',
                gambar:
                    'https://images.pexels.com/photos/3441119/pexels-photo-3441119.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260',
              ),
              SizedBox(height: 10.0),
            ],
          ),
        ),
      ),
    );
  }
}

class _ListContainer extends StatelessWidget {
  final String nama;
  final String alamat;
  final String jabatan;

  final String gambar;

  const _ListContainer(
      {Key key, this.nama, this.alamat, this.jabatan, this.gambar})
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
          // ! Gambar Container
          Container(
            height: 98.00,
            width: 120.00,
            decoration: BoxDecoration(
                color: Color(0xffffffff),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10.00),
                  bottomRight: Radius.circular(10.00),
                ),
                image: DecorationImage(
                    image: NetworkImage(gambar), fit: BoxFit.cover)),
          )
        ],
      ),
    );
  }
}
