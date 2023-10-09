library meals_app_library;

//core
export 'package:flutter/material.dart';
export 'package:google_fonts/google_fonts.dart';
export 'package:transparent_image/transparent_image.dart';
export 'package:flutter_riverpod/flutter_riverpod.dart';

//provider
export 'package:meals_app/src/provider/meal_provider.dart';
export 'package:meals_app/src/provider/state_notifier/favourite_state_notifier.dart';
export 'package:meals_app/src/provider/state_notifier/filter_state_notifier.dart';

//page
export 'package:meals_app/src/page/category_page/category_screen.dart';
export 'package:meals_app/src/page/category_page/widget/category_item.dart';

export 'package:meals_app/src/page/meals_page/meals_screen.dart';
export 'package:meals_app/src/page/meals_page/widget/meal_item.dart';
export 'package:meals_app/src/page/meals_page/widget/meal_item_trait.dart';
export 'package:meals_app/src/page/meals_page/widget/meal_details.dart';

export 'package:meals_app/src/page/tab/tab_screen.dart';

export 'package:meals_app/src/page/drawer/main_drawer.dart';
export 'package:meals_app/src/page/drawer/widget/drawer_item.dart';

export 'package:meals_app/src/page/filter_page/filter_screen.dart';
export 'package:meals_app/src/page/filter_page/widget/filter_item.dart';

//model
export 'package:meals_app/src/model/category.dart';
export 'package:meals_app/src/model/meal.dart';

//data
export 'package:meals_app/src/data/dummy_data.dart';
