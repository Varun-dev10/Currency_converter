import 'package:flutter/foundation.dart';
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
      ),
    );

    const decoration = InputDecoration(
      //input field decoration
      hintText: 'Enter Amount',
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
      fontSize: 20,
    ); //TextStyle

    return Scaffold(
      backgroundColor: const Color.fromARGB(
        210,
        255,
        255,
        255,
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
              shadows: [
                Shadow(color: Color.fromARGB(117, 32, 31, 31), blurRadius: 30),
              ],
            ),

            //Text('$time'),
            // const Text(
            //   'hero', //main hero text
            //   style: TextStyle(
            //     fontSize: 40,
            //     fontWeight: FontWeight.w500,
            //     letterSpacing: 3,
            //     color: Colors.white,
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, bottom: 50),
              child: TextField(
                //input field
                textAlign: TextAlign.left,
                style: textstyle, // declare in build to save memory
                textInputAction:
                    TextInputAction.go, // action button on keyboard
                decoration:
                    decoration, //declared in build to define the const declaration of border and decoration
                keyboardType: TextInputType.number, //  only number input
                cursorHeight: 25,
                cursorColor: Colors.white12, //cursor color
                //showCursor: false,                          // show cursor when text field is focused
              ),
            ),

            //button , elevated , text button , outlined button
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 30, right: 30),
              child: ElevatedButton(
                onPressed: () {
                  if (kDebugMode) {
                    debugPrint('Convert button pressed');
                  }
                }, //on pressed function

                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(
                    const Color.fromARGB(255, 27, 27, 27),
                  ),
                  side: WidgetStateProperty.all(
                    const BorderSide(
                      color: Color.fromARGB(255, 255, 255, 255),
                      width: 2,
                    ),
                  ),
                  shape: WidgetStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  minimumSize: WidgetStateProperty.all(
                    const Size(
                      double.infinity,
                      50,
                    ), // matches the width pixel for any device
                  ),
                  elevation: WidgetStateProperty.all(30),
                  shadowColor: WidgetStateProperty.all(
                    const Color.fromARGB(255, 0, 0, 0),
                  ),
                  overlayColor: WidgetStateProperty.all(
                    const Color.fromARGB(255, 76, 75, 75).withAlpha(200),
                  ),
                ),

                child: const Text(
                  'Convert',
                  style: TextStyle(
                    fontSize: 25,
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
