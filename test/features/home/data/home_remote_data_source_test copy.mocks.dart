// Mocks generated by Mockito 5.4.4 from annotations
// in food_test/test/features/home/data/home_remote_data_source_test%20copy.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i5;
import 'dart:io' as _i7;

import 'package:mockito/mockito.dart' as _i1;
import 'package:mockito/src/dummies.dart' as _i4;
import 'package:util_commons/utils/network/apiconnect.dart' as _i3;
import 'package:util_commons/utils/network/config/response/request_base.dart'
    as _i6;
import 'package:util_commons/utils/network/config/response/response.dart'
    as _i2;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeResponseBase_0 extends _i1.SmartFake implements _i2.ResponseBase {
  _FakeResponseBase_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [ApiConnect].
///
/// See the documentation for Mockito's code generation for more information.
class MockApiConnect extends _i1.Mock implements _i3.ApiConnect {
  MockApiConnect() {
    _i1.throwOnMissingStub(this);
  }

  @override
  set baseUrl(String? _baseUrl) => super.noSuchMethod(
        Invocation.setter(
          #baseUrl,
          _baseUrl,
        ),
        returnValueForMissingStub: null,
      );

  @override
  int get timeOutMinutes => (super.noSuchMethod(
        Invocation.getter(#timeOutMinutes),
        returnValue: 0,
      ) as int);

  @override
  String get typeService => (super.noSuchMethod(
        Invocation.getter(#typeService),
        returnValue: _i4.dummyValue<String>(
          this,
          Invocation.getter(#typeService),
        ),
      ) as String);

  @override
  String get jsonType => (super.noSuchMethod(
        Invocation.getter(#jsonType),
        returnValue: _i4.dummyValue<String>(
          this,
          Invocation.getter(#jsonType),
        ),
      ) as String);

  @override
  String get jsonConfiguration => (super.noSuchMethod(
        Invocation.getter(#jsonConfiguration),
        returnValue: _i4.dummyValue<String>(
          this,
          Invocation.getter(#jsonConfiguration),
        ),
      ) as String);

  @override
  _i5.Future<_i2.ResponseBase> executeGet({
    required String? path,
    Map<String, dynamic>? params,
    Map<String, String>? headers,
    String? key,
    String? otherAuthority,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #executeGet,
          [],
          {
            #path: path,
            #params: params,
            #headers: headers,
            #key: key,
            #otherAuthority: otherAuthority,
          },
        ),
        returnValue: _i5.Future<_i2.ResponseBase>.value(_FakeResponseBase_0(
          this,
          Invocation.method(
            #executeGet,
            [],
            {
              #path: path,
              #params: params,
              #headers: headers,
              #key: key,
              #otherAuthority: otherAuthority,
            },
          ),
        )),
      ) as _i5.Future<_i2.ResponseBase>);

  @override
  _i5.Future<_i2.ResponseBase> executePost(
    String? request, {
    _i6.RequestBase? requestData,
    String? otherAuthority,
    String? path,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #executePost,
          [request],
          {
            #requestData: requestData,
            #otherAuthority: otherAuthority,
            #path: path,
          },
        ),
        returnValue: _i5.Future<_i2.ResponseBase>.value(_FakeResponseBase_0(
          this,
          Invocation.method(
            #executePost,
            [request],
            {
              #requestData: requestData,
              #otherAuthority: otherAuthority,
              #path: path,
            },
          ),
        )),
      ) as _i5.Future<_i2.ResponseBase>);

  @override
  _i5.Future<_i2.ResponseBase> executeMultipart({
    required String? path,
    required _i7.File? file,
    String? method = r'POST',
    String? fieldName = r'file',
    Map<String, dynamic>? params,
    Map<String, String>? headers,
    String? key,
    String? otherAuthority,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #executeMultipart,
          [],
          {
            #path: path,
            #file: file,
            #method: method,
            #fieldName: fieldName,
            #params: params,
            #headers: headers,
            #key: key,
            #otherAuthority: otherAuthority,
          },
        ),
        returnValue: _i5.Future<_i2.ResponseBase>.value(_FakeResponseBase_0(
          this,
          Invocation.method(
            #executeMultipart,
            [],
            {
              #path: path,
              #file: file,
              #method: method,
              #fieldName: fieldName,
              #params: params,
              #headers: headers,
              #key: key,
              #otherAuthority: otherAuthority,
            },
          ),
        )),
      ) as _i5.Future<_i2.ResponseBase>);

  @override
  _i5.Future<_i2.ResponseBase> connectionInternetAvailable() =>
      (super.noSuchMethod(
        Invocation.method(
          #connectionInternetAvailable,
          [],
        ),
        returnValue: _i5.Future<_i2.ResponseBase>.value(_FakeResponseBase_0(
          this,
          Invocation.method(
            #connectionInternetAvailable,
            [],
          ),
        )),
      ) as _i5.Future<_i2.ResponseBase>);

  @override
  void validateStatusCode(
    int? statusCode,
    _i2.ResponseBase? response,
  ) =>
      super.noSuchMethod(
        Invocation.method(
          #validateStatusCode,
          [
            statusCode,
            response,
          ],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void buildErrorGeneral(_i2.ResponseBase? response) => super.noSuchMethod(
        Invocation.method(
          #buildErrorGeneral,
          [response],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void buildTimeOut(_i2.ResponseBase? response) => super.noSuchMethod(
        Invocation.method(
          #buildTimeOut,
          [response],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void buildException(_i2.ResponseBase? response) => super.noSuchMethod(
        Invocation.method(
          #buildException,
          [response],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void setBodyJson(
    String? bodyResponse,
    _i2.ResponseBase? response,
  ) =>
      super.noSuchMethod(
        Invocation.method(
          #setBodyJson,
          [
            bodyResponse,
            response,
          ],
        ),
        returnValueForMissingStub: null,
      );
}
