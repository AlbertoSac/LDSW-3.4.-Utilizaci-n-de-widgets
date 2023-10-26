import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp(
        title: 'Namer App',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        ),
        home: MyHomePage(),
      ),
    );
  }
}

class MyAppState extends ChangeNotifier {
  var current = WordPair.random();
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Texto',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  color: Colors.blue,
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'Row 1',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Container(
                  color: Colors.orange,
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'Row 2',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  color: Colors.red,
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'Column 1',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Container(
                  color: Colors.purple,
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'Column 2',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                   width: 200,
                   height: 100,
                   color: Colors.red,
                ),
                Container(
                   width: 100,
                   height: 50,
                   color: Colors.green,
                ),
                Container(
                   width: 50,
                   height: 25,
                   color: Colors.blue,
                        ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
