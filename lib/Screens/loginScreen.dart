import 'package:flutter/material.dart';

import '../Animation/animation.dart';
class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 400,
              width: double.infinity,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/background.png"),fit: BoxFit.fill
                  )
              ),
              child: Stack(
                children: [
                  Positioned(
                      left:30,

                        child: FadeTransitionExample(
                          duration: 1,

                          child: Container(
                            width: 80,
                            height: 200,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/light-1.png"),
                                )
                            ),),
                        ),
                      ),
                  Positioned(
                      left:140,
                      child: FadeTransitionExample(
                        duration: 1,
                        child: Container(
                          width: 80,
                          height: 150,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/light-2.png"),
                              )
                          ),),
                      )),
                  Positioned(
                      right:40,
                      top: 40,
                      child: FadeTransitionExample(
                        duration: 1,
                        child: Container(
                          width: 80,
                          height: 150,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/clock.png"),
                              )
                          ),),
                      )),
                  Positioned(

                    child: FadeTransitionExample(
                      duration: 1,
                      child: Center(
                        child: Container(
                          alignment: Alignment.center,
                          margin: const EdgeInsets.only(top: 50),
                          child: const Text("Login",style: TextStyle(fontSize: 40,color: Colors.white,fontWeight: FontWeight.bold),),

                        ),),
                    ),
                  )

                ],
              ),
            ),
            Padding(padding: const EdgeInsets.all(30),
              child: Column(

                children: [
                  FadeTransitionExample(
                    duration: 1,

                    child: Container(
                      padding:const  EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                                color:  Color.fromRGBO(143, 148, 251, .3),
                                blurRadius: 20,
                                offset:  Offset(0,10)
                            )
                          ]
                      ),
                      child: Column(
                        children: [
                          Container(
                              padding:const  EdgeInsets.all(8),

                              child: TextFormField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Enter Your Email",
                                    helperStyle: TextStyle(color: Colors.grey.shade400)
                                ),
                              )),
                          Container(
                              padding:const  EdgeInsets.all(8),

                              child: TextFormField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Password",
                                    helperStyle: TextStyle(color: Colors.grey.shade400)
                                ),
                              ))
                        ],
                      ),

                    ),
                  ),
                  const   SizedBox(height: 50,),
                  FadeTransitionExample(
                    duration: 2,
                    child: Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                            colors: [
                              Theme.of(context).primaryColor,
                              const  Color.fromRGBO(143, 148, 251, .6),
                            ]
                        ),
                      ),
                      alignment: Alignment.center,
                      child:const Text("Login",style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),) ,
                    ),
                  ),
                const   SizedBox(height: 70,),
                  FadeTransitionExample(
                    duration: 2,
                      child: Text("ForgetPassword?",style: TextStyle(color:Theme.of(context).primaryColor,fontWeight: FontWeight.bold),)) ,
                ],
              ),)
          ],
        ),
      )
    );
  }
}
