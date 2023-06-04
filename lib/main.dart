import 'package:ecommerce/screen/onboarding/login.dart';
import 'package:ecommerce/screen/onboarding/registrationSreen.dart';
import 'package:flutter/material.dart';

main() {
  runApp(MyApp("/login"));
}

class MyApp extends StatelessWidget {
  final String FirstRoute;
  const MyApp(this.FirstRoute);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E commerce App',
      initialRoute: FirstRoute,
      routes: {
        '/login':(context)=>Login(),
        'registration':(context) =>RegistrationScreen()



      },
    );
  }
}


