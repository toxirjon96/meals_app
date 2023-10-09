import 'package:meals_app/meals_app_library.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({
    required this.title,
    required this.iconData,
    required this.onTap,
    super.key,
  });

  final String title;
  final IconData iconData;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        iconData,
        size: 26,
        color: Theme.of(context).colorScheme.onBackground,
      ),
      title: Text(
        title,
        style: Theme.of(context).textTheme.titleSmall!.copyWith(
            color: Theme.of(context).colorScheme.onBackground, fontSize: 26),
      ),
      onTap: onTap,
    );
  }
}
