import 'package:meals_app/meals_app_library.dart';

class FilterItem extends StatelessWidget {
  const FilterItem({
    required this.value,
    required this.onChanged,
    required this.title,
    required this.subTitle,
    super.key,
  });

  final bool value;
  final void Function(bool value) onChanged;
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      title: Text(
        title,
        style: Theme.of(context).textTheme.titleLarge!.copyWith(
              color: Theme.of(context).colorScheme.onBackground,
            ),
      ),
      subtitle: Text(
        subTitle,
        style: Theme.of(context).textTheme.labelMedium!.copyWith(
              color: Theme.of(context).colorScheme.onBackground,
            ),
      ),
      activeColor: Theme.of(context).colorScheme.tertiary,
      contentPadding: const EdgeInsets.only(left: 34, right: 22),
      value: value,
      onChanged: onChanged,
    );
  }
}
