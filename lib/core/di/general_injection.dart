import 'package:food_test/core/const/configuration_api.dart';
import 'package:food_test/core/utils/country_converter.dart';
import 'package:injector/injector.dart';
import 'package:util_commons/utils/network/apiconnect.dart';

class GeneralInjection {
  void register() {
    Injector.appInstance
      ..registerDependency<ApiConnect>(() {
        return ApiConnect(baseUrl);
      })
      ..registerDependency<CountryCodeConverter>(() {
        return CountryCodeConverter();
      });
  }
}
