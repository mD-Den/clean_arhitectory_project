import 'package:clean_arhitectory_project/data/api/model/api_day.dart';
import 'package:clean_arhitectory_project/data/api/request/get_day_body.dart';
import 'package:dio/dio.dart';

class SunriseService {
  static const _BASE_URL = 'https://apiш.sunrise-sunset.org';

  final Dio _dio = Dio(
    BaseOptions(baseUrl: _BASE_URL),
  );

  Future<ApiDay> getDay(GetDayBody body) async {
    final response = await _dio.get(
      '/json',
      queryParameters: body.toApi(),
    );
    return ApiDay.fromApi(response.data);
  }
}
