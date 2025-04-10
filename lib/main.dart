import 'package:flutter/material.dart';
import 'package:loginpage_animated_ui/Animation/fade_animation.dart';

void main() => runApp(
  const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  )
);


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child:Column(
          children: <Widget>[
            Container(
              height: 400,
              decoration:const  BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/background.png'),
                  fit: BoxFit.fill
                )
              ),
              child:  Stack(
                children: <Widget>[
                  Positioned(
                    left: 30,
                    width: 80,
                    height: 200,
                    child: FadeAnimation(
                      delay: 1.2,
                      child: Container(
                        decoration:const  BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/light-1.png')
                          )
                        ),
                      ),
                    )
                  ),
                  Positioned(
                    left: 140,
                    width: 80,
                    height: 150,
                    child: FadeAnimation(
                      delay: 1.5,
                      child: Container(
                        decoration:const  BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/light-2.png')
                          )
                        ),
                      ),
                    )
                  ),
                  Positioned(
                    right: 40,
                    top:40,
                    width: 80,
                    height: 150,
                    child: FadeAnimation(
                      delay: 1.8,
                      child: Container(
                        decoration:const  BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/clock.png')
                          )
                        ),
                      ),
                    )
                  ),
                  Positioned(
                    child:FadeAnimation(
                      delay: 1.9,
                      child: Container(
                        margin:const  EdgeInsets.only(top: 50),
                        child: const Center(
                          child:Text("Login",
                            style:TextStyle(
                              fontSize: 40,
                              color: Colors.white,
                              fontWeight: FontWeight.bold
                            )
                          )
                        ),
                      ),
                    ) 
                  )
                ],
              ),
            ),
            Padding(
              padding:const EdgeInsets.all(30),
              child: Column(
                children: <Widget>[
                  FadeAnimation(
                    delay:2,
                    child: Container(
                      padding:const  EdgeInsets.all(5),
                      decoration:  BoxDecoration(
                        color:Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow:const [
                          BoxShadow(
                            color: Color.fromRGBO(143, 148,251 , 1),
                            blurRadius: 20,
                            offset: Offset(0,10 )
                          )
                        ]
                      ),
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding:const  EdgeInsets.all(8),
                            decoration:   BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  color:Colors.grey.shade100 
                                )
                              )
                            ),
                            child:  TextField(
                        decoration: InputDecoration(
                          border:InputBorder.none,
                          hintText: "Email or Phone number",
                          hintStyle: TextStyle(color:Colors.grey[400])
                        ),
                      ),
                          ),
                          Container(
                            padding:const  EdgeInsets.all(8),
                            decoration:   BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  color:Colors.grey.shade100
                                )
                              )
                            ),
                            child:  TextField(
                        decoration: InputDecoration(
                          border:InputBorder.none,
                          hintText: "Password",
                          hintStyle: TextStyle(color:Colors.grey[400])
                        ),
                      ),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height:30),
                  FadeAnimation(
                    delay: 2.3,
                    child: Container(
                      height:50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: const LinearGradient(
                          colors:[
                            Color.fromRGBO(143, 148, 251, 1),
                            Color.fromRGBO(143, 148, 251, 0.6)
                          ]
                        )
                      ),
                      child:const Center(
                        child: Text("Login",
                          style:TextStyle(
                            color:Colors.white,
                            fontWeight:FontWeight.bold
                          ) 
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height:70),
                  const Text("Forgot Password ?",
                  style: TextStyle(
                    color: Color.fromRGBO(143, 148, 251, 1),
                  ),)
                ]
              ), 
            )
          ],
        ),
      ),
    );
  }
}