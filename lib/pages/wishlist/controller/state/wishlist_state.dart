import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:university_app/models/categorys/categorys.dart';
import 'package:university_app/models/coursers/coursers.dart';
import 'package:university_app/models/wishlists/wishlists.dart';

part 'wishlist_state.freezed.dart';

@freezed
class wishlistState with _$wishlistState {
  const factory wishlistState({
    @Default(FetchWishlistState.loading()) FetchWishlistState fetchWishlistState,
  }) = _wishlistState;
}

@freezed 
class FetchWishlistState with _$FetchWishlistState {
  const factory FetchWishlistState.loading() = FetchWishlistStateLoading;
  const factory FetchWishlistState.loaded(
    List<Wishlists> listWishlist,
  ) = FetchWishlistStateLoaded;
}