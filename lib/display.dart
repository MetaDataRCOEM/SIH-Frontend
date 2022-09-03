import 'package:flutter/material.dart';
import 'package:Mnrega/MongoDBMain.dart';
import 'package:Mnrega/dbHelper/mongodb.dart';

class MongoDbDisplay extends StatefulWidget {
  MongoDbDisplay({Key? key}) : super(key: key);

  @override
  _MongoDbDisplayState createState() => _MongoDbDisplayState();
}

class _MongoDbDisplayState extends State<MongoDbDisplay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: FutureBuilder(
              future: MongoDatabase.getData(),
              builder: (context, AsyncSnapshot snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                } else {
                  if (snapshot.hasData) {
                    var totalData = snapshot.data.length;
                    print("Total Data" + totalData.toString());
                    return ListView.builder(
                        itemCount: snapshot.data.length,
                        itemBuilder: (context, index) {
                          return displayCard(
                              MongoDbModel.fromJson(snapshot.data[index]));
                        });
                  } else {
                    return Center(
                      child: Text("No data available"),
                    );
                  }
                }
              })),
    );
  }

  Widget displayCard(MongoDbModel data) {
    return Card(
        child: Column(
      children: [
        Text("${data.District}"),
        SizedBox(
          height: 5,
        ),
        Text("${data.State}"),
        SizedBox(
          height: 5,
        ),
        Text("${data.AssetCategory}"),
        SizedBox(
          height: 5,
        ),
        //Text("marks:" +  "${data.marks}"),
      ],
    ));
  }
}
