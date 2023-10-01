import 'package:flutter/material.dart';

class register extends StatefulWidget {
  const register({Key? key}) : super(key: key);

  @override
  State<register> createState() => _registerState();
}

class _registerState extends State<register> {
  late String firstname;
  late String lastname;
  late String email;
  late String address;
  late String phno;
  late String aadhar;
  // late String SSLC;
  // late String yop1;
  // late String HSC;
  // late String yop2;
  // late String dept;
  // late String CID;
  // late String yop3;
  // late String intern;
  // late String inplant;
  // late String AOI;
  late String password;
  late String cpassword;
  // late String sslc;
  // late String hsc;
  // late String xper;
  // late String xlper;
  // late String cgpa;
  // late String CGPA;
  // late String XPER;
  // late String XIPER;


  Future showdialog(BuildContext context,String message)async{
    return showDialog(builder: (context) => new AlertDialog(
      title:new Text(message),actions: <Widget>[new TextButton(onPressed:(){
      Navigator.pop(context);
    },child:new Text("ok"))],
    ), context:context);
  }
  final txtfirstname=new TextEditingController();
  final txtlastname=new TextEditingController();
  final txtemail=new TextEditingController();
  final txtaddress=new TextEditingController();
  final txtphno=new TextEditingController();
  // final txtSSLC=new TextEditingController();
  // final txtyop1=new TextEditingController();
  // final txtHSLC=new TextEditingController();
  // final txtyop2=new TextEditingController();
  // final txtdept=new TextEditingController();
  // final txtCID=new TextEditingController();
  // final txtyop3=new TextEditingController();
  // final txtintern=new TextEditingController();
  // final txtinplant=new TextEditingController();
  // final txtAOI=new TextEditingController();
  final txtaadhar=new TextEditingController();
  final txtpassword=new TextEditingController();
  final txtcpassword=new TextEditingController();
  bool showSpinner =false;

