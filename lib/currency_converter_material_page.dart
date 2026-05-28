import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatelessWidget {
  const CurrencyConverterMaterialPage({super.key});
  //TimeOfDay get time => TimeOfDay.now();
  @override
  Widget build(BuildContext context) {
    /// [BuildContext] tells the flutter frame work that this currency converter widget is found here
    ///  It tells the location

    const border = OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(20)),
      borderSide: BorderSide(
        color: Color.fromARGB(255, 105, 104, 104),
        width: 1,
      ), //borderSide
    ); //OutlineInputBorder

    const decoration = InputDecoration(
      //input field decoration
      hintText: 'Enter values',
      hintStyle: TextStyle(color: Color.fromARGB(200, 250, 250, 250)),

      prefixIcon: Icon(Icons.attach_money),
      prefixIconColor: Colors.white,
      filled: true,
      fillColor: Color.fromARGB(220, 20, 20, 20),

      focusedBorder:
          border, // when the text field is focused, it will show the border defined above
      enabledBorder:
          border, // when the text field is enabled but not focused, it will show the border defined above
    );

    const textstyle = TextStyle(
      color: Colors.white,
      fontStyle: FontStyle.italic,
      fontSize: 15,
    ); //TextStyle

    return Scaffold(
      backgroundColor: const Color.fromARGB(
        160,
        75,
        73,
        73,
      ), //Colors  has predefined color values ,, Color
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              //circle icon
              Icons.circle_outlined,
              size: 200,
              color: Colors.white,
              shadows: [Shadow(color: Colors.white70, blurRadius: 30)],
            ), //Icon
            //Text('$time'),
            const Text(
              'hero', //main hero text
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w500,
                letterSpacing: 3,
                color: Colors.white,
              ), //TextStyle
            ), //Text

            TextField(
              //input field
              textAlign: TextAlign.center,
              style: textstyle, // declare in build to save memory
              textInputAction: TextInputAction.go, // action button on keyboard
              decoration:
                  decoration, //declared in build to define the const declaration of border and decoration
              keyboardType: TextInputType.number, //  only number input
            ),
          ],
        ),
      ),
    );
  }
}
