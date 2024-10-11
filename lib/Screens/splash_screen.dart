import 'package:dictionary_app/Screens/home_screen.dart';
import 'package:flutter/material.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // TODO: implement initState
    Future.delayed(const Duration(seconds: 3),(){
      Navigator.push(context, MaterialPageRoute(builder: (_)=>HomeScreen()));
    });

  }



  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Color(0xff0B1E32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image(
              height: 100,
                width: 100,
                image: AssetImage('assets/dict.png')),
            SizedBox(height: 10,),
            Text("M Dicty",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color: Colors.white),)
          ],

        ),


      )
    );
  }
}
