import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class FootballScores extends StatefulWidget {
  const FootballScores({super.key});

  @override
  State<FootballScores> createState() => _FootballScoresState();
}

List<Map<String, dynamic>> footballScores = [
  {
    "time": 1,
    "team": 'ENG',
  },
  {
    "time": 2,
    "team": "FRA",
  },
  {
    "time": 2,
    "team": "ENG",
  },
  {
    "time": 1,
    "team": "ENG",
  }
];

Stream<String> getDataFromStream() async* {
  for (var i = 0; i < footballScores.length; i++) {
    await Future.delayed(Duration(seconds: footballScores[i]["time"]));
    yield footballScores[i]["team"].toString();
  }
}

class _FootballScoresState extends State<FootballScores> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: StreamBuilder(
          stream: getDataFromStream(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              } else if (snapshot.connectionState == ConnectionState.active) {
                return Center(
                  child: Text(snapshot.data.toString()),
                );
              }
            } else {
              return Container(
                child: Center(
                  child: Text("No Data"),
                ),
              );
            }
            return Container();
          },
        ),
      ),
    );
  }
}
