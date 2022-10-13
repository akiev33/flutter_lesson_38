import 'package:flutter/material.dart';
import 'package:flutter_lesson_38/homework_lesson_38.dart';

void main() {
  runApp(const HomeWork());
}

// class MyApp extends StatefulWidget {
//   const MyApp({super.key});

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   int _counter = 0;
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(),
//         body: Center(
//           child: InheritedWidgetTest(
//             value: _counter,
//             child: const ExmapleText(),
//           ),
//         ),
//         floatingActionButton: FloatingActionButton(
//           child: const Icon(Icons.add),
//           onPressed: () {
//             _counter++;
//             setState(() {});
//           },
//         ),
//       ),
//     );
//   }
// }

// class InheritedWidgetTest extends InheritedWidget {
//   const InheritedWidgetTest({
//     super.key,
//     required Widget child,
//     required this.value,
//   }) : super(child: child);

//   final int value;

//   static InheritedWidgetTest? of(BuildContext context) {
//     return context.dependOnInheritedWidgetOfExactType<InheritedWidgetTest>();
//   }

//   @override
//   bool updateShouldNotify(InheritedWidgetTest oldWidget) {
//     return oldWidget.value != value;
//   }
// }

// class ExmapleText extends StatefulWidget {
//   const ExmapleText({
//     super.key,
//     // required this.value,
//   });

//   // final int value;
//   @override
//   State<ExmapleText> createState() => _ExmapleTextState();
// }

// class _ExmapleTextState extends State<ExmapleText> {
//   @override
//   Widget build(BuildContext context) {
//     final int value = context
//         .dependOnInheritedWidgetOfExactType<InheritedWidgetTest>()!
//         .value;
//     return Text(
//       value.toString(),
//       style: const TextStyle(fontSize: 30),
//     );
//   }
// }
