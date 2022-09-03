import 'package:flutter/material.dart';
import 'package:Mnrega/MongoDBMain.dart';
import 'package:Mnrega/dbHelper/mongodb.dart';

class QueryDatabase extends StatelessWidget {
  String state, stage;
  QueryDatabase({Key? key, required this.stage, required this.state})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: FutureBuilder(
          future: MongoDatabase.getQueryData(stage, state),
          builder: (context, AsyncSnapshot snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else {
              if (snapshot.hasData) {
                return ListView.builder(
                  itemCount: snapshot.data.length,
                  itemBuilder: (context, index) {
                    return displayData(
                        MongoDbModel.fromJson(snapshot.data[index]));
                  },
                );
              } else {
                return Center(
                  child: Text("Data not found"),
                );
              }
            }
          },
        ),
      ),
    );
  }

  Widget displayData(MongoDbModel data) {
    return Card(
      child: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text("Work Code: " "${data.workCode}"),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text("Accuracy: " "${data.accuracy}"),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text("MSE Officer Name: " "${data.mseName}"),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text("Panchayat: " "${data.Panchayat}"),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text("Time: " "\n" "${data.time}"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Image: "),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child:
                  Image.network('https://drive.google.com/uc?id=${data.img}'),
            ),
            SizedBox(
              height: 40,
            ),
            //Text("Works: " "\n" "${data.works[0]}" "\n" "${data.works[1]}"),
          ],
        ),
      ),
    );
  }
}
