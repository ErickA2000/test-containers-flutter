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
      title: 'Containers Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: /*Column(
        children: [
          Center(
            heightFactor: 3,
            child: Container(
              color: Colors.deepPurpleAccent,
              child: const Text('Texto en center y contenedor',
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 20
                ),
              ),
            ),
          ),*/
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Icon(Icons.home, color: Colors.cyan,),
                  Icon(Icons.android, color: Colors.blue,),
                  Icon(Icons.build, color: Colors.purple,),
                  Icon(Icons.settings, color: Colors.red,),
                  Icon(Icons.access_alarm, color: Colors.pink,),
                  Icon(Icons.account_circle, color: Colors.amber,)
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(Icons.home, color: Colors.blue,),
                  Icon(Icons.android, color: Colors.blue,),
                  Icon(Icons.build, color: Colors.blue,),
                  Icon(Icons.settings, color: Colors.blue,),
                  Icon(Icons.access_alarm, color: Colors.blue,),
                  Icon(Icons.account_circle, color: Colors.blue,)
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.home, color: Colors.purple,),
                  Icon(Icons.android, color: Colors.purple,),
                  Icon(Icons.build, color: Colors.purple,),
                  Icon(Icons.settings, color: Colors.purple,),
                  Icon(Icons.access_alarm, color: Colors.purple,),
                  Icon(Icons.account_circle, color: Colors.purple,)
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.home, color: Colors.red,),
                  Icon(Icons.android, color: Colors.red,),
                  Icon(Icons.build, color: Colors.red,),
                  Icon(Icons.settings, color: Colors.red,),
                  Icon(Icons.access_alarm, color: Colors.red,),
                  Icon(Icons.account_circle, color: Colors.red,)
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.home, color: Colors.pink,),
                  Icon(Icons.android, color: Colors.pink,),
                  Icon(Icons.build, color: Colors.pink,),
                  Icon(Icons.settings, color: Colors.pink,),
                  Icon(Icons.access_alarm, color: Colors.pink,),
                  Icon(Icons.account_circle, color: Colors.pink,)
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.home, color: Colors.amber,),
                  Icon(Icons.android, color: Colors.amber,),
                  Icon(Icons.build, color: Colors.amber,),
                  Icon(Icons.settings, color: Colors.amber,),
                  Icon(Icons.access_alarm, color: Colors.amber,),
                  Icon(Icons.account_circle, color: Colors.amber,)
                ],
              ),
            ],
          ),

        // ],
      // )
    );
  }
}
