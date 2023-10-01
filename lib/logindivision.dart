import 'package:flutter/material.dart';
import 'package:main_project/logins/MBAlogin.dart';
import 'package:main_project/logins/engineeringlogin.dart';
import 'package:main_project/logins/studentlogin.dart';


class logindivision extends StatefulWidget {
  const logindivision({Key? key}) : super(key: key);

  @override
  State<logindivision> createState() => _logindivisionState();
}

class _logindivisionState extends State<logindivision> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'OPSV-Division',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 15.0,
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        height:double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    "https://img.wallpapersafari.com/desktop/1366/768/2/3/QLI4V2.png"),
                fit: BoxFit.cover)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              child: ElevatedButton(
                child: Text(
                  "Login for Arts student",
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => studentlogin()));
                },
                  style: ElevatedButton.styleFrom(
                      primary: Colors.green,
                      shape: BeveledRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(2)))
                      ,
                      shadowColor: Colors.blueGrey)),
              width: double.infinity,
              height: 100,
              padding: EdgeInsets.all(10),
            ),
            Container(
              child: ElevatedButton(
                child: Text(
                  "Login for engineering student",
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                onPressed: () {
                  Navigator.push(
                      context,MaterialPageRoute(builder:(context)=>engineeringlogin()));
                },
                  style: ElevatedButton.styleFrom(
                      primary: Colors.green,
                      shape: BeveledRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(2)))
                      ,
                      shadowColor: Colors.blueGrey)
              ),
              width: double.infinity,
              height: 100,
              padding: EdgeInsets.all(10),
            ),
            Container(
              child: ElevatedButton(
                child: Text(
                  "Login for MBA student",
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MBAlogin()));
                },
                  style: ElevatedButton.styleFrom(
                      primary: Colors.green,
                      shape: BeveledRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(2)))
                      ,
                      shadowColor: Colors.blueGrey)),
              width: double.infinity,
              height: 100,
              padding: EdgeInsets.all(10),
            ),
          ],
        ),
      ),
    );
  }
}
