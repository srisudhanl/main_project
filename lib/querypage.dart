import 'package:flutter/material.dart';

class querypage extends StatefulWidget {
  const querypage({Key? key}) : super(key: key);

  @override
  State<querypage> createState() => _querypageState();
}

Future showdialog(BuildContext context,String message)async{
  return showDialog(builder: (context) => new AlertDialog(
    title:new Text(message),actions: <Widget>[new TextButton(onPressed:(){
    Navigator.pop(context);
  },child:new Text("ok"))],
  ), context:context);
}

class _querypageState extends State<querypage> {
  late String query;
  final txtquery=new TextEditingController();
  bool showSpinner =false;
  @override
  void dispose(){
    txtquery.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('OVPC-Query',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color : Colors.white,
            fontSize: 15.0,
          ),),//TextStyle
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
          children:<Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Fill Query',
                style: TextStyle(
                  fontWeight:FontWeight.bold,
                  fontSize: 35.0,
                ),//TextStyle
              ),
            ),//Text
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller:txtquery,
                decoration:new InputDecoration(
                  labelText:'Enter Query:',
                  hintText:'Queries',

                ),//InputDecoration
                autocorrect:true,
                onChanged: (value){
                  query=value;
                },
                keyboardType:TextInputType.text,
              ),
            ),
            Container(
              width: double.infinity,
              height: 35,
              color: Colors.transparent,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    ElevatedButton(
                      child:Text("Register/submit"),
                      onPressed: () {
                        Navigator.pop(context);
                        showdialog(context, "Your Query is being processed.");
                        //addStudent();
                      },
                        style: ElevatedButton.styleFrom(
                            primary: Colors.green,
                            textStyle: TextStyle(
                                color: Colors.white, fontSize: 15.0
                            ),
                            shape: BeveledRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(2)))
                            ,
                            shadowColor: Colors.blueGrey)),

                  ],
                ),
                ElevatedButton(
                  child:Text("Clear"),
                  onPressed: () {
                    txtquery.clear();
                  },
                    style: ElevatedButton.styleFrom(
                        primary: Colors.red,
                        textStyle:
                        TextStyle(color: Colors.white, fontSize: 15.0),
                        shape: BeveledRectangleBorder(
                            borderRadius:
                            BorderRadius.all(Radius.circular(2))),
                        shadowColor: Colors.blueGrey)
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
