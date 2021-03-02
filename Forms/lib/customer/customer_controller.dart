import 'package:Forms/form/form_controller.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';
import '../customer/customer_model.dart';
part 'customer_controller.g.dart';

class CustomerController = _CustomerControllerBase with _$CustomerController;

abstract class _CustomerControllerBase with Store {
  @observable
  Customer customer = GetIt.instance.get<Customer>();
  FormController formController = GetIt.instance.get<FormController>();

  @action
  savingData() {
    customer.email = formController.data['email'];
    customer.password = formController.data['password'];
  }
}
