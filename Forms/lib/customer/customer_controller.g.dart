// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CustomerController on _CustomerControllerBase, Store {
  final _$customerAtom = Atom(name: '_CustomerControllerBase.customer');

  @override
  Customer get customer {
    _$customerAtom.reportRead();
    return super.customer;
  }

  @override
  set customer(Customer value) {
    _$customerAtom.reportWrite(value, super.customer, () {
      super.customer = value;
    });
  }

  final _$_CustomerControllerBaseActionController =
      ActionController(name: '_CustomerControllerBase');

  @override
  dynamic savingData() {
    final _$actionInfo = _$_CustomerControllerBaseActionController.startAction(
        name: '_CustomerControllerBase.savingData');
    try {
      return super.savingData();
    } finally {
      _$_CustomerControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
customer: ${customer}
    ''';
  }
}
