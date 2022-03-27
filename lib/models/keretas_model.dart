class KeretasModel {
  bool? success;
  String? massage;
  List<Data>? data;

  KeretasModel({this.success, this.massage, this.data});

  KeretasModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    massage = json['massage'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    data['massage'] = this.massage;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String? nomorPolisi;
  String? namaKereta;
  String? tanggalBerangkat;
  String? kotaAsal;
  String? kotaTujuan;
  int? harga;

  Data(
      {this.nomorPolisi,
      this.namaKereta,
      this.tanggalBerangkat,
      this.kotaAsal,
      this.kotaTujuan,
      this.harga});

  Data.fromJson(Map<String, dynamic> json) {
    nomorPolisi = json['nomor_polisi'];
    namaKereta = json['nama_kereta'];
    tanggalBerangkat = json['tanggal_berangkat'];
    kotaAsal = json['kota_asal'];
    kotaTujuan = json['kota_tujuan'];
    harga = json['harga'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['nomor_polisi'] = this.nomorPolisi;
    data['nama_kereta'] = this.namaKereta;
    data['tanggal_berangkat'] = this.tanggalBerangkat;
    data['kota_asal'] = this.kotaAsal;
    data['kota_tujuan'] = this.kotaTujuan;
    data['harga'] = this.harga;
    return data;
  }
}
