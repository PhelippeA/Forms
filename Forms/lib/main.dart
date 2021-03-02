import 'package:Forms/sucess_login_view.dart';
import 'package:flutter/material.dart';
import 'dependencies.dart';
import 'form/form_view.dart';

void main() {
  Dependencies.register();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        routes: {'/sucessLogin': (_) => SucessLoginView()},
        home: FormView());
  }
}
