import 'package:appdesa/style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class PelayananRequest extends StatefulWidget {
  @override
  _PelayananRequestState createState() => _PelayananRequestState();
}

class _PelayananRequestState extends State<PelayananRequest> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _nikController = TextEditingController();
  final _nohpController = TextEditingController();
  final _pekerjaanController = TextEditingController();

  _launchURL() async {
    dynamic phone = "+6282346977233";
    var whatsappUrl =
        "https://wa.me/$phone?text=Assalamualaikum Request Layanan Desa , \n Nama : ${_nameController.text}";
    if (await canLaunch(whatsappUrl)) {
      await launch(whatsappUrl);
    } else {
      throw 'Could not launch $whatsappUrl';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form Request'),
      ),
      backgroundColor: bgColor,
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(color: Colors.white),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 35.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: <Widget>[
                      Text(
                        "Tolong Masukan Data Dengan Benar",
                        style: GoogleFonts.montserrat(
                            color: Colors.black, fontSize: 20.0),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        "Permohonan Anda Akan Kami Direct Langsung Ke \n Admin",
                        style: GoogleFonts.montserrat(
                            color: Colors.black, fontSize: 20.0),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 35.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                      hintText: 'Masukan Nama',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                    cursorColor: Colors.yellowAccent,
                    controller: _nameController,
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Tolong di Isi';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                      hintText: 'Masukan Nik',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                    cursorColor: Colors.yellowAccent,
                    controller: _nikController,
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Tolong di Isi';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                      hintText: 'Masukan no hp',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                    cursorColor: Colors.yellowAccent,
                    controller: _nohpController,
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Tolong di Isi';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                      hintText: 'Pekerjaan',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                    cursorColor: Colors.yellowAccent,
                    controller: _pekerjaanController,
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Tolong di Isi';
                      }
                      return null;
                    },
                  ),
                ),
                Center(
                  child: RaisedButton(
                    color: Colors.green,
                    elevation: 6.0,
                    onPressed: () {
                      if (_formKey.currentState.validate()) {
                        _launchURL();
                      }
                    },
                    child: Text("Kirim"),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
