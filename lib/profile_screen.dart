import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'About',
          style: TextStyle(color: Colors.black, fontSize: 20),
          textAlign: TextAlign.justify,
        ),
        shadowColor: Colors.black,
        backgroundColor: Colors.green,
      ),
      body: Container(
        color: Colors.white,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Text(
                'Profile',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              margin: EdgeInsets.all(16),
            ),
            Positioned(
              right: 250.0,
              top: 70.0,
              child: Container(
                height: 150,
                width: 150,
                margin: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/profile.jpg'),
                        fit: BoxFit.cover),
                    gradient:
                        LinearGradient(colors: [Colors.black, Colors.white]),
                    borderRadius: BorderRadius.circular(100)),
              ),
            ),
            Positioned(
              right: 80.0,
              top: 130.0,
              child: Text(
                "\n\n Ruslan Ramdani \n\n\t\t\t\t\t\t\tXII RPL 3\n \nSMK ASSALAAM\n\n",
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
            ),
            Positioned(
              right: 80.0,
              top: 130.0,
              child: Text(
                "\t\t\t\t\t\tInstagram : _llann7 \nGithub: ruslanramdani1st",
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
