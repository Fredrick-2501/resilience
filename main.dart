import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';
import 'package:resilience/Login.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:AnimatedSplashScreen(
          duration: 2000,
          splash: Icons.home,
          pageTransitionType: PageTransitionType.leftToRight,

          nextScreen: MainScreen(),
          backgroundColor: Colors.blue,),
    );
  }
}
class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    double? _deviceheight = MediaQuery.of(context).size.height;
    double? _devicewidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(child: Image.asset("assets/back2.png.jpg",
            height: _deviceheight,
            fit: BoxFit.cover,)),
          //Login Container
          Center(
           child: Padding(padding:
           const EdgeInsets.all(20.0),
           child: Column(
             mainAxisAlignment: MainAxisAlignment.end,
             children: [
               Container(
                 height: 250,
                 decoration: BoxDecoration(
                   color: Colors.white.withOpacity(0.2),
                   borderRadius: BorderRadius.circular(20.0),
                 ),
                 child: Center(
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       ElevatedButton(onPressed: (){
                         Navigator.of(context).push(PageTransition(
                             child: Loginpage(),
                             type: PageTransitionType.rightToLeft));
                           
                       },
                           child: Text("Get Started",style: TextStyle(fontSize: 30),),
                       style: ElevatedButton.styleFrom(
                         fixedSize: Size(275, 50),
                         backgroundColor: Colors.deepOrange,
                         shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(20.0),
                         ),
                       )),

                       Padding(
                         padding: const EdgeInsets.all(35.0),
                         child: Text("Welcome",
                           style: TextStyle(fontSize:20,
                               fontWeight: FontWeight.bold,
                               color: Colors.white ),),
                       ),
                       Center(child: Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Text("Sign in",style:
                         TextStyle(color: Colors.red,
                             fontWeight: FontWeight.bold,
                             fontSize: 25),),
                       ))
                     ],
                   ),
                 ),
               ),
             ],
           ),
           ),
          ),
        ],
      ),
    );
  }
}
