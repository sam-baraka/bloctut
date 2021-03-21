import 'package:cubit_kendi/blocs/text_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AnotherPage extends StatefulWidget {
  @override
  _AnotherPageState createState() => _AnotherPageState();
}

class _AnotherPageState extends State<AnotherPage> {
  @override
  Widget build(BuildContext context) {
    String text = context.read<TextCubit>().state;
    return Scaffold(
      appBar: AppBar(
        title: Text("Sam Bloc Tutorial"),
      ),
      body: Center(
        child: Text(text),
      ),
    );
  }
}
