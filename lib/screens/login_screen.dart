import 'package:flutter/material.dart';
import 'package:flutter_social_ui/widgets/cuve_clipper.dart';
import 'package:flutter_social_ui/screens/home_screen.dart';

class LoginScreen extends StatefulWidget {

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
     return Scaffold(
       body: SingleChildScrollView(
         child: new Container(
           height: MediaQuery.of(context).size.height,
           child: new Column(
             children: <Widget>[
               new ClipPath(
                 clipper: CurveClipper(),
                 child: Image(
                   height: MediaQuery.of(context).size.height / 2.5,
                   width: double.infinity,
                   image: AssetImage("assets/images/login_background.jpg"),
                   fit: BoxFit.cover,
                 ),
               ),
               new Text(
                 'FRENZY',
                 style: TextStyle(
                   color: Theme.of(context).primaryColor,
                   fontSize: 30.0,
                   fontWeight: FontWeight.bold,
                   letterSpacing: 1.0
                 ),
               ),
               new SizedBox(height: 10.0),
               new Padding(
                   padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                 child: new TextField(
                   decoration: new InputDecoration(
                       contentPadding: EdgeInsets.symmetric(vertical: 15.0),
                       fillColor: Colors.white,
                       filled: true,
                       hintText: 'Username',
                       prefixIcon: Icon(
                         Icons.account_box,
                         size: 30.0,
                       )
                   ),
                 ),
               ),
               new SizedBox(height: 10.0),
               new Padding(
                 padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                 child: new TextField(
                   decoration: new InputDecoration(
                       contentPadding: EdgeInsets.symmetric(vertical: 15.0),
                       fillColor: Colors.white,
                       filled: true,
                       hintText: 'Password',
                       prefixIcon: Icon(
                         Icons.lock,
                         size: 30.0,
                       )
                   ),
                   obscureText: true,
                 ),
               ),
               new SizedBox(height: 40.0),
               new GestureDetector( //le navigator.push
                 // simple a la fleche de retour ver la page precedente
                 onTap: () => Navigator.pushReplacement(
                     context,
                     MaterialPageRoute(
                       builder:  (_) => HomeScreen()
                     )
                 ),
                 child:  new Container(
                   margin: EdgeInsets.symmetric(horizontal: 60.0),
                   height: 45.0,
                   alignment: Alignment.center,
                   decoration: BoxDecoration(
                     color: Theme.of(context).primaryColor,
                     borderRadius: BorderRadius.circular(10.0),
                   ),
                   child: new Text(
                     "Login",
                     style: new TextStyle(
                         color: Colors.white,
                         fontSize: 22.0,
                         fontWeight: FontWeight.bold,
                         letterSpacing: 1.5
                     ),
                   ),
                 ),
               ),

               new Expanded(
                   child: new Align(
                     alignment: FractionalOffset.bottomCenter,
                     child: new GestureDetector(
                         onTap: (){},
                         child: new Container(
                           height: 80.0,
                           alignment: Alignment.center,
                           decoration: new BoxDecoration(
                             color: Theme.of(context).primaryColor,
                           ),
                           child: new Text(
                             "Don't have an account ? Sign up",
                             style: new TextStyle(
                                 color: Colors.white,
                                 fontSize: 20.0,
                                 fontWeight: FontWeight.w600
                             ),
                           ),
                         )
                     ),
                   ),
               ),




             ],
           ),
         ),
       ),
     );
  }
}

