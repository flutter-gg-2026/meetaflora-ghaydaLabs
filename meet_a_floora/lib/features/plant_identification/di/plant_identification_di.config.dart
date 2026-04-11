// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:meet_a_flora/core/network/dio_client.dart' as _i479;
import 'package:meet_a_flora/features/plant_identification/data/datasources/plant_identification_remote_data_source.dart'
    as _i220;
import 'package:meet_a_flora/features/plant_identification/data/repositories/plant_identification_repository_data.dart'
    as _i766;
import 'package:meet_a_flora/features/plant_identification/domain/repositories/plant_identification_repository_domain.dart'
    as _i558;
import 'package:meet_a_flora/features/plant_identification/domain/use_cases/plant_identification_use_case.dart'
    as _i268;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt initPlantIdentification({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.lazySingleton<_i220.BasePlantIdentificationRemoteDataSource>(
      () => _i220.PlantIdentificationRemoteDataSource(gh<_i479.DioClient>()),
    );
    gh.lazySingleton<_i558.PlantIdentificationRepositoryDomain>(
      () => _i766.PlantIdentificationRepositoryData(
        gh<_i220.BasePlantIdentificationRemoteDataSource>(),
      ),
    );
    gh.lazySingleton<_i268.PlantIdentificationUseCase>(
      () => _i268.PlantIdentificationUseCase(
        gh<_i558.PlantIdentificationRepositoryDomain>(),
      ),
    );
    return this;
  }
}
