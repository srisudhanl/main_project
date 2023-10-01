import 'package:flutter/material.dart';
import 'package:main_project/newfirm.dart';

class admin extends StatefulWidget {
  const admin({Key? key}) : super(key: key);

  @override
  State<admin> createState() => _adminState();
}

class _adminState extends State<admin> {
  late String company;
  late String address;
  late String email;
  late String phno;
  late String password;
  bool showspinner = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(
          title: Text('OVPC-ADMIN',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color : Colors.blue,
              fontSize: 35.0,
            ),),//TextStyle
        ),//appBar
        body:Container(
          width: double.infinity,
          height:double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "https://img.wallpapersafari.com/desktop/1366/768/2/3/QLI4V2.png"),
                  fit: BoxFit.cover)),
          child: SingleChildScrollView(
              child:Column(
                  children:<Widget>[
                    Text('Fill Company Details',
                      style: TextStyle(
                        fontWeight:FontWeight.bold,
                        fontSize: 35.0,
                      ),//TextStyle
                    ),//Text
                    TextField(
                      decoration:new InputDecoration(
                        labelText:'Enter Company Name:',
                        hintText:'Name',
                      ),//InputDecoration
                      autocorrect:true,
                      onChanged: (value){
                        company=value;

                      },
                      keyboardType:TextInputType.text,
                    ),//TextField
                    TextField(
                      decoration:new InputDecoration(
                        labelText:'Enter Address:',
                        hintText:'Address',
                      ),//InputDecoration
                      autocorrect:true,
                      onChanged: (value){
                        address=value;

                      },keyboardType:TextInputType.text,
                    ),//TextField
                    TextField(
                      decoration:new InputDecoration(
                        labelText:'Enter Contact no:',
                        hintText:'ph.no',
                      ),//InputDecoration
                      autocorrect:true,
                      onChanged: (value){
                        phno=value;

                      },
                      keyboardType:TextInputType.number,
                    ),//TextField
                    TextField(
                      decoration:new InputDecoration(
                        labelText:'Enter Company email:',
                        hintText:'email',
                      ),//InputDecoration
                      autocorrect:true,
                      onChanged: (value){
                        email=value;

                      },
                      keyboardType:TextInputType.emailAddress,
                    ),
                    TextField(
                      decoration:new InputDecoration(
                        labelText:'Enter password:',
                        hintText:'password',
                      ),//InputDecoration
                      autocorrect:true,
                      onChanged: (value){
                        password=value;

                      },
                      keyboardType:TextInputType.text,
                    ),//TextField
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            ElevatedButton(
                              child: Text("Register/submit"),
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.green,
                                  textStyle: TextStyle(
                                      color: Colors.white, fontSize: 15.0
                                  ),
                                  shape: BeveledRectangleBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(2)))
                                  ,
                                  shadowColor: Colors.blueGrey),
                              onPressed: () async{
                                setState(() {
                                  showspinner = true;
                                });
                                try {
                                  Navigator.pop(context);
                                  // FirebaseAuth.instance.createUserWithEmailAndPassword(
                                  //     email: email,
                                  //     password: password).then((currentUser) =>
                                  //     FirebaseFirestore.instance.collection("Firms")
                                  //         .doc(currentUser.user.uid).set({
                                  //       "uid": currentUser.user.uid,
                                  //       "Company":company,
                                  //       "email": email,
                                  //       "address": address,
                                  //       "phno": phno,
                                  //       "password": password,
                                  //     }).then((result) =>
                                  //     {FirebaseAuth.instance.signOut().then((result) =>
                                  //     {
                                  //       Navigator.pop(context),
                                  //     }).catchError(
                                  //             (err) => print(err)),}).catchError((err) =>
                                  //         print(err)));
                                } catch (e) {
                                  print(e);
                                }
                              },
                            ),
                          ]
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: <Widget>[
                          Container(
                            child: Text(
                              "Any new firms!!!",
                              style: TextStyle(
                                fontSize: 25.0,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                                child: TextButton(
                                  child: Text("Click Here"),
                                  style: ElevatedButton.styleFrom(
                                      primary: Colors.transparent,
                                      textStyle:
                                      TextStyle(color: Colors.white, fontSize: 15.0),
                                      shape: BeveledRectangleBorder(
                                          borderRadius:
                                          BorderRadius.all(Radius.circular(2))),
                                      shadowColor: Colors.blueGrey),
                                  onPressed: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) => newfirm()));
                                  },
                                )),
                          ),
                        ],
                      ),
                    ),
                  ]
              )
          ),
        )
    );
  }
}
