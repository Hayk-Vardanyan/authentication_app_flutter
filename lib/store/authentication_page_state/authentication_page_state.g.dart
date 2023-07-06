// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authentication_page_state.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AuthenticationState on _AuthenticationState, Store {
  late final _$currentIndexAtom =
      Atom(name: '_AuthenticationState.currentIndex', context: context);

  @override
  int get currentIndex {
    _$currentIndexAtom.reportRead();
    return super.currentIndex;
  }

  @override
  set currentIndex(int value) {
    _$currentIndexAtom.reportWrite(value, super.currentIndex, () {
      super.currentIndex = value;
    });
  }

  late final _$_AuthenticationStateActionController =
      ActionController(name: '_AuthenticationState', context: context);

  @override
  dynamic onTap(int index) {
    final _$actionInfo = _$_AuthenticationStateActionController.startAction(
        name: '_AuthenticationState.onTap');
    try {
      return super.onTap(index);
    } finally {
      _$_AuthenticationStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
currentIndex: ${currentIndex}
    ''';
  }
}