  @override
  void dispose(){
    txtfirstname.dispose();
    txtlastname.dispose();
    txtemail.dispose();
    txtaddress.dispose();
    txtphno.dispose();
    // txtSSLC.dispose();
    // txtyop1.dispose();
    // txtHSLC.dispose();
    // txtyop2.dispose();
    // txtdept.dispose();
    // txtCID.dispose();
    // txtyop3.dispose();
    // txtintern.dispose();
    // txtinplant.dispose();
    // txtAOI.dispose();
    txtpassword.dispose();
    txtcpassword.dispose();
    txtaadhar.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('OPSV',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color : Colors.white,
            fontSize: 35.0,
          ),),//TextStyle
      ),
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
              Text('Fill Details',
                style: TextStyle(
                  fontWeight:FontWeight.bold,
                  fontSize: 35.0,
                ),//TextStyle
              ),//Text
              TextField(
                //controller:txtfirstname,
                decoration:new InputDecoration(
                  labelText:'Enter Firstname:',
                  hintText:'firstname',

                ),//InputDecoration
                autocorrect:true,
                onChanged: (value){
                  firstname=value;

                },
                keyboardType:TextInputType.text,

              ),//TextField
              TextField(
                //controller:txtlastname,
                decoration:new InputDecoration(
                  labelText:'Enter Lastname:',
                  hintText:'lastname',

                ),//InputDecoration
                autocorrect:true,
                onChanged: (value){
                  lastname=value;

                },
                keyboardType:TextInputType.text,
              ),//TextField
              TextField(
                //controller:txtemail,
                decoration:new InputDecoration(
                  labelText:'Enter email:',
                  hintText:'email',

                ),//InputDecoration
                autocorrect:false,
                onChanged: (value){
                  email=value;

                },
                keyboardType:TextInputType.emailAddress,
              ),//TextField
              TextField(
                //controller:txtaddress,
                decoration:new InputDecoration(
                  labelText:'Enter address:',
                  hintText:'Address',

                ),//InputDecoration
                autocorrect:false,
                onChanged: (value){
                  address =value;

                },
                keyboardType:TextInputType.text,
              ),//TextField
              TextField(
                //controller:txtphno,
                decoration:new InputDecoration(
                  labelText:'Enter Contact no:',
                  hintText:'PH.No',

                ),//InputDecoration
                autocorrect:true,onChanged: (value){
                phno=value;

              },
                keyboardType:TextInputType.number,
              ),//TextField
              // TextField(
              //   //controller:txtSSLC,
              //   decoration:new InputDecoration(
              //     labelText:'Enter SSLC I.D.:',
              //     hintText:'10th Rollno',
              //
              //   ),//InputDecoration
              //   autocorrect:false,onChanged: (value) {
              //   SSLC = value;
              // },
              //   keyboardType:TextInputType.text,
              // ),
              // TextField(
              //   //controller:txtCID,
              //   decoration:new InputDecoration(
              //     labelText:'Enter 10th Percentage:',
              //     hintText:'percentage',
              //
              //   ),//InputDecoration
              //   autocorrect:false,
              //   onChanged: (value){
              //     XPER=value;
              //
              //   },
              //   keyboardType:TextInputType.text,
              // ),//TextField
              // TextField(
              //   //controller:txtyop1,
              //   decoration:new InputDecoration(
              //     labelText:'Enter Year of Passing:',
              //     hintText:'year of passing',
              //
              //   ),//InputDecoration
              //   autocorrect:false,onChanged: (value){
              //   yop1=value;
              //
              // },
              //   keyboardType:TextInputType.number,
              // ),//TextField
              // TextField(
              //   //controller:txtHSLC,
              //   decoration:new InputDecoration(
              //     labelText:'Enter HSLC I.D:',
              //     hintText:'12th Rollno',
              //
              //   ),//InputDecoration
              //   autocorrect:false,
              //   onChanged: (value){
              //     HSC =value;
              //
              //   },
              //   keyboardType:TextInputType.text,
              //
              // ),
              // TextField(
              //   //controller:txtCID,
              //   decoration:new InputDecoration(
              //     labelText:'Enter XII percentage:',
              //     hintText:'percentage',
              //
              //   ),//InputDecoration
              //   autocorrect:false,
              //   onChanged: (value){
              //     XIPER=value;
              //
              //   },
              //   keyboardType:TextInputType.text,
              // ),//TextField
              // TextField(
              //   //controller:txtyop2,
              //   decoration:new InputDecoration(
              //     labelText:'Enter Year of Passing:',
              //     hintText:'year of passing',
              //
              //   ),//InputDecoration
              //   autocorrect:false,
              //   onChanged: (value){
              //     yop2=value;
              //
              //   },keyboardType:TextInputType.number,
              // ),//TextField
              // TextField(
              //   //controller:txtdept,
              //   decoration:new InputDecoration(
              //     labelText:'Enter Department:',
              //     hintText:'Dept',
              //
              //   ),//InputDecoration
              //   autocorrect:false,
              //   onChanged: (value){
              //     dept=value;
              //
              //   },
              //   keyboardType:TextInputType.text,
              // ),//TextField
              // TextField(
              //   //controller:txtCID,
              //   decoration:new InputDecoration(
              //     labelText:'Enter College I.D:',
              //     hintText:'college Rollno',
              //
              //   ),//InputDecoration
              //   autocorrect:false,
              //   onChanged: (value){
              //     CID=value;
              //
              //   },
              //   keyboardType:TextInputType.text,
              // ),
              // TextField(
              //   //controller:txtCID,
              //   decoration:new InputDecoration(
              //     labelText:'Enter CGPA:',
              //     hintText:'cgpa',
              //
              //   ),//InputDecoration
              //   autocorrect:false,
              //   onChanged: (value){
              //     CGPA=value;
              //
              //   },
              //   keyboardType:TextInputType.number,
              // ),//TextField
              // TextField(
              //   //controller:txtyop3,
              //   decoration:new InputDecoration(
              //     labelText:'Enter Year of Passing:',
              //     hintText:'year of passing',
              //
              //   ),//InputDecoration
              //   autocorrect:false,
              //   onChanged: (value){
              //     yop3=value;
              //
              //   },
              //   keyboardType:TextInputType.number,
              // ),//TextField
              // TextField(
              //   //controller:txtintern,
              //   decoration:new InputDecoration(
              //     labelText:'Enter Any Internships:',
              //     hintText:'internships (is any)',
              //   ),//InputDecoration
              //   autocorrect:true,
              //   onChanged: (value){
              //     intern=value;
              //
              //   },
              //   keyboardType:TextInputType.text,
              // ),//TextField
              // TextField(
              //   //controller:txtinplant,
              //   decoration:new InputDecoration(
              //     labelText:'Enter Inplant Trainings:',
              //     hintText:'InplantTrainings (is any)',
              //   ),//InputDecoration
              //   autocorrect:true,
              //   onChanged: (value){
              //     inplant=value;
              //
              //   },
              //   keyboardType:TextInputType.text,
              // ),//TextField
              // TextField(
              //   //controller:txtAOI,
              //   decoration:new InputDecoration(
              //     labelText:'Enter Area Of Interest:',
              //     hintText:'Domain',
              //   ),//InputDecoration
              //   autocorrect:true,
              //   onChanged: (value){
              //     AOI=value;
              //
              //   },
              //   keyboardType:TextInputType.text,
              // ),
              TextField(
                //controller:txtaadhar,
                decoration:new InputDecoration(
                  labelText:'Enter Aadhar no:',
                  hintText:'Aadhar no.',

                ),//InputDecoration
                autocorrect:false,
                onChanged: (value){
                  aadhar=value;

                },
                keyboardType:TextInputType.number,
              ),
              TextField(
                //controller:txtpassword,
                decoration:new InputDecoration(
                  labelText:'Enter Password:',
                  hintText:'Password',

                ),//InputDecoration
                autocorrect:false,
                onChanged: (value){
                  password=value;

                },
                keyboardType:TextInputType.text,
              ),
              TextField(
                //controller:txtcpassword,
                decoration:new InputDecoration(
                  labelText:'Confirm Password:',
                  hintText:'Password',

                ),//InputDecoration
                autocorrect:false,
                onChanged: (value){
                  cpassword=value;

                },keyboardType:TextInputType.text,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  ElevatedButton(onPressed: ()async{
                    setState(() {
                      showSpinner =true;
                    });
                    try{
                      showdialog(context,"DB need to be connected");
                      // await Firestore.instance.collection('depository')
                      //     .where('CID',isEqualTo: CID).where('CGPA',isEqualTo: CGPA)
                      //     .get().then((result)=>{
                      //   showdialog(context, "Verified"),
                      // });
                    }catch (e) {
                      print(e);
                    }
                  },
                    child: Text("Verify"),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.green,
                        textStyle:
                        TextStyle(color: Colors.white, fontSize: 15.0),
                        shape: BeveledRectangleBorder(
                            borderRadius:
                            BorderRadius.all(Radius.circular(2))),
                        shadowColor: Colors.blueGrey),),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.blue,
                        textStyle:
                        TextStyle(color: Colors.white, fontSize: 15.0),
                        shape: BeveledRectangleBorder(
                            borderRadius:
                            BorderRadius.all(Radius.circular(2))),
                        shadowColor: Colors.blueGrey),
                    child:Text("register/submit"),
                    onPressed: ()async {
                      setState(() {
                        showSpinner = true;
                      });
                      try {
                        Navigator.pop(context);
                        showdialog(context, "database need to be connected");
                        // FirebaseAuth.instance.createUserWithEmailAndPassword(
                        //     email: email,
                        //     password: password).then((currentUser) =>
                        //     FirebaseFirestore.instance.collection("engineer")
                        //         .doc(currentUser.user.uid).set({
                        //       "uid": currentUser.user.uid,
                        //       "firstname": firstname,
                        //       "lastname": lastname,
                        //       "email": email,
                        //       "address": address,
                        //       "phno": phno,
                        //       "yop1": yop1,
                        //       "HSLC": HSC,
                        //       "Xper":XPER,
                        //       "SSLC": SSLC,
                        //       "XIIper":XIPER,
                        //       "yop2": yop2,
                        //       "dept": dept,
                        //       "CID": CID,
                        //       "CGPA":CGPA,
                        //       "yop3": yop3,
                        //       "intern": intern,
                        //       "inplant": inplant,
                        //       "AOI":AOI,
                        //       "password": password,
                        //       "cpassword": cpassword,
                        //     }).then((result) =>
                        //     {FirebaseAuth.instance.signOut().then((result) =>
                        //     {
                        //       Navigator.pop(context),
                        //       showdialog(context, "database connected"),
                        //     }).catchError(
                        //             (err) => print(err)),}).catchError((err) =>
                        //         print(err)));
                      } catch (e) {
                        print(e);
                      }

                    },),
                  ElevatedButton(
                    child:Text("Clear"),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.red,
                        textStyle:
                        TextStyle(color: Colors.white, fontSize: 15.0),
                        shape: BeveledRectangleBorder(
                            borderRadius:
                            BorderRadius.all(Radius.circular(2))),
                        shadowColor: Colors.blueGrey),
                    onPressed: () {
                      txtfirstname.clear();
                      txtlastname.clear();
                      txtemail.clear();
                      txtaddress.clear();
                      txtphno.clear();
                      // txtSSLC.clear();
                      // txtyop1.clear();
                      // txtHSLC.clear();
                      // txtyop2.clear();
                      // txtdept.clear();
                      // txtCID.clear();
                      // txtyop3.clear();
                      // txtintern.clear();
                      // txtinplant.clear();
                      txtpassword.clear();
                      //txtAOI.clear();
                      txtcpassword.clear();
                    },
                  ),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
