import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theatre/core/navigation/app_router.dart';
import 'package:theatre/core/theme/app_theme.dart';
import 'package:theatre/presentation/cubit/role_cubit.dart';

class TheatreApp extends StatelessWidget {
  // const TheatreApp({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => RoleCubit()),
      ],
      child: MaterialApp.router(
        title: 'Theatre App',
        routerConfig: _appRouter.config(),
        theme: AppThemes.lightTheme,
        darkTheme: AppThemes.darkTheme,
      ),
    );
  }
}
