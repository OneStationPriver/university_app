import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:university_app/models/categorys/categorys.dart';
import 'package:university_app/models/coursers/coursers.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(FetchRecommendedState.loading()) FetchRecommendedState fetchRecommendedState,
    @Default(FetchCategorysState.loading()) FetchCategorysState fetchCategorysState,
    @Default(FetchTopCoursersState.loading()) FetchTopCoursersState fetchTopCoursersState,
  }) = _HomeState;
}

// primer fetch
@freezed 
class FetchRecommendedState with _$FetchRecommendedState {
  const factory FetchRecommendedState.loading() = FetchRecommendedStateLoading;
  const factory FetchRecommendedState.loaded(
    List<Coursers> listRecommended,
  ) = FetchRecommendedStateLoaded;
}

// segundo fetch
@freezed 
class FetchCategorysState with _$FetchCategorysState {
  const factory FetchCategorysState.loading() = FetchCategorysStateLoading;
  const factory FetchCategorysState.loaded(
    List<Categorys> listCategorys,
  ) = FetchCategorysStateLoaded;
}

// tercer fetch
@freezed 
class FetchTopCoursersState with _$FetchTopCoursersState {
  const factory FetchTopCoursersState.loading() = FetchTopCoursersStateLoading;
  const factory FetchTopCoursersState.loaded(
    List<Coursers> listTopCoursers,
  ) = FetchTopCoursersStateLoaded;
}