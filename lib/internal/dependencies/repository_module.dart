import 'package:clean_arhitectory_project/data/api/api_util.dart';
import 'package:clean_arhitectory_project/domain/repository/day_repository.dart';
import 'package:clean_arhitectory_project/internal/dependencies/api_module.dart';

import '../../data/repository/day_data_repository.dart';

class RepositoryModule {
  static DayRepository? _dayRepository;

  static DayRepository? dayRepository() {
    if (_dayRepository == null) {
      _dayRepository = DayDataRepository(
        ApiModule.apiUtil() as ApiUtil,
      );
    }
    return _dayRepository;
  }
}
