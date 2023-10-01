import 'package:flutter/material.dart';
import 'package:main_project/main.dart';
import 'package:main_project/registers/admin.dart';

class adminlogin extends StatefulWidget {
  const adminlogin({Key? key}) : super(key: key);

  @override
  State<adminlogin> createState() => _adminloginState();
}

class _adminloginState extends State<adminlogin> {
  late String email;
  late String password;
  bool showSpinner = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OVPC-ADMINLOGIN',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 15.0,
          ),),
      ),
        body: Container(
          width: double.infinity,
          height:double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "https://img.wallpapersafari.com/desktop/1366/768/2/3/QLI4V2.png"),
                  fit: BoxFit.cover)),
          child: SingleChildScrollView(
              child: Column(
                  children: <Widget>[
                    Container(
                      height: 300,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://image.shutterstock.com/image-vector/female-support-service-customer-care-260nw-1007915356.jpg"),
                              fit: BoxFit.cover)),
                      width: double.infinity,
                    ),
                    Text('Login Details',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 35.0,
                      ), //TextStyle
                    ), //Text
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        decoration: new InputDecoration(
                          labelText: 'Enter Email:',
                          hintText: 'email address',
                        ), //InputDecoration
                        autocorrect: false,
                        onChanged: (value) {
                          email = value;
                        },
                        keyboardType: TextInputType.emailAddress,
                      ),
                    ),
                    Container(
                      color: Colors.transparent,
                      height: 30,
                      width: double.infinity,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        obscureText: true,
                        decoration: new InputDecoration(
                          labelText: 'Enter PassWord:',
                          hintText: 'Password',
                        ), //InputDecoration
                        autocorrect: false,
                        onChanged: (value) {
                          password = value;
                        },
                        keyboardType: TextInputType.text,
                      ),
                    ),
                    Container(
                      color: Colors.transparent,
                      height: 35,
                      width: double.infinity,
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          ElevatedButton(
                            child: Text("Login"),
                  style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                  textStyle: TextStyle(
                      color: Colors.white, fontSize: 15.0
                  ),
                  shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(2)))
                  ,
                  shadowColor: Colors.blueGrey),
                            onPressed: () async {
                              setState((){showSpinner = true;});
                              try{
                                // final user = await _auth.signInWithEmailAndPassword(email:email,password:password).then((currentUser) =>
                                //     FirebaseFirestore.instance.collection("admin"));
                                // if(user!= null){
                                  Navigator.push(
                                    context,MaterialPageRoute(builder:(context)=>admin())
                                );
                                // }
                                }
                              catch(e){print(e);}
                              setState((){showSpinner = false;});
                            },
                          ),

                          ElevatedButton(onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => MyApp()));
                          },
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.red,
                                  textStyle:
                                  TextStyle(color: Colors.white, fontSize: 15.0),
                                  shape: BeveledRectangleBorder(
                                      borderRadius:
                                      BorderRadius.all(Radius.circular(2))),
                                  shadowColor: Colors.blueGrey),
                            child: Text("Cancel"),
                          )
                        ]
                    ),
                  ]
              )
          ),
        )
    );
  }
}
