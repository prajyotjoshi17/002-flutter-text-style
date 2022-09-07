import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TextStyle',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      darkTheme: ThemeData.dark(),
      home: const MyHomePage(title: 'TextStyle - 24 parameters'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
                child: ListView(
              children: <Widget>[
                const Text(
                  "1. Inherit <!>",
                  style: TextStyle(inherit: true),
                ),
                const Divider(),
                const Text(
                  "2. Color",
                  style: TextStyle(color: Color.fromARGB(255, 55, 55, 226)),
                ),
                const Divider(),
                const Text(
                  "3. Background Color",
                  style: TextStyle(
                      backgroundColor: Color.fromARGB(255, 255, 86, 86)),
                ),
                const Divider(),
                const Text(
                  "3. Font Size",
                  style: TextStyle(fontSize: 10),
                ),
                const Divider(),
                const Text(
                  "4. Font Weight",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const Divider(),
                const Text(
                  "5. Font Style",
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
                const Divider(),
                const Text(
                  "6. Letter Spacing",
                  style: TextStyle(letterSpacing: 10),
                ),
                const Divider(),
                const Text(
                  "7. Word Spacing",
                  style: TextStyle(wordSpacing: 15),
                ),
                const Divider(),
                const Text(
                  "8. Text Baseline <!>",
                  style: TextStyle(textBaseline: TextBaseline.alphabetic),
                ),
                const Divider(),
                const Text(
                  '9. Height',
                  style: TextStyle(
                    height: 2,
                  ),
                ),
                const Divider(),
                const Text(
                  "10. Leading Distribution",
                  style: TextStyle(
                      height: 2,
                      leadingDistribution: TextLeadingDistribution.even),
                ),
                const Divider(),
                const Text(
                  "11. Locale <!>",
                  style: TextStyle(locale: Locale('en', 'IN')),
                ),
                const Divider(),
                Text("12. Foreground",
                    style: TextStyle(
                      foreground: Paint()
                        ..style = PaintingStyle.stroke
                        ..strokeWidth = 2
                        ..color = Colors.blue[700]!,
                    )),
                const Divider(),
                Text(
                  "13. Background",
                  style: TextStyle(
                    background: Paint()
                      ..style = PaintingStyle.fill
                      ..strokeWidth = 2
                      ..color = Colors.blue[700]!,
                  ),
                ),
                const Divider(),
                const Text(
                  "14. Shadows",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      shadows: [
                        Shadow(color: Colors.green, offset: Offset(10, 10))
                      ]),
                ),
                const Divider(),
                Row(
                  children: const [
                    Text("15. "),
                    Text(
                      " Font Feature  sub x1, x2",
                      style: TextStyle(fontFeatures: [
                        FontFeature.subscripts(),
                      ]),
                    ),
                    Text("  sup  X2",
                        style: TextStyle(
                          fontFeatures: [FontFeature.superscripts()],
                        ))
                  ],
                ),
                const Divider(),
                Row(
                  children: const [
                    Text("16. Decoration"),
                    Text(
                      " linethrough ",
                      style: TextStyle(decoration: TextDecoration.lineThrough),
                    ),
                    Text(
                      " underline ",
                      style: TextStyle(decoration: TextDecoration.underline),
                    ),
                    Text(
                      " overline ",
                      style: TextStyle(decoration: TextDecoration.overline),
                    ),
                  ],
                ),
                const Divider(),
                Row(
                  children: const [
                    Text("17-18-19. Decoration "),
                    Text(
                      " Color ",
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.redAccent),
                    ),
                    Text("      Style      |",
                        style: TextStyle(
                          decorationStyle: TextDecorationStyle.wavy,
                          decorationThickness: 3,
                          decorationColor: Color.fromARGB(137, 81, 228, 86),
                          decoration: TextDecoration.lineThrough,
                        )),
                    Text(" Thickness ",
                        style: TextStyle(
                          decorationThickness: 10,
                          decorationColor: Color.fromARGB(164, 250, 119, 43),
                          decoration: TextDecoration.lineThrough,
                        )),
                  ],
                ),
                const Divider(),
                const Text("20. debugLabel <!>",
                    style: TextStyle(
                      debugLabel: "this is debug label",
                    )),
                const Divider(),
                const Text("21. Font Family <!>"),
                const Divider(),
                const Text("22. Font Family Fallback <!>"),
                const Divider(),
                const Text("23. package <!>"),
                const Divider(),
                Row(
                  children: const [
                    Text("24. overflow <!>"),
                    Text(" clip",
                        style: TextStyle(overflow: TextOverflow.clip)),
                    Text(" ellipsis",
                        style: TextStyle(overflow: TextOverflow.ellipsis)),
                    Text(" fade",
                        style: TextStyle(overflow: TextOverflow.fade)),
                    Text("<!>")
                  ],
                ),
              ], //
            )),
            const SizedBox(
              height: 15,
            )
          ],
        ),
      ),
    );
  }
}
