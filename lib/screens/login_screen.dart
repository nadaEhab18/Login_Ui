import 'package:flutter/material.dart';
import 'package:login_screen/widgets/textField_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              height: 400,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage(
                  'assets/images/background.png',
                ),
                fit: BoxFit.fill,
              )),
              child: Stack(
                children: <Widget>[
                  Positioned(
                      left: 30,
                      width: 80,
                      height: 200,
                      child: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image:
                                    AssetImage('assets/images/light-1.png'))),
                      )),
                  Positioned(
                      left: 140,
                      width: 80,
                      height: 150,
                      child: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image:
                                    AssetImage('assets/images/light-2.png'))),
                      )),
                  Positioned(
                    right: 40,
                    top: 40,
                    width: 80,
                    height: 150,
                    child: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/clock.png'))),
                    ),
                  ),
                  Positioned(
                    child: Container(
                      margin: EdgeInsets.only(top: 50),
                      child: Center(
                        child: Text(
                          'Login',
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                children: <Widget>[
                  TextField_widget(hintText: 'Email or Phone number',),
                  TextField_widget(hintText: 'Password',),


                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                      colors: [
                        Color.fromRGBO(143, 148, 251, 1),
                        Color.fromRGBO(143, 148, 251, .6),
                      ],
                    ),),
                    child: Center(
                      child: Text(
                        'Login',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    margin: EdgeInsets.only(top: 10),
                    decoration: BoxDecoration(
                      // color: Colors.white,
                      gradient: LinearGradient(
                        colors: [
                          Colors.grey.shade200,
                          Colors.white,
                        ],
                      ),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromRGBO(143, 148, 251, .6),
                          blurRadius: 20,
                          offset: Offset(0, 10),
                        )
                      ],
                    ),

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap:(){},
                          child: Image.asset('assets/images/facebook.png',
                            height: 30,
                          ),
                        ),
                        GestureDetector(
                          onTap:(){},
                          child: Image.asset('assets/images/gmail.png',
                            height: 30,
                          ),
                        ),
                      ],
                    ),

                  ),

                  SizedBox(height: 30,),
                  Text(
                    'Forget Password?',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(143, 148, 251, 1)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

