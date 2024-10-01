import 'package:flutter/material.dart';

void main() {
  runApp(const AppbarColorApp());
}

class AppbarColorApp extends StatefulWidget {
  const AppbarColorApp({super.key});

  @override
  State<AppbarColorApp> createState() => _AppbarColorAppState();
}

class _AppbarColorAppState extends State<AppbarColorApp> {
  bool colorChange = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Appbar Color App",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Appbar Color "),
          centerTitle: true,
          backgroundColor: (colorChange) ? Colors.pink : Colors.orange,
        ),
        body: const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("change Appbar color"),
            ],
        )),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            if (colorChange) {
              colorChange = false;
            } else {
              colorChange = true;
            }
            setState(() {});
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
