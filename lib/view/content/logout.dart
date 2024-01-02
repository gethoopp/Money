import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:money/controller/controller.dart';
import 'package:money/cubit/auth_cubit_cubit.dart';

class LogOut extends StatefulWidget {
  const LogOut({super.key});

  @override
  State<LogOut> createState() => _LogOutState();
}

class _LogOutState extends State<LogOut> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: IconButton(
              onPressed: () {
                  BlocProvider.of<AuthCubitCubit>(context).signOut();
                  
              },
              icon: const Icon(Icons.logout_rounded))),
    );
  }
}
