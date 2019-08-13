import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


import './widget/EditForm.dart';
import './widget/SignupOpption.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.white
    ));
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitDown,DeviceOrientation.portraitUp]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',

      theme: ThemeData(
        primarySwatch: Colors.grey,
          appBarTheme: AppBarTheme(
            elevation: 0, // This removes the shadow from all App Bars.
          )
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 final _appBar=AppBar(
     backgroundColor: Colors.white,
     centerTitle: true,
     leading:  IconButton(icon : Icon(Icons.arrow_back_ios,color: Colors.black,),onPressed: ()=>{},alignment: Alignment.centerLeft,),
     title: Text("Sign Up",style: TextStyle(color:Colors.black,fontStyle: FontStyle.normal,),textAlign: TextAlign.center,)
 );


  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.white,
      appBar:_appBar,
      body: SingleChildScrollView(
        child:Container(
          color: Colors.white,
         child:Container(
           margin: EdgeInsets.symmetric(horizontal: 4,vertical: 8),
           child: Column(
             children: <Widget>[
               EditInformation(),
               SocialOpttion()

             ]
           ),


       ) ,


      )
     // This trailing comma makes auto-formatting nicer for build methods.
    )
    );
  }



}
