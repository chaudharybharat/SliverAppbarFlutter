import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              // title: Text("Sliver AppBar"),
              backgroundColor: Colors.teal[800],
              pinned: true,
              floating: true,
              snap: true,
              expandedHeight: 150,
              flexibleSpace: FlexibleSpaceBar(
                // collapseMode: CollapseMode.parallax,
                title: Text(
                  "Sliver AppBar",
                ),
                background: DecoratedBox(
                    position: DecorationPosition.foreground,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.center,
                            colors: <Color>[
                          Colors.teal[800]!,
                          Colors.transparent
                        ])),
                    child: Image.asset("assets/images/dog.jpg",
                        fit: BoxFit.fitWidth)),
              ),
            ),
            SliverFixedExtentList(
              itemExtent: 50, // I'm forcing item heights
              delegate: SliverChildBuilderDelegate(
                (context, index) => ListTile(
                  title: Text(
                    'Flutter demo $index',
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
                childCount: 50,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
