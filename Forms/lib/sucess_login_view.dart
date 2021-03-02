import 'package:Forms/form/form_controller.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class SucessLoginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var credentialData = GetIt.instance.get<FormController>();
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 70),
            Text(
              'LOGADO COM SUCESSO',
              style: TextStyle(fontSize: 32),
            ),
            Text('email: ${credentialData.data["email"]}'),
            Text('senha: ${credentialData.data["password"]}'),
          ],
        ),
      ),
    );
  }
}
