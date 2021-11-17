// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:flutter/cupertino.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../routes/navigators/custom_navigator.dart' as _i4;
import '../routes/register_module.dart'
    as _i5; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.lazySingleton<_i3.GlobalKey<_i3.NavigatorState>>(
      () => registerModule.navigatorState);
  gh.factory<_i4.CustomNavigator>(
      () => _i4.CustomNavigator(get<_i3.GlobalKey<_i3.NavigatorState>>()));
  return get;
}

class _$RegisterModule extends _i5.RegisterModule {}
