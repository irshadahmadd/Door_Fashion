import 'package:door_fashion/Core/Providers/selection_provider.dart';
import 'package:door_fashion/Core/Services/Services.dart';
import 'package:door_fashion/UI/Screens/Auth_Screens/SignIN/signin_provider.dart';
import 'package:door_fashion/UI/Screens/Auth_Screens/SignUp/signuprovider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_) => SelectionProvider()),
    ChangeNotifierProvider(create: (_) => SignUpProvider()),
    ChangeNotifierProvider(create: (_) => SigninProvider()),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Fashion on the Door",
      home: SplashScreenFirst(),
    );
  }
}
