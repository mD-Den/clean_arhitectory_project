import 'package:clean_arhitectory_project/domain/repository/day_repository.dart';
import 'package:clean_arhitectory_project/internal/dependencies/api_module.dart';

import '../../data/repository/day_data_repository.dart';

class RepositoryModule {
  static late DayRepository _dayRepository;

  static DayRepository dayRepository() {
    if (_dayRepository == null) {
      _dayRepository = DayDataRepository(
        ApiModule.apiUtil(),
      );
    }
    return _dayRepository;
  }
}
