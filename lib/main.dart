import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:main_project/logindivision.dart';
import 'package:main_project/logins/adminlogin.dart';
import 'package:main_project/logins/userlogin.dart';
import 'package:main_project/querypage.dart';

void main(){
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
   home: splash(),
  ));
}

class splash extends StatelessWidget {
  const splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // decoration: BoxDecoration(
      //     image: DecorationImage(
      //         image: NetworkImage(
      //             "https://img.wallpapersafari.com/desktop/1366/768/2/3/QLI4V2.png"),
      //         fit: BoxFit.cover)),
      body:Container(
        color: Colors.white,
        height: double.infinity,
        width: double.infinity,
        child: FlutterSplashScreen.gif(
          gifPath: 'assets/splashscreen image.gif',
          gifWidth: 269,
          gifHeight: 474,
          defaultNextScreen: const MyApp(),
          duration: const Duration(milliseconds: 3515),
          onInit: () async {
            debugPrint("onInit 1");
            await Future.delayed(const Duration(milliseconds: 2000));
            debugPrint("onInit 2");
          },
          onEnd: () async {
            debugPrint("onEnd 1");
            debugPrint("onEnd 2");
          },
        ),
      ),
    );
  }
}


class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("OPSV"),
        leading: IconButton(
          icon: Icon(Icons.query_builder),
          onPressed: (){
            Navigator.push(
                context,MaterialPageRoute(builder:(context)=>querypage()));
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.person_pin),
            onPressed: (){Navigator.push(
                context,MaterialPageRoute(builder:(context)=>adminlogin()));
            },
          )
        ],
      ),
      body: Container(
        width: double.infinity,
        height:double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    "https://t3.ftcdn.net/jpg/02/71/38/40/360_F_271384040_eOgxRFDPAdwiiQgulp2g6kzNwapFz5AT.jpg"),
                fit: BoxFit.cover)),
        child: SingleChildScrollView(
            child:Column(
                children: <Widget>[
                  Column(
                    children: <Widget>[

                      Container(
                        width:double.infinity,
                        height:400,
                        color: Colors.transparent,

                      ),
                    ],
                  ),
                  Container(
                    color: Colors.transparent,
                    width:double.infinity,
                    height:135,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          IconButton(
                            icon: Icon(Icons.person_pin),
                            onPressed: (){
                              Navigator.push(
                                  context,MaterialPageRoute(builder:(context)=>logindivision()));
                            },
                            iconSize: 60.0,
                            color:Colors.white,
                          ),
                          Container(
                            child: Text("Student",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black),
                            ),
                            color: Colors.transparent,
                          )
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          IconButton(
                            icon: Icon(Icons.business_rounded),
                            onPressed: (){
                              Navigator.push(
                                  context,MaterialPageRoute(builder:(context)=>userlogin()));
                            },
                            iconSize: 60.0,
                            color: Colors.orange,
                          ),
                          Container(
                            child: Text("Firms",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black),
                            ),
                            color: Colors.transparent,
                          )
                        ],
                      ),
                    ],
                  ),

                ]
            )
        ),
      ),
    );
  }
}
