import 'package:computer_app/bloc/bottom_nav_bloc.dart';
import 'package:computer_app/view/auth/sign_up_screen.dart';
import 'package:computer_app/view/auth/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BottomNavBloc(),
      child: MaterialApp(
        title: 'Flutter Demo',
        home: SplashScreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
