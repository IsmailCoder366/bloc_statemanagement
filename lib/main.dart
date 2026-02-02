import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'logic/auth/auth_bloc.dart';
import 'features/auth/screens/login_screen.dart';
import 'features/home/creator_home.dart'; // NEW IMPORT
import 'features/home/user_home.dart';
import 'package:bloc/bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthBloc(),
      child: MaterialApp(
        title: 'Caza',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: const Color(0xFF2F80ED),
        ),
        // The app starts at Login
        initialRoute: '/login',
        routes: {
          '/login': (context) => LoginScreen(),
          '/creator_home': (context) => const CreatorHome(),
          '/user_home': (context) => const UserHome(),
        },
      ),
    );
  }
}