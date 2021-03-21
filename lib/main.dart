import 'package:cubit_kendi/blocs/text_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'blocs/simple_bloc_observer.dart';
import 'home_page.dart';

void main() {
  Bloc.observer = SimpleBlocObserver();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TextCubit(""),
      child: MaterialApp(
        title: "Kendi",
        home: HomePage(),
      ),
    );
  }
}
