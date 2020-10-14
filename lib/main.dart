import 'package:bloc/bloc.dart';
import 'package:btn_bar/TimelineCubit.dart';
import 'package:btn_bar/pages/home.dart';
import 'package:btn_bar/provider/task.dart';
import 'package:btn_bar/timeline_observer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import 'pages/timeline_page.dart';

void main() {
  Bloc.observer = TimelineObserver();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => TimelineCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
            primaryColor: Color(0xFFC41A3B),
            primaryColorLight: Color(0xFFFBE0E6),
            accentColor: Color(0xFF1B1F32)),
        home: TimelinePage(),
      ),
    );
  }
}
