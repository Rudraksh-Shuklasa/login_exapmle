import 'package:flutter/material.dart';


class SocialOpttion extends StatefulWidget {
  @override
  _SocialOpttionState createState() => _SocialOpttionState();
}

class _SocialOpttionState extends State<SocialOpttion> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Or Sign up with social accout",style: TextStyle(color: Colors.black,fontSize: 14),)
              ],
            ),
          ),
          Container(
              margin: EdgeInsets.symmetric(vertical: 8),
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    child: RaisedButton(
                      color: Colors.indigoAccent,
                      elevation: 3,
                      padding: EdgeInsets.only(left: 56,right: 56,top: 10,bottom: 10),
                      child:Image.asset('asset/images/facebook.png',fit: BoxFit.contain),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      onPressed: () {},
                    ) ,
                  ),
                  Container(
                    child: RaisedButton(
                      color: Colors.blueAccent,
                      elevation: 3,
                      padding: EdgeInsets.only(left: 56,right: 56,top: 10,bottom: 10),
                      child: Image.asset('asset/images/twitter.png',fit: BoxFit.contain),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      onPressed: () {},
                    ) ,
                  )

                ],
              )
          )
        ],
      ),
    );
  }
}
