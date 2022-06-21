import 'package:flutter/material.dart';
import 'module_one/training _result/complete_training_screen.dart';
import 'module_one/training _result/now_screen.dart';
import 'module_one/training _result/training_result_screen.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
       home:  TrainingResultScreen(),
      //home: CompleteTrainingScreen(),
    );
  }
}

