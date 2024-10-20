import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(title: 'Epic Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentStep = 0;

  List<Step> step = <Step>[
    Step(title: Text('Pengepakan'), content: Text('Barang DI Pack')),
    Step(title: Text('Pengiriman'), content: Text('Pengiriman JNE')),
    Step(title: Text('Barang Di terima'), content: Text('Barang Terkirim')),
    Step(title: Text('Beri rating'), content: Text('Silahkan beri rating')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Stepper(
        currentStep: _currentStep,
        steps: step,
        onStepContinue: () {
          setState(() {
            if (_currentStep < step.length - 1) {
              _currentStep++;
            }
          });
        },
      ),
    );
  }
}
