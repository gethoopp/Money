import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:money/controller/controller.dart';

import '../controller/box.dart';
import '../data/data.dart';
import '../view/widget/textform.dart';

part 'auth_cubit_state.dart';

class AuthCubitCubit extends Cubit<AuthCubitState> {
  AuthCubitCubit() : super(AuthCubitInitial());

  void singIn(String email, String password) async {
    final auth = FirebaseAuth.instance;

    try {
      await auth.createUserWithEmailAndPassword(
          email: email, password: password);

      emit(AuthLogin(auth.currentUser));

      Get.snackbar(
        'Register Succes',
        'Silahkan Login ',
      );
    } on FirebaseAuthException catch (e) {
      var controller = Get.snackbar(
        'Register Error',
        e.message!,
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
      emit(AuthError(controller));
    }
  }

  void login(String email, String password) async {
    final auth = FirebaseAuth.instance;

    try {
      await auth.signInWithEmailAndPassword(email: email, password: password);
      emit(AuthLogin(auth.currentUser));

      if (nameHolder.text.isEmpty && numberCard.text.isEmpty) {
        Future.delayed(
            const Duration(milliseconds: 500),
            () => Get.dialog(
                  Container(
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(40))),
                    child: Material(
                      borderRadius: const BorderRadius.all(Radius.circular(40)),
                      child: Column(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(top: 50),
                            child: Text(
                              'Before you can use this app. Please provide some of your card information',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: TextForm(
                                inpute: TextInputType.name,
                                hint: 'Full Name',
                                controller: nameHolder,
                                isSecure: false,
                                icon: const FaIcon(
                                    FontAwesomeIcons.peopleArrows)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 200,
                                  child: TextForm(
                                      inpute: TextInputType.number,
                                      hint: 'Number Card',
                                      controller: numberCard,
                                      isSecure: false,
                                      icon: const FaIcon(
                                          FontAwesomeIcons.creditCard)),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                SizedBox(
                                  width: 150,
                                  child: TextForm(
                                      inpute: TextInputType.number,
                                      hint: 'NumberCVV',
                                      controller: numberCVV,
                                      isSecure: false,
                                      icon: const FaIcon(
                                          FontAwesomeIcons.creditCard)),
                                ),
                              ],
                            ),
                          ),
                          IconButton(
                              onPressed: () async {
                                await boxUser.put(
                                    'name_${nameHolder.text}',
                                    Person(
                                        nameHolder: nameHolder.text,
                                        numberCard: numberCard.text,
                                        numberCVV: numberCVV.text,
                                        nameBank: nameBank.text));

                                Get.offAllNamed('/Home');
                              },
                              icon: const Icon(Icons.close))
                        ],
                      ),
                    ),
                  ),
                ));
      } else {
        Get.offAllNamed('/Home');

        
      }
    } on FirebaseAuthException catch (e) {
      var controller = Get.snackbar('ERORR!', e.message.toString(),
          snackPosition: SnackPosition.BOTTOM,
          colorText: Colors.red,
          backgroundColor: Colors.red);

      emit(AuthError(controller));
    }
  }

  void signOut() async {
    final auth = FirebaseAuth.instance;

    try {
      await auth.signOut();
      
      
      emit(AuthLogin(auth.currentUser));

      Get.offAllNamed('/Login');
    } on FirebaseAuthException catch (e) {
      var controller = Get.snackbar('ERORR!', e.message.toString(),
          snackPosition: SnackPosition.BOTTOM,
          colorText: Colors.red,
          backgroundColor: Colors.red);

      emit(AuthError(controller));
    }
  }
}
