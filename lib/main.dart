import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:tourism_app/Helper/app_helper.dart';
import 'package:tourism_app/firebase_options.dart';
import 'package:tourism_app/generated/l10n.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:tourism_app/splash/splash.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(DevicePreview(builder: (context) => MyApp()));
  // runApp(DevicePreview(

  //   builder: (context) => const MyApp(),
  //   enabled: false,
  // ));
  // runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  static void setLocale(BuildContext context, Locale newLocale) async {
    _MyAppState? state = context.findAncestorStateOfType<_MyAppState>();
    state?.changeLanguage(newLocale);
  }

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Locale _locale = const Locale('en');

  changeLanguage(Locale locale) {
    setState(() {
      _locale = locale;
    });
    AppHelper.setLocal(_locale);
  }

  // This widget is the root of your application.`
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: _locale,
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xff6C3428)),
        useMaterial3: true,
      ),
      home: const Splash(),
    );
  }
}
//Splash
//ChangeLanguage
//mohammedelghazouly79@gmail.com