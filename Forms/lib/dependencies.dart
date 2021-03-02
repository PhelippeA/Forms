import 'package:Forms/customer/customer_controller.dart';
import 'package:Forms/customer/customer_model.dart';
import 'package:Forms/form/form_controller.dart';
import 'package:get_it/get_it.dart';

class Dependencies {
  static void register() {
    GetIt.I.registerLazySingleton<Customer>(() => Customer());
    GetIt.I.registerLazySingleton<CustomerController>(() => CustomerController());
    GetIt.I.registerLazySingleton<FormController>(() => FormController());
  }
}
