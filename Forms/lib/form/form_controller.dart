import 'package:mobx/mobx.dart';
part 'form_controller.g.dart';

class FormController = _FormControllerBase with _$FormController;

abstract class _FormControllerBase with Store {
  @observable
  Map<String, dynamic> data = {
    'email': '',
    'password': '',
  };

  @action
  setField(String input, String idData) => data[idData] = input;

  @action
  String validateEmail(String input) {
    if (input.isEmpty)
      return "Campo obrigatório";
    else if (!input.contains('@')) return "Informe um email válido";
    return null;
  }

  @action
  String validatePassword(String input) {
    if (input.isEmpty) return "Campo obrigatório";
    return null;
  }
}
