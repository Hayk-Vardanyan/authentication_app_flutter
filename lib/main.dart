import 'package:flutter/material.dart';
import 'package:untitled3/themes/dark_theme.dart';

import 'providers/screen_service.dart';
import 'store/store.dart';
import 'themes/light_theme.dart';

void main() {
  registerStoreGetIt();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextHeightBehavior(
      textHeightBehavior: const TextHeightBehavior(
        leadingDistribution: TextLeadingDistribution.even,
      ),
      child: MaterialApp.router(
        theme: lightTheme,
        darkTheme: darkTheme,
        routerDelegate: router.delegate(
          navigatorObservers: () => [],
        ),
        builder: (context, child) => MediaQuery(
          data: MediaQuery.of(context).copyWith(
            textScaleFactor: 1,
          ),
          child: child!,
        ),
        routeInformationParser: router.defaultRouteParser(),
      ),
    );
  }
}
