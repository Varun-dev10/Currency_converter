import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatelessWidget {
  const CurrencyConverterMaterialPage({super.key});

  TimeOfDay get time => TimeOfDay.now();
  @override
  Widget build(BuildContext context) {    /// [BuildContext] tells the flutter frame work that this currency converter widget is found here
                                          ///  It tells the location
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade300,   //Colors  has predefined color values ,, Color
      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Text('$time'),
            Text('hero',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w500,
                letterSpacing: 3,
                color: Colors.white
              ),
            ),
            TextField()
          ],
        ),
      )
    );
  }
}
