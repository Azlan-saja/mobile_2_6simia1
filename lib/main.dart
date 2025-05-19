import 'package:flutter/material.dart';
import 'package:master/provider/counter_provider.dart';
import 'package:master/screen/dashboard.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CounterProvider()),
      ],
      child: MaterialApp(
        title: 'Mobile 2',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
          fontFamily: 'Quicksand',
          appBarTheme: AppBarTheme(
            backgroundColor: Colors.deepPurple.shade900,
            foregroundColor: Colors.white,
            elevation: 0,
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
            backgroundColor: Colors.deepPurple.shade900,
            foregroundColor: Colors.white,
          )),
          drawerTheme: const DrawerThemeData(
            elevation: 10,
          ),
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
            backgroundColor: Colors.deepPurple.shade900,
            unselectedItemColor: Colors.white,
            selectedItemColor: Colors.deepPurple.shade300,
            selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
            elevation: 0,
          ),
        ),
        home: const Dashboard(),
      ),
    );
  }
}
