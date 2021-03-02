// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'form_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$FormController on _FormControllerBase, Store {
  final _$dataAtom = Atom(name: '_FormControllerBase.data');

  @override
  Map<String, dynamic> get data {
    _$dataAtom.reportRead();
    return super.data;
  }

  @override
  set data(Map<String, dynamic> value) {
    _$dataAtom.reportWrite(value, super.data, () {
      super.data = value;
    });
  }

  final _$_FormControllerBaseActionController =
      ActionController(name: '_FormControllerBase');

  @override
  dynamic setField(String input, String idData) {
    final _$actionInfo = _$_FormControllerBaseActionController.startAction(
        name: '_FormControllerBase.setField');
    try {
      return super.setField(input, idData);
    } finally {
      _$_FormControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String validateEmail(String input) {
    final _$actionInfo = _$_FormControllerBaseActionController.startAction(
        name: '_FormControllerBase.validateEmail');
    try {
      return super.validateEmail(input);
    } finally {
      _$_FormControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String validatePassword(String input) {
    final _$actionInfo = _$_FormControllerBaseActionController.startAction(
        name: '_FormControllerBase.validatePassword');
    try {
      return super.validatePassword(input);
    } finally {
      _$_FormControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
data: ${data}
    ''';
  }
}
