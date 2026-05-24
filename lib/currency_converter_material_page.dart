import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatelessWidget {
  const CurrencyConverterMaterialPage({super.key});

  @override
  Widget build(BuildContext context) {    /// [BuildContext] tells the flutter frame work that this currency converter widget is found here
                                          ///  It tells the location
    return Scaffold(
    //  backgroundColor: Color(0xFFD9ED36),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('hero'),
          ],
        ),
      )
    );
  }
}
