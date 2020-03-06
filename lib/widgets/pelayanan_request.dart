import 'package:appdesa/style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PelayananRequest extends StatefulWidget {
  @override
  _PelayananRequestState createState() => _PelayananRequestState();
}

class _PelayananRequestState extends State<PelayananRequest> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _nameController;
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
                  child: Text(
                    "Tolong Masukan Data Dengan Benar",
                    style: GoogleFonts.montserrat(color: Colors.black , fontSize: 20.0),
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
                      hintText: 'Masukan no hp',
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
                      hintText: 'Pekerjaan',
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
                Center(
                  child: RaisedButton(
                    color: Colors.green,
                    elevation: 6.0,
                    onPressed: () {
                      if (_formKey.currentState.validate()) {
                        Scaffold.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Wait'),
                            duration: Duration(milliseconds: 200),
                            backgroundColor: Colors.white,
                          ),
                        );
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
