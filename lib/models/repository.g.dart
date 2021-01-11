// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repository.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Repository on _Repository, Store {
  final _$idAtom = Atom(name: '_Repository.id');

  @override
  int get id {
    _$idAtom.reportRead();
    return super.id;
  }

  @override
  set id(int value) {
    _$idAtom.reportWrite(value, super.id, () {
      super.id = value;
    });
  }

  final _$nameAtom = Atom(name: '_Repository.name');

  @override
  String get name {
    _$nameAtom.reportRead();
    return super.name;
  }

  @override
  set name(String value) {
    _$nameAtom.reportWrite(value, super.name, () {
      super.name = value;
    });
  }

  final _$user_repositoryAtom = Atom(name: '_Repository.user_repository');

  @override
  String get user_repository {
    _$user_repositoryAtom.reportRead();
    return super.user_repository;
  }

  @override
  set user_repository(String value) {
    _$user_repositoryAtom.reportWrite(value, super.user_repository, () {
      super.user_repository = value;
    });
  }

  final _$avatar_urlAtom = Atom(name: '_Repository.avatar_url');

  @override
  String get avatar_url {
    _$avatar_urlAtom.reportRead();
    return super.avatar_url;
  }

  @override
  set avatar_url(String value) {
    _$avatar_urlAtom.reportWrite(value, super.avatar_url, () {
      super.avatar_url = value;
    });
  }

  final _$urlAtom = Atom(name: '_Repository.url');

  @override
  String get url {
    _$urlAtom.reportRead();
    return super.url;
  }

  @override
  set url(String value) {
    _$urlAtom.reportWrite(value, super.url, () {
      super.url = value;
    });
  }

  @override
  String toString() {
    return '''
id: ${id},
name: ${name},
user_repository: ${user_repository},
avatar_url: ${avatar_url},
url: ${url}
    ''';
  }
}
