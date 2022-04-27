import 'package:diyapp/application/settings/login_method/login_method_bloc.dart';
import 'package:diyapp/domain/settings/login_method/login_method.dart';
import 'package:diyapp/extensions.dart';
import 'package:diyapp/presentation/settings/widgets/circular_checkbox.dart';
import 'package:diyapp/presentation/widgets/circle.dart';
import 'package:diyapp/presentation/widgets/custom_bottom_sheet.dart';
import 'package:diyapp/resources/colors.dart';
import 'package:diyapp/resources/dimensions.dart';
import 'package:diyapp/resources/font_sizes.dart';
import 'package:diyapp/resources/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginMethodChangeBottomSheet extends StatelessWidget {
  const LoginMethodChangeBottomSheet({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<LoginMethodBloc>();
    final availableLoginMethods = bloc.state.availableLoginMethods;
    final currentLoginMethod = bloc.state.loginMethod;
    return CustomBottomSheet(
      showCancelButton: true,
      child: Column(
          mainAxisSize: MainAxisSize.min,
          children: availableLoginMethods
              .map((lm) => _LoginMethodListTile(
                    loginMethod: lm,
                    isSelected: currentLoginMethod == lm,
                    onPressed: () {
                      bloc.add(LoginMethodEvent.loginMethodSaved(lm));
                      context.navigator.pop();
                    },
                  ))
              .toList()),
    );
  }
}

class _LoginMethodListTile extends StatelessWidget {
  const _LoginMethodListTile({
    Key? key,
    required this.loginMethod,
    required this.isSelected,
    this.onPressed,
  }) : super(key: key);

  final LoginMethod loginMethod;
  final bool isSelected;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onPressed,
      leading: Circle(
        color: ApplicationColors.blackHaze,
        padding: const EdgeInsets.all(Dimensions.size8),
        child: SvgPicture.asset(loginMethod.asset),
      ),
      title: Text(
        loginMethod.value.capitalize(),
        style: const TextStyle(
            fontFamily: Fonts.amalia,
            fontWeight: FontWeight.bold,
            fontSize: FontSizes.size14,
            color: ApplicationColors.black),
      ),
      trailing: Visibility(
        visible: isSelected,
        child: const CircularCheckbox(),
      ),
    );
  }
}
