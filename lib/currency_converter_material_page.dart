import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatelessWidget {
  const CurrencyConverterMaterialPage({super.key});
  //TimeOfDay get time => TimeOfDay.now();
  @override
  Widget build(BuildContext context) {
    /// [BuildContext] tells the flutter frame work that this currency converter widget is found here
    ///  It tells the location
    return Scaffold(
      backgroundColor:
          Colors.black12, //Colors  has predefined color values ,, Color
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.circle_outlined,
              size: 200,
              color: Colors.white,
              shadows: [Shadow(color: Colors.white70, blurRadius: 50)],
            ),
            //Text('$time'),
            const Text(
              'hero',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w500,
                letterSpacing: 3,
                color: Colors.white,
              ),
            ),
            const TextField(
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontStyle: FontStyle.italic,
                fontSize: 20,
              ),
              decoration: InputDecoration(
                hintText: 'Enter values',
                hintStyle: TextStyle(color: Color.fromARGB(200, 250, 250, 250)),
                prefixIcon: Icon(Icons.attach_money),
                prefixIconColor: Colors.white,
                filled: true,
                fillColor: Color.fromARGB(220, 20, 20, 20),
              ),
            ),
          ], //children
        ),
      ),
    );
  }
}
