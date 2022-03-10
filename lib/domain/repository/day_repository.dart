import '../model/daya.dart';

abstract class DayRepository {
  Future<Day> getDay({required double latitude, required double longitude});
}
