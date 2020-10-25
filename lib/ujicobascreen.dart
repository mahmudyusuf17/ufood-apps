import 'package:ufood/Animation/FadeAnimation.dart';
import 'package:flutter/material.dart';
import 'package:ufood/layout.dart';
void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(fontFamily: 'Roboto'),
    home: Homepage(),
  )
);

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            colors: [
              Colors.deepPurple[900],
              Colors.deepPurple[800],
              Colors.indigo[900],
            ]
          )
        ),
        child: Column(
          children: <Widget>[
            Container(  
              child: Stack(
                children: <Widget>[
                  Positioned(
                    left: 30,
                    bottom: 250,
                    height: 400,
                    width: 300,
                    child: FadeAnimation(1.2, Container(
                      width: SizeConfig.blockHorizontal *3,
                      child: Center(),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/font-ufood.png')
                        )
                      ),
                    )),
                  ),
                  Positioned(
                    left: 30,
                    top: 300,
                    height: 400,
                    width: 300,
                    child: FadeAnimation(1.4, Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/piring-terbang.png')
                        )
                      ),
                    )),
                  ),
                  Positioned(
                    left: 130,
                    top: 320,
                    height: 400,
                    width: 100,
                    child: FadeAnimation(1.5, Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/ufo-food.png')
                        )
                      ),
                    )),
                  ),
                  Positioned(
                    child: FadeAnimation(1.5, Container(
                      margin: EdgeInsets.only(top: 600),
                      child: Center(
                        child: Text("Version 1.0", style: TextStyle(color: Colors.lightGreen, fontSize: 20),),
                      ),
                    )),
                  )
                ]
              ),
            )
          ],
        ),
      ),
    );
  } 
}
