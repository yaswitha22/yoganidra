import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Unit Converter App',
      debugShowCheckedModeBanner: false,
      home: UnitConverter(),
    );
  }
}

class UnitConverter extends StatefulWidget {
  @override
  _UnitConverterState createState() => _UnitConverterState();
}

class _UnitConverterState extends State<UnitConverter> {
  double inputValue = 0.0;
  double convertedValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Unit Converter')),
          backgroundColor: Colors.red,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children:[
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Enter value in meters',
                ),
                onChanged: (value) {
                  setState(() {
                    inputValue = double.tryParse(value) ?? 0.0;
                  });
                },
              ),
              SizedBox(height: 50),
              Text('Converted Value: $convertedValue feet',style: TextStyle(fontSize: 25),),
              SizedBox(height: 50),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    // Convert from meters to feet (1 meter = 3.28084 feet)
                    convertedValue = inputValue * 3.28084;
                  });
                },
                child: Text('Convert'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}