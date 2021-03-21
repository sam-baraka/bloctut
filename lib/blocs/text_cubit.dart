import 'package:flutter_bloc/flutter_bloc.dart';

class TextCubit extends Cubit<String> {
  TextCubit(String state) : super(state);

  storeText({String text}) {
    emit(text);
    print("saved $text");
  }
}
