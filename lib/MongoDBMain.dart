import 'dart:convert';

import 'package:mongo_dart/mongo_dart.dart';

MongoDbModel mongoDbModelFromJson(String str) => MongoDbModel.fromJson(json.decode(str));
String mongoDbModeltoJson(MongoDbModel data) => json.encode(data.toJson());

class MongoDbModel{


  MongoDbModel({

    required this.Block,
    required this.District,
    required this.Panchayat,
    required this.Stage,
    required this.State,
    required this.AssetCategory,
    required this.AssetSub,
    required this.workCode,
    required this.mseName,
    required this.accuracy,
    required this.time,
    required this.img,
});

  //ObjectId id;
  String Block;
  String District;
  String Panchayat;
  String Stage;
  String State;
  String AssetCategory;
  String AssetSub;
  String workCode;
  String accuracy;
  String mseName;
  String time;
  String img;

  factory MongoDbModel.fromJson(Map<String, dynamic> json) => MongoDbModel(

      Block: json["Block"],
      District :json["District"],
      Panchayat: json["Panchayat"],
      Stage: json["Stage"],
      State: json["State"],
      AssetCategory: json["AssetCategory"],
      AssetSub: json["AssetSub"],
      mseName: json["mseName"],
      workCode: json["workCode"],
      accuracy: json["accuracy"],
      time: json["time"],
      img: json["img"],
  );

  Map<String, dynamic> toJson() => {

    "Block" : Block,
    "District" : District,
    "Panchayat" : Panchayat,
    "Stage" : Stage,
    "State" : State,
    "AssetCategory" : AssetCategory,
    "AssetSub" : AssetSub,
    "mseName" : mseName,
    "workCode" : workCode,
    "accuracy" : accuracy,
    "time" : time,
    "img" : img,
  };



}