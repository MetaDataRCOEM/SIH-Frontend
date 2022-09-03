import 'dart:developer';
import 'package:mongo_dart/mongo_dart.dart';
import 'package:Mnrega/dbHelper/constant.dart';

class MongoDatabase {
  static var db, userCollection;
  static connect() async {
    db = await Db.create(MONGO_CONN_URL);
    await db.open();
    inspect(db);
    userCollection = db.collection(USER_COLLECTION);
  }

  static Future<List<Map<String, dynamic>>> getQueryData(
      String state, String stage) async {
    print(stage);
    print(state);
    final data = userCollection
        .find(where.eq("Stage", stage).eq("State", state))
        .toList();
    return data;
  }

  static Future<List<Map<String, dynamic>>> getData() async {
    final arrData = await userCollection.find().toList();
    return arrData;
  }
}
