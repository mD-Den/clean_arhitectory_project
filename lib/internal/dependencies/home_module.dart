import 'package:clean_arhitectory_project/domain/repository/day_repository.dart';
import 'package:clean_arhitectory_project/domain/state/home/home_state.dart';
import 'package:clean_arhitectory_project/internal/dependencies/repository_module.dart';

class HomeModule {
  static HomeState homeState() {
    return HomeState(
      RepositoryModule.dayRepository() as DayRepository,
    );
  }
}
