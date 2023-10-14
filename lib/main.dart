import 'package:flutter/material.dart';
import 'package:my_todo/view/tasks_screen.dart';

void main () => runApp(const MainScreen()) ;


class MainScreen extends StatelessWidget {
  const MainScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellow)
    ),
        home: const TasksScreen() ,
    );
  }
}
