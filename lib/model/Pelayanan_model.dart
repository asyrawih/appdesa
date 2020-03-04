import 'package:appdesa/model/syrat_model.dart';

class PelayananModel {
  final String judul;
  List<Syrat> syrat;
  final String waktu;
  final String biaya;

  PelayananModel({this.judul, this.waktu, this.biaya, this.syrat});
}
