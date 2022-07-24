import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;

  // ignore: use_key_in_widget_constructors
  const Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      //margin: const EdgeInsets.only(top: 10),
      margin: const EdgeInsets.fromLTRB(110, 10, 110, 0),
      //margin: const EdgeInsets.only(top: 10),
      child: ElevatedButton(child: Text(answerText), onPressed: selectHandler),
    );
  }
}
