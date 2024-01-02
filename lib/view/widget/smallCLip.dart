import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


import 'package:money/controller/controller.dart';



import '../../cubit/auth_cubit_cubit.dart';

class smallCLip extends StatelessWidget {
  const smallCLip({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Animate(
      delay: const Duration(milliseconds: 100),
      effects: const [
        FadeEffect(duration: Duration(seconds: 5), curve: Curves.easeIn)
      ],
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
                top: size.height * 0.11, right: size.width * 0.15),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('Forgot Password?',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                 SizedBox(
                    width: 100,
                    child: TextButton(
                        style: ButtonStyle(
                          backgroundColor:
                              const MaterialStatePropertyAll<Color>(
                                  Colors.blue),
                          shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                  side: const BorderSide(color: Colors.blue))),
                        ),
                        onPressed: () {
                         BlocProvider.of<AuthCubitCubit>(context).login(email.text, password.text);
                         animation.reset();
                        },
                        child: const Text(
                          'Login',
                          style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        )),
                  ),
                  
                  SizedBox(
                    width: 100,
                    child: TextButton(
                        style: ButtonStyle(
                          backgroundColor:
                              const MaterialStatePropertyAll<Color>(
                                  Colors.white),
                          shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                  side: const BorderSide(color: Colors.blue))),
                        ),
                        onPressed: () {
                         BlocProvider.of<AuthCubitCubit>(context).singIn(email.text, password.text);
                        },
                        child: const Text(
                          'Register',
                          style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.bold,
                              color: Colors.blueAccent),
                        )),
                  ),
                ]),
          ),
          const SizedBox(
            height: 15,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Or Login With'),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              IconButton(
                  onPressed: () {},
                  icon: const FaIcon(
                    FontAwesomeIcons.google,
                    color: Colors.red,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: const FaIcon(
                    FontAwesomeIcons.linkedin,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: const FaIcon(
                    FontAwesomeIcons.github,
                  ))
            ]),
          )
        ],
      ),
    );
  }
}
