import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScores;
  final VoidCallback resetquiz;

  Result(this.totalScores, this.resetquiz);

  String get resultPhrase {
    String resultText;
    print(totalScores);
    if (totalScores >= 16) {
      resultText =
          'Your scores are $totalScores, You are awesome and soo innocent!';
    } else if (totalScores >= 12) {
      resultText = 'Your scores are $totalScores, Pretty likeable! ';
    } else if (totalScores >= 8) {
      resultText = 'Your scores are $totalScores,  You are so... strange!';
    } else {
      resultText = 'Your scores are $totalScores, you are so bad!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: const TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          ElevatedButton(
              child: const Text('Restart Quiz'), onPressed: resetquiz),
        ],
      ),
    );
  }
}
