class AsalsModel {
  bool? success;
  String? massage;
  List<Data>? data;

  AsalsModel({this.success, this.massage, this.data});

  AsalsModel.fromJson(Map<String, dynamic> json) {
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
  int? id;
  String? kotaAsal;
  String? createdAt;
  String? updatedAt;

  Data({this.id, this.kotaAsal, this.createdAt, this.updatedAt});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    kotaAsal = json['kota_asal'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['kota_asal'] = this.kotaAsal;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
