import 'package:meals_app/meals_app_library.dart';

class FavouriteMealStateNotifier extends StateNotifier<List<Meal>> {
  FavouriteMealStateNotifier() : super([]);

  bool toggleMealFavouriteStatus(Meal meal) {
    if (state.contains(meal)) {
      state = state.where((e) => e.id != meal.id).toList();
      return true;
    } else {
      state = [...state, meal];
      return false;
    }
  }
}

final favouriteMealProvider =
    StateNotifierProvider<FavouriteMealStateNotifier, List<Meal>>(
  (ref) => FavouriteMealStateNotifier(),
);
