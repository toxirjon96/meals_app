import 'package:meals_app/meals_app_library.dart';

class FilterScreen extends ConsumerWidget {
  const FilterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Filters'),
      ),
      body: Column(
        children: [
          FilterItem(
            value: ref.watch(filterProvider)[Filter.glutenFree]!,
            onChanged: (value) {
              ref
                  .read(filterProvider.notifier)
                  .setFilter(Filter.glutenFree, value);
            },
            title: "Gluten-Free",
            subTitle: "Only include gluten-free meals",
          ),
          FilterItem(
            value: ref.watch(filterProvider)[Filter.lactoseFree]!,
            onChanged: (value) {
              ref
                  .read(filterProvider.notifier)
                  .setFilter(Filter.lactoseFree, value);
            },
            title: "Lactose-Free",
            subTitle: "Only include lactose-free meals",
          ),
          FilterItem(
            value: ref.watch(filterProvider)[Filter.vegetarian]!,
            onChanged: (value) {
              ref
                  .read(filterProvider.notifier)
                  .setFilter(Filter.vegetarian, value);
            },
            title: "Vegetarian",
            subTitle: "Only include vegetarian meals",
          ),
          FilterItem(
            value: ref.watch(filterProvider)[Filter.vegan]!,
            onChanged: (value) {
              ref.read(filterProvider.notifier).setFilter(Filter.vegan, value);
            },
            title: "Vegan",
            subTitle: "Only include vegan meals",
          ),
        ],
      ),
    );
  }
}
