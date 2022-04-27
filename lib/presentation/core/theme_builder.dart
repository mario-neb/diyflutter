import 'package:diyapp/application/settings/theme/theme_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

typedef ThemeModeBuilder = Widget Function(ThemeMode themeMode);

class ThemeBuilder extends StatelessWidget {
  const ThemeBuilder({
    Key? key,
    required this.builder,
  }) : super(key: key);

  final ThemeModeBuilder builder;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: (_, state) => builder(state.themeMode),
    );
  }
}
