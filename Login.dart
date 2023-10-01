import 'package:flutter/material.dart';
class Loginpage extends StatefulWidget {
  const Loginpage({Key? key}) : super(key: key);

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  final _formKey = GlobalKey<FormState>;
  final _UserNameController = TextEditingController();
  final _PasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double ?deviceheight , devicewidth;
    double? _deviceheight = MediaQuery.of(context).size.height;
    double? _devicewidth = MediaQuery.of(context).size.width;

    return Scaffold(
      resizeToAvoidBottomInset: false,
        body:Container(
            padding: EdgeInsets.symmetric(horizontal:_devicewidth!*0.04),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(padding: EdgeInsets.all(_deviceheight!*0.04)),
                Text("WELCOME BACK!",style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),),
                Padding(padding: EdgeInsets.all(8.0)),
                Text("Kindly login to Continue",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize:18 ),),
                Form(
                        child:Column(
                        children: <Widget>[
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(padding: EdgeInsets.only(top:50,bottom: 0.0)),
                              Text("USERNAME",
                              style: TextStyle(
                                  fontWeight: FontWeight.normal,
                              fontSize: 20),),
                              Padding(padding: EdgeInsets.only(top: 15.0)),
                              TextFormField(
                                controller: _UserNameController,
                                decoration: InputDecoration(
                                  labelStyle: TextStyle(color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                                    suffixIcon: Icon(Icons.mail,
                                      color: Colors.black,)),
                              ),
                             Column(
                               mainAxisAlignment: MainAxisAlignment.start,
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 Padding(padding: EdgeInsets.only(top: 75.0)),
                                 Text("Password",
                                   style: TextStyle(
                                       fontWeight: FontWeight.normal,
                                       fontSize: 20),)
                               ],
                             ),
                                  Padding(padding: EdgeInsets.only(top: 15.0)),
                                  TextFormField(
                                    controller: _PasswordController,
                                    decoration: InputDecoration(
                                      suffixIcon: Icon(Icons.password,
                                        color: Colors.black,)
                                    ),
                                    obscureText: true,
                                  ),
                                ],
                              ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top:15),
                                child: Text("Forgot Password?",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18
                                ),),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(padding: EdgeInsets.only(top: 150.0)),
                              ElevatedButton(onPressed: (){},
                                  child: Text("Login",
                                    style: TextStyle(fontSize: 30),),
                                  style: ElevatedButton.styleFrom(
                                    fixedSize: Size(275, 50),
                                    backgroundColor: Colors.deepOrange,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                  )),
                            ],
                          ),
                          Padding(padding: EdgeInsets.only(top: 30.0)),
                          Text("Dont have an Account? Sign Up",
                          style: TextStyle(fontSize: 17,
                              fontWeight: FontWeight.bold),)
                            ],
                        ),
                ),
              ],
            )
        ),
    );
  }
}
