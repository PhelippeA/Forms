import 'package:Forms/form/form_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

class FormView extends StatelessWidget {
  GlobalKey<FormState> _form = GlobalKey();
  var formController = GetIt.instance.get<FormController>();

  _submitForm() {
    if (_form.currentState.validate()) _form.currentState.save();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 40),
        child: Form(
          key: _form,
          child: Column(
            children: [
              Observer(
                builder: (_) => TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Email",
                  ),
                  validator: (val) => formController.validateEmail(val),
                  onSaved: (val) => formController.setField(val, 'email'),
                ),
              ),
              SizedBox(height: 20),
              Observer(
                builder: (_) => TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (val) => formController.validatePassword(val),
                  decoration: InputDecoration(
                    labelText: "Password",
                    border: OutlineInputBorder(),
                    errorText: null,
                  ),
                  onSaved: (val) => formController.setField(val, 'password'),
                ),
              ),
              FlatButton(
                onPressed: () {
                  _submitForm();
                  Navigator.of(context).pushNamed('/sucessLogin');
                },
                child: Text('Entrar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
