import 'package:meals_app/meals_app_library.dart';

enum Filter {
  glutenFree,
  lactoseFree,
  vegetarian,
  vegan,
}

class FilterStateNotifier extends StateNotifier<Map<Filter, bool>> {
  FilterStateNotifier()
      : super({
          Filter.glutenFree: false,
          Filter.lactoseFree: false,
          Filter.vegetarian: false,
          Filter.vegan: false,
        });

  void setFilter(Filter filter, bool isChecked) {
    state = {...state, filter: isChecked};
  }

  void setFilters(Map<Filter, bool> activeFilters) {
    state = activeFilters;
  }
}

final filterProvider =
    StateNotifierProvider<FilterStateNotifier, Map<Filter, bool>>((ref) {
  return FilterStateNotifier();
});

final filterMealsProvider = Provider((ref) {
  final meals = ref.watch(mealProvider);
  final activeFilters = ref.watch(filterProvider);
  final availableMeals = meals.where((meal) {
    if (activeFilters[Filter.glutenFree]! && !meal.isGlutenFree) {
      return false;
    }
    if (activeFilters[Filter.lactoseFree]! && !meal.isLactoseFree) {
      return false;
    }
    if (activeFilters[Filter.vegetarian]! && !meal.isVegetarian) {
      return false;
    }
    if (activeFilters[Filter.vegan]! && !meal.isVegan) {
      return false;
    }
    return true;
  }).toList();
  return availableMeals;
});
