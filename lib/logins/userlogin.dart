import 'package:flutter/material.dart';
import 'package:main_project/querypage.dart';
import 'package:main_project/registers/firmcollect.dart';
import 'package:main_project/userdivision.dart';

class userlogin extends StatefulWidget {
  const userlogin({Key? key}) : super(key: key);

  @override
  State<userlogin> createState() => _userloginState();
}

class _userloginState extends State<userlogin> {
  late String email;
  late String password;
  bool showSpinner = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('OVPC-USERLOGIN',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color : Colors.white,
            fontSize: 25.0,
          ),),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.query_builder),
            onPressed: (){
              Navigator.push(
                  context,MaterialPageRoute(builder:(context)=>querypage()));
            },
          ),
        ],//TextStyle
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
                    Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://images.assetsdelivery.com/compings_v2/artacet/artacet2005/artacet200500163.jpg"),
                              fit: BoxFit.cover)),
                      height: 250,
                      width: double.infinity,
                    ),
                    Text('Login Details',
                      style: TextStyle(
                        fontWeight:FontWeight.bold,
                        fontSize: 35.0,
                      ),//TextStyle
                    ),//Text
                    TextField(
                      decoration:new InputDecoration(
                        labelText:'Enter Email:',
                        hintText:'email address',
                      ),//InputDecoration
                      autocorrect:false,
                      onChanged: (value){email=value;},
                      keyboardType:TextInputType.emailAddress,
                    ),
                    Container(
                      color:Colors.transparent,
                      height: 30,
                      width: double.infinity,
                    ),
                    TextField(
                      obscureText: true,
                      decoration:new InputDecoration(
                        labelText:'Enter PassWord:',
                        hintText:'Password',
                      ),//InputDecoration
                      autocorrect:false,
                      onChanged: (value){password=value;},
                      keyboardType:TextInputType.text,
                    ),
                    Container(
                      color:Colors.transparent,
                      height: 50,
                      width: double.infinity,
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          ElevatedButton(onPressed: ()async{
                            setState((){showSpinner = true;});
                            try{
                              // final user = await _auth.signInWithEmailAndPassword(email:email,password:password).then((currentUser) =>
                              //     FirebaseFirestore.instance.collection("Firms"));
                              // if(user!= null){
                                Navigator.push(
                                  context,MaterialPageRoute(builder:(context)=>userdivision())
                              );}//}
                            catch(e){print(e);}
                            setState((){showSpinner = false;});
                          },
                            child: Text("Login"),
                            style: ElevatedButton.styleFrom(
                                primary: Colors.green,
                                textStyle: TextStyle(
                                    color: Colors.white, fontSize: 15.0
                                ),
                                shape: BeveledRectangleBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(2))),
                                shadowColor: Colors.blueGrey),),
                          ElevatedButton(onPressed: (){},
                            child: Text("Cancel"), style: ElevatedButton.styleFrom(
                                primary: Colors.red,
                                textStyle:
                                TextStyle(color: Colors.white, fontSize: 15.0),
                                shape: BeveledRectangleBorder(
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(2))),
                                shadowColor: Colors.blueGrey),)
                        ]
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: <Widget>[
                          Container(
                            child: Text(
                              "Don't Have an Account!!",
                              style: TextStyle(
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                                child: TextButton(
                                  child: Text("Sign Up"),
                                    style: TextButton.styleFrom(
                                        textStyle: const TextStyle(fontSize: 20),
                                        primary: Colors.green,
                                        shadowColor: Colors.redAccent
                                    ),
                                  onPressed: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) => firmcollect()));
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
