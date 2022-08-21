import 'package:flutter/material.dart';

class tempconvert extends StatefulWidget{
  @override
  State<tempconvert> createState() => _tempconvertState();
}

class _tempconvertState extends State<tempconvert> {
  final _cel  = TextEditingController();
  var result = '';


  void CtoF() {
    var n = double.tryParse(_cel.text);

    if (n == null) {
      print('Input Error!!!');
      setState(() {
        result = 'Input Error!!!';
      });
    } else {
      var f = ((9 / 5) * n) + 32;
      setState(() {
        result = '$n Celsius = $f Fahrenheit';
      });
    }
  }
  void CtoK() {
    var n = double.tryParse(_cel.text);

    if (n == null) {
      print('Input Error!!!');
      setState(() {
        result = 'Input Error!!!';
      });
    } else {
      var k = n + 273;
      setState(() {
        result = '$n Celsius = $k Kelvin';
      });
    }
  }
  void FtoC() {
    var n = double.tryParse(_cel.text);

    if (n == null) {
      print('Input Error!!!');
      setState(() {
        result = 'Input Error!!!';
      });
    } else {
      var c = (5 / 9) * (n - 32);
      setState(() {
        result = '$n Fahrenheit = $c Celsius';
      });
    }
  }
  void FtoK() {
    var n = double.tryParse(_cel.text);

    if (n == null) {
      print('Input Error!!!');
      setState(() {
        result = 'Input Error!!!';
      });
    } else {
      var k = (5 / 9) * (n - 32) + 273;
      setState(() {
        result = '$n Fahrenheit = $k Kelvin';
      });
    }
  }
  void KtoC() {
    var n = double.tryParse(_cel.text);

    if (n == null) {
      print('Input Error!!!');
      setState(() {
        result = 'Input Error!!!';
      });
    } else {
      var c = n - 273;
      setState(() {
        result = '$n Kelvin = $c Celsius';
      });
    }
  }
  void KtoF() {
    var n = double.tryParse(_cel.text);

    if (n == null) {
      print('Input Error!!!');
      setState(() {
        result = 'Input Error!!!';
      });
    } else {
      var f = (9 / 5) * (n - 273) + 32;
      setState(() {
        result = '$n Kelvin = $f Fahrenheit';
      });
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Midterm Exam')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

            Text('Temperature Converter'),
            TextField(
              controller: _cel,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter a temperature value to convert'
              ),
            ),
            ElevatedButton(
              onPressed: CtoF ,
              child: Text('Celsius to Fahrenheit'),
            ),

            ElevatedButton(
              onPressed: CtoK ,
              child: Text('Celsius to Kelvin'),
            ),

            ElevatedButton(
              onPressed: FtoC ,
              child: Text('Fahrenheit to Celsius'),
            ),

            ElevatedButton(
              onPressed: FtoK ,
              child: Text('Fahrenheit to Kelvin'),
            ),
            ElevatedButton(
              onPressed: KtoC ,
              child: Text('Kelvin to Celsius'),
            ),
            ElevatedButton(
              onPressed: KtoF ,
              child: Text('Kelvin to Fahrenheit'),
            ),
            Text(result),

          ],
        ),
      ),
    );
  }
}


