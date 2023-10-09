import 'package:meals_app/meals_app_library.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({
    required this.onSelectItem,
    super.key,
  });

  final void Function(String action) onSelectItem;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              colors: [
                Theme.of(context).colorScheme.primaryContainer,
                Theme.of(context).colorScheme.primaryContainer.withOpacity(0.8),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            )),
            child: Row(
              children: [
                Icon(
                  Icons.fastfood,
                  size: 48,
                  color: Theme.of(context).colorScheme.primary,
                ),
                const SizedBox(width: 18),
                Text(
                  'Cooking Up!',
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                ),
              ],
            ),
          ),
          DrawerItem(
            title: "Meals",
            iconData: Icons.restaurant,
            onTap: () {
              onSelectItem("meal");
            },
          ),
          DrawerItem(
            title: "Filters",
            iconData: Icons.settings,
            onTap: () {
              onSelectItem("filter");
            },
          ),
        ],
      ),
    );
  }
}
