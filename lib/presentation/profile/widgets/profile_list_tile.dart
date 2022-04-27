import 'package:diyapp/extensions.dart';
import 'package:diyapp/resources/colors.dart';
import 'package:diyapp/resources/dimensions.dart';
import 'package:diyapp/resources/fonts.dart';
import 'package:flutter/material.dart';

class ProfileListTile extends StatelessWidget {
  const ProfileListTile({
    Key? key,
    required this.title,
    required this.subtitle,
    this.onPressed,
  }) : super(key: key);

  final String title;
  final String subtitle;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Text(
        title,
        style: const TextStyle(
          color: Colors.grey,
          fontFamily: Fonts.amalia,
          fontSize: 16,
        ),
      ),
      subtitle: Text(
        subtitle,
        style: TextStyle(
          color: context.theme.colorScheme.secondary,
          fontSize: 16,
          fontFamily: Fonts.amalia,
          fontWeight: FontWeight.bold,
        ),
      ),
      trailing: Visibility(
        visible: onPressed != null,
        child: RawMaterialButton(
          onPressed: onPressed,
          fillColor: ApplicationColors.white,
          child: const Icon(
            Icons.edit_outlined,
            size: 25,
            color: ApplicationColors.black,
          ),
          padding: const EdgeInsets.all(Dimensions.size4),
          shape: const CircleBorder(),
        ),
      ),
    );
  }
}
