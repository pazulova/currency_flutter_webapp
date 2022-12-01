import 'package:exhange_rates_flutter/routes/currency_routes.dart';
import 'package:exhange_rates_flutter/screens/home_currency.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'logic/home_cubit.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return 
    // BlocProvider(
    //   create: (context) => HomeCubit()..getData(),
    //   child: 
      MaterialApp(
        title: 'Currency App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        debugShowCheckedModeBanner: false,
        onGenerateRoute: CurrencyRoutes.instance.onGenerateRoute,
        initialRoute: "/home",
      
    );
  }
}