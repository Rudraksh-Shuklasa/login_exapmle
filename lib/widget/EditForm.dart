import 'package:flutter/material.dart';


class EditInformation extends StatefulWidget {


  @override
  _EditInformationState createState() => _EditInformationState();
}

class _EditInformationState extends State<EditInformation> {
  final _emailController =TextEditingController();
  final _passwordController=TextEditingController();
  final _nameController=TextEditingController();
  bool _isValidName=false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
          children: <Widget>[
            Container(
//              margin: EdgeInsets.symmetric(vertical: 8),
              child: Stack(
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(labelText: 'Enter your name'),
                    controller: _nameController,
                    cursorColor: Colors.black,
                    autocorrect: true,
                    keyboardType: TextInputType.text,
                    onChanged: (_) => _submitData(),
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.normal
                    ),

                  ),
                  Container(
                    alignment: Alignment.bottomRight,
                    child: _isValidName?FlatButton(
                        onPressed: () {},
                        child: new Icon(Icons.check_circle_outline,color: Colors.black,size: 18,)):Text(""),
                  )

                ],

              ) ,
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 8),
              child: Stack(
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(labelText: 'Email'),
                    controller: _emailController,
                    cursorColor: Colors.black,
                    autocorrect: true,
                    keyboardType: TextInputType.emailAddress,
                    onChanged: (_) => _submitData(),
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.normal
                    ),

                  ),
                  Container(
                    alignment: Alignment.bottomRight,
                    child: _isValidName?FlatButton(
                        onPressed: () {},
                        child: new Icon(Icons.check_circle_outline,color: Colors.black,size: 18,)):Text(""),
                  )

                ],

              ) ,
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 16),
              child: Stack(
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(labelText: 'Password',contentPadding: EdgeInsets.all(2)),
                    controller: _passwordController,
                    cursorColor: Colors.black,
                    autocorrect: true,
                    obscureText: true,
                    keyboardType: TextInputType.text,
                    onChanged: (_) => _submitData(),
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.normal
                    ),

                  ),
                  Container(
                    alignment: Alignment.bottomRight,
                    child: _isValidName?FlatButton(
                        onPressed: () {},
                        child: new Icon(Icons.check_circle_outline,color: Colors.black,size: 18,)):Text(""),
                  )

                ],

              ) ,
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 16),
              child:Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 0,right: 2,top: 0,bottom: 0),
                    child: Text("Tearms of use",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 10),),
                  ),
                  Text("and",style: TextStyle(color: Colors.grey,fontSize: 10)),
                  Padding(
                      padding: EdgeInsets.only(left: 2,right: 0,top: 0,bottom: 0),
                      child:    Text("Privacy policy",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 10),)
                  ),

                ],
              ),
            ),
            ConstrainedBox(
              constraints: const BoxConstraints(minWidth: double.infinity),
              child: Card(
                color: Colors.black,
                elevation: 5,
                child:RaisedButton(
                  padding: EdgeInsets.symmetric(vertical: 8),
                  color: Colors.black,
                  child:Text("Sign Up",style: TextStyle(color: Colors.white,fontSize: 16),textAlign: TextAlign.center) ,
                  onPressed: () {}),
              )


            )
          ]
      )
    );

      

    
  }
  void _submitData(){
    setState(() {
      if(_nameController.text.isEmpty)
      {
        _isValidName=false;
      }
      else
      {
        _isValidName=true;
      }

    });
  }
}
