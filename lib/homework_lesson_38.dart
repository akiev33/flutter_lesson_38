import 'package:flutter/material.dart';

class HomeWork extends StatefulWidget {
  const HomeWork({super.key});

  @override
  State<HomeWork> createState() => _HomeWorkState();
}

class _HomeWorkState extends State<HomeWork> {
  Color color = Colors.blue;

  void red() {
    color = Colors.red;
    setState(() {});
  }

  void green() {
    color = Colors.green;
    setState(() {});
  }

  void purple() {
    color = Colors.purple;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('inherit'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ColorsInh(
                color: color,
                child: const AnimatedCounterWidget(),
              ),
            ],
          ),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            FloatingActionButton(
              onPressed: red,
              backgroundColor: Colors.red,
            ),
            FloatingActionButton(
              onPressed: green,
              backgroundColor: Colors.green,
            ),
            FloatingActionButton(
              onPressed: purple,
              backgroundColor: Colors.purple,
            ),
          ],
        ),
      ),
    );
  }
}

class AnimatedCounterWidget extends StatelessWidget {
  const AnimatedCounterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final color =
        context.dependOnInheritedWidgetOfExactType<ColorsInh>()!.color;

    return AnimatedContainer(
      duration: const Duration(seconds: 1),
      height: color.blue * 2,
      width: color.blue * 2,
      color: color,
    );
  }
}

class ColorsInh extends InheritedWidget {
  const ColorsInh({super.key, required Widget child, required this.color})
      : super(child: child);

  final Color color;

  static ColorsInh? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ColorsInh>();
  }

  @override
  bool updateShouldNotify(ColorsInh oldWidget) {
    return oldWidget.color != color;
  }
}
