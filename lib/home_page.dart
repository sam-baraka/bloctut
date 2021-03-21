import 'package:cubit_kendi/another_page.dart';
import 'package:cubit_kendi/blocs/text_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TextEditingController textCOntroller = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text("Kendi Bloc Tutorial"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextFormField(
              onChanged: (value) {
                context.read<TextCubit>().storeText(text: value);
              },
              // controller: textCOntroller,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: "Text"),
            ),
            SizedBox(
              height: 20,
            ),
            CupertinoButton(
                color: Colors.blue,
                child: Text("Kendi"),
                onPressed: () {
                  // context
                  //     .read<TextCubit>()
                  //     .storeText(text: textCOntroller.text);
                }),
            SizedBox(
              height: 20,
            ),
            CupertinoButton(
                color: Colors.blue,
                child: Text("Next Page"),
                onPressed: () {
                  Navigator.push(
                      context,
                      (CupertinoPageRoute(
                          builder: (builder) => AnotherPage())));
                }),
            SizedBox(
              height: 20,
            ),
            Text(context.watch<TextCubit>().state,
                style: TextStyle(
                  fontSize: 30,
                ))
          ],
        ),
      ),
    );
  }
}
