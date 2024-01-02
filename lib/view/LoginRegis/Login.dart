import 'package:flutter/material.dart';



import 'package:money/view/widget/bigCLip.dart';


import '../widget/clip.dart';
import '../widget/smallCLip.dart';


class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login>  {
  @override
  

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
            Colors.blueAccent,
            Colors.lightBlue,
            Color.fromARGB(255, 4, 7, 180)
          ])),
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: 
            ListView(
              physics: const NeverScrollableScrollPhysics(),
              children:[ Column(
                children: [
                  Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: ClipPath(
                            clipper: Clippers(),
                            child: Card(
                              elevation: 50,
                              surfaceTintColor: Colors.black,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40)),
                              shadowColor: Colors.black,
                              child: Container(
                                  decoration: const BoxDecoration(
                                      color: Colors.white,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(40))),
                                  height: 550,
                                  child: const BigclipChild()),
                            )),
                      )),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Align(
                        heightFactor: 0.75,
                        alignment: Alignment.bottomLeft,
                        child: ClipPath(
                            clipper: SmallClip(),
                            child: Card(
                              surfaceTintColor: Colors.black,
                              elevation: 50,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40)),
                              shadowColor: Colors.black,
                              child: Container(
                                decoration: const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(40))),
                                height: 650,
                                child: smallCLip(size: size),
                              ),
                            ))),
                  )
                ],
              ),
            ]),
          
        ),
      ),
    );
  }
}

