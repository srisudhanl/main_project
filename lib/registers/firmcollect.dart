import 'package:flutter/material.dart';

class firmcollect extends StatefulWidget {
  const firmcollect({Key? key}) : super(key: key);

  @override
  State<firmcollect> createState() => _firmcollectState();
}

class _firmcollectState extends State<firmcollect> {

  late String companyname;
  late String password;
  late String email;
  late String address;
  late String phno;
  final txtcompanyname = new TextEditingController();
  final txtpassword = new TextEditingController();
  final txtemail = new TextEditingController();
  final txtaddress = new TextEditingController();
  final txtphno = new TextEditingController();

  Future showdialog(BuildContext context, String message) async {
    return showDialog(
        builder: (context) => new AlertDialog(
          title: new Text(message),
          actions: <Widget>[
            new TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: new Text("ok"))
          ],
        ),
        context: context);
  }

  bool showspinner = false;
  @override
  void dispose() {
    txtcompanyname.dispose();
    txtpassword.dispose();
    txtemail.dispose();
    txtaddress.dispose();
    txtphno.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'OPSV',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 35.0,
          ),
        ), //TextStyle
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    "https://img.wallpapersafari.com/desktop/1366/768/2/3/QLI4V2.png"),
                fit: BoxFit.cover)),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Text(
                'Fill Details',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 35.0,
                ), //TextStyle
              ), //Text
              TextField(
                //controller:txtfirstname,
                decoration: new InputDecoration(
                  labelText: 'Enter Companyname:',
                  hintText: 'companyname',
                ), //InputDecoration
                autocorrect: true,
                onChanged: (value) {
                  companyname = value;
                },
                keyboardType: TextInputType.text,
              ),
              TextField(
                //controller:txtfirstname,
                decoration: new InputDecoration(
                  labelText: 'Enter address:',
                  hintText: 'address',
                ), //InputDecoration
                autocorrect: true,
                onChanged: (value) {
                  address = value;
                },
                keyboardType: TextInputType.text,
              ),
              TextField(
                //controller:txtfirstname,
                decoration: new InputDecoration(
                  labelText: 'Enter Contact no:',
                  hintText: 'Ph.no',
                ), //InputDecoration
                autocorrect: true,
                onChanged: (value) {
                  phno = value;
                },
                keyboardType: TextInputType.number,
              ),
              TextField(
                //controller:txtfirstname,
                decoration: new InputDecoration(
                  labelText: 'Enter email:',
                  hintText: 'email',
                ), //InputDecoration
                autocorrect: false,
                onChanged: (value) {
                  email = value;
                },
                keyboardType: TextInputType.text,
              ),
              TextField(
                //controller:txtfirstname,
                decoration: new InputDecoration(
                  labelText: 'Enter password:',
                  hintText: 'password',
                ), //InputDecoration
                autocorrect: true,
                onChanged: (value) {
                  password = value;
                },
                keyboardType: TextInputType.text,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        child: Text("Submit"),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.green,
                            textStyle: TextStyle(
                                color: Colors.white, fontSize: 15.0
                            ),
                            shape: BeveledRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(2))),
                            shadowColor: Colors.blueGrey),
                        onPressed: ()async {
                          setState(() {
                            showspinner = true;
                          });
                          try {
                            Navigator.pop(context);
                            showdialog(context, "Saved Successfully");
                            // FirebaseAuth.instance.createUserWithEmailAndPassword(
                            //     email: email,
                            //     password: password).then((currentUser) =>
                            //     FirebaseFirestore.instance.collection("FirmData")
                            //         .doc(currentUser.user.uid).set({
                            //       "uid": currentUser.user.uid,
                            //       "companyname": companyname,
                            //       "email": email,
                            //       "address": address,
                            //       "phno": phno,
                            //       "password": password,
                            //     }).then((result) =>
                            //     {FirebaseAuth.instance.signOut().then((result) =>
                            //     {
                            //       Navigator.pop(context),
                            //       showdialog(context, "Saved Successfully"),
                            //     }).catchError(
                            //             (err) => print(err)),}).catchError((err) =>
                            //         print(err)));
                          } catch (e) {
                            print(e);
                          }

                        },),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.red,
                            textStyle:
                            TextStyle(color: Colors.white, fontSize: 15.0),
                            shape: BeveledRectangleBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(2))),
                            shadowColor: Colors.blueGrey),
                        child:Text("Clear"),
                        onPressed: () {
                          txtcompanyname.clear();
                          txtemail.clear();
                          txtaddress.clear();
                          txtphno.clear();
                          txtpassword.clear();
                        },
                      ),
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
