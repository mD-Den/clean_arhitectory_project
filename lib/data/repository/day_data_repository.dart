import 'package:clean_arhitectory_project/data/api/api_util.dart';
import 'package:clean_arhitectory_project/domain/repository/day_repository.dart';

import '../../domain/model/day.dart';

class DayDataRepository extends DayRepository {
  final ApiUtil _apiUtil;

  DayDataRepository(this._apiUtil);

  @override
  Future<Day> getDay({required double latitude, required double longitude}) {
    return _apiUtil.getDay(latitude: latitude, longitude: longitude);
  }
}
