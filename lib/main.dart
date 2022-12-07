import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ElevatedButton(onPressed: (){
            Navigator.push(
              context, MaterialPageRoute(
                builder: ((context) {
              return const Activity();
            }),
            ),
          );
          }, 
          child: const Text(
            "Go Activity 1"),
          ),
          ElevatedButton(onPressed: (){
            Navigator.push(
              context, MaterialPageRoute(
                builder: (context) => 
                const Activity1(),
                ),
                );
              }, 
              child: const Text(
                "Go Activity 2")),
        ],
      ),
    );
  }
}

class Activity extends StatelessWidget {
  const Activity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Activity1"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (() {
        Navigator.push(
          context, MaterialPageRoute(
            builder: (context) => 
            const Activity1(),
            ),
          );
      }),
      child: const Text(
        "Go Activity 2"),
        ),
      ),
    );
  }
}

class Activity1 extends StatelessWidget {
  const Activity1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Activity2"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (() {
        Navigator.push(
          context, MaterialPageRoute(
            builder: (context) => 
            const Activity(),
            ),
          );
      }),
      child: const Text(
        "Go Activity 2"),
        ),
      ),
    );
  }
}
