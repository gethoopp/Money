import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart';
import 'package:money/view/widget/textform.dart';

import '../../controller/controller.dart';

class BigclipChild extends StatefulWidget {
  const BigclipChild({
    super.key,
  });

  @override
  State<BigclipChild> createState() => _BigclipChildState();
}

class _BigclipChildState extends State<BigclipChild>
    with TickerProviderStateMixin {
  bool? isCheck = false;
  bool isOpen = false;

  @override
  void initState() {
    super.initState();
    animation = AnimationController(vsync: this);
  }

 

  @override
  Widget build(BuildContext context) {
    return Animate(
      effects: const [
        FadeEffect(
            curve: Curves.easeIn,
            duration: Duration(seconds: 2),
            begin: 0,
            end: 5)
      ],
      child: Column(children: [
        Center(
            heightFactor: 0.85,
            child: Lottie.asset(
              'Assets/animate/animate.json',
              width: 200,
              height: 150,
              reverse: false,
              controller: animation,
              onLoaded: (composition) {
                animation
                  ..duration = composition.duration
                  ..forward()
                  
                  
                  ;
              },
            )),
        const Padding(
          padding: EdgeInsets.only(top: 15),
          child: Text(
            'Welcome',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 20),
          child: Text.rich(
            TextSpan(
                text: 'By Signing up you agree to our ',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
                children: [
                  TextSpan(
                      text: '\nTerms of Use',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      )),
                ]),
            textAlign: TextAlign.center,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: SizedBox(
            height: 50,
            width: 280,
            child: TextForm(
              inpute: TextInputType.emailAddress,
                hint: 'Email',
                isSecure: false,
                controller: email,
                icon: const FaIcon(FontAwesomeIcons.envelope)),
          ),
        ),
        Padding(
            padding: const EdgeInsets.only(top: 20),
            child: SizedBox(
              height: 50,
              width: 280,
              child: TextForm(
                inpute: TextInputType.text,
                hint: 'Password',
                isSecure: true,
                controller: password,
                icon: const FaIcon(FontAwesomeIcons.lock),
              ),
            )),
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: CheckboxMenuButton(
              value: isCheck,
              onChanged: (value) {
                setState(() {
                  isCheck = value;
                });
              },
              style: ButtonStyle(
                shadowColor: MaterialStateProperty.all(Colors.transparent),
                overlayColor: MaterialStateProperty.all(Colors.transparent),
                backgroundColor: MaterialStateProperty.all(Colors.transparent),
              ),
              child: const Text('Remember Password')),
        )
      ]),
    );
  }
}
