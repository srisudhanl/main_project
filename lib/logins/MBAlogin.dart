import 'package:flutter/material.dart';
import 'package:main_project/pages/MBA.dart';
import 'package:main_project/querypage.dart';
import 'package:main_project/registers/MBAregister.dart';

class MBAlogin extends StatefulWidget {
  const MBAlogin({Key? key}) : super(key: key);

  @override
  State<MBAlogin> createState() => _MBAloginState();
}

class _MBAloginState extends State<MBAlogin> {
  late String email;
  late String password;
  bool showSpinner = false;
  @override
  void initState(){
    super.initState();}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('OVPC-MBAlogin',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color : Colors.white,
            fontSize: 15.0,
          ),),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.query_builder),
            onPressed: (){
              Navigator.push(
                  context,MaterialPageRoute(builder:(context)=>querypage()));
            },
          ),
        ],
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
                                  "https://media.istockphoto.com/vectors/placeholder-avatar-female-person-default-woman-avatar-image-gray-vector-id1273355367?k=20&m=1273355367&s=612x612&w=0&h=GFCtsN8bav6S-9jX1EPwRzHKEfmSDgtY5zSw494mG1o="),
                              fit: BoxFit.cover)),
                      height: 300,
                      width: double.infinity,
                    ),
                    Text('Login Details',
                      style: TextStyle(
                        fontWeight:FontWeight.bold,
                        fontSize: 35.0,
                      ),//TextStyle
                    ),//Text
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        decoration:new InputDecoration(
                          labelText:'Enter Email:',
                          hintText:'email address',
                        ),//InputDecoration
                        autocorrect:false,
                        keyboardType:TextInputType.emailAddress,
                        onChanged: (value){email=value;},
                      ),
                    ),
                    Container(
                      color:Colors.transparent,
                      height: 30,
                      width: double.infinity,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        obscureText: true,
                        decoration:new InputDecoration(
                          labelText:'Enter PassWord:',
                          hintText:'Password',
                          // errorText:_valpassword?'password can\'t be Empty':null,
                        ),//InputDecoration
                        autocorrect:false,
                        keyboardType:TextInputType.text,
                        onChanged: (value){password=value;},
                      ),
                    ),
                    Container(
                      color:Colors.transparent,
                      height: 25,
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
                                      borderRadius: BorderRadius.all(Radius.circular(2))),
                                  shadowColor: Colors.blueGrey),
                              onPressed:()async{
                                setState((){showSpinner = true;});
                                try{
                                  // final user = await _auth.signInWithEmailAndPassword(email:email,password:password).then((currentUser) =>
                                  //     FirebaseFirestore.instance.collection("MBA"));
                                  //if(user!= null){
                                    Navigator.push(
                                      context,MaterialPageRoute(builder:(context)=>MBA())
                                  );}//}
                                catch(e){print(e);}
                                setState((){showSpinner = false;});}
                          ),
                          ElevatedButton(onPressed: (){
                            Navigator.push(
                                context,MaterialPageRoute(builder:(context)=>MBAlogin()));
                          },
                            child: Text("Cancel"),

                            style: ElevatedButton.styleFrom(
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
                            child:Text("Don't Have an Account!!",
                              style: TextStyle(
                                fontSize: 25.0,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                                child:TextButton(
                                  child: Text(
                                      "Sign Up"
                                  ),
                                  style: TextButton.styleFrom(
                                      textStyle: const TextStyle(fontSize: 20),
                                      primary: Colors.green,
                                      shadowColor: Colors.redAccent
                                  ),
                                  onPressed: (){
                                    Navigator.push(
                                        context,MaterialPageRoute(builder:(context)=>MBAregister()));
                                  },
                                )
                            ),
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
