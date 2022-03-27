import 'package:flutter/material.dart';
import 'package:dudeloka/home_screen.dart';
import 'package:dudeloka/views/menu_asal.dart';
import 'package:dudeloka/views/menu_tujuan.dart';

class IndexScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('DudeLoka'),
          backgroundColor: Colors.green,
        ),
        body: GridView.count(
          padding: const EdgeInsets.all(25),
          crossAxisCount: 2,
          children: <Widget>[
            Card(
              margin: const EdgeInsets.all(9),
              child: InkWell(
                onTap: () {
                  Navigator.of(context, rootNavigator: false).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) => MenuAsal(),
                    ),
                  );
                },
                splashColor: Colors.blue,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: const <Widget>[
                      Icon(
                        Icons.train_outlined,
                        size: 70,
                        color: Color.fromARGB(255, 57, 136, 135),
                      ),
                      Text("Departure schedule",
                          style: TextStyle(fontSize: 17.0)),
                    ],
                  ),
                ),
              ),
            ),
            Card(
              margin: const EdgeInsets.all(9),
              child: InkWell(
                onTap: () {
                  Navigator.of(context, rootNavigator: false).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) => MenuTujuan(),
                    ),
                  );
                },
                splashColor: Colors.blue,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: const <Widget>[
                      Icon(
                        Icons.payment,
                        size: 70,
                        color: Color.fromARGB(255, 57, 136, 135),
                      ),
                      Text("Proof of payment",
                          style: TextStyle(fontSize: 17.0)),
                    ],
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
