import 'package:clean_arhitectory_project/data/api/service/sunrise_service.dart';

import '../../data/api/api_util.dart';

class ApiModule {
  static ApiUtil? _apiUtil;

  static ApiUtil? apiUtil() {
    if (_apiUtil == null) {
      _apiUtil = ApiUtil(SunriseService());
    }
    return _apiUtil;
  }
}
