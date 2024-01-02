import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:money/controller/box.dart';


import 'package:money/controller/routes.dart';
import 'package:money/cubit/auth_cubit_cubit.dart';
import 'package:money/data/data.dart';
import 'package:money/view/LoginRegis/Login.dart';




import 'firebase_options.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await Hive.initFlutter();
  Hive.registerAdapter(PersonAdapter());
  boxUser = await Hive.openBox<Person>('user');

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.

 
  @override
  Widget build(BuildContext context) {
   
   

    return BlocProvider(
      create: (context) => AuthCubitCubit(),
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        getPages: appRoute(),
        home: const Login(),
      ),
    );
  }
}
