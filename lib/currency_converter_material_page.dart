import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CurrencyConverterMaterialPage extends StatefulWidget {
  const CurrencyConverterMaterialPage({super.key});

  @override
  State<CurrencyConverterMaterialPage> createState() =>
      _CurrencyConverterMaterialPageState();
}

class _CurrencyConverterMaterialPageState
    extends State<CurrencyConverterMaterialPage> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();

  @override
  void dispose() {
    textEditingController.dispose(); // returns zero when next value entered
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    /// [BuildContext] tells the flutter frame work that this currency converter widget is found here
    ///  It tells the location

    const border = OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(20)),
      borderSide: BorderSide(
        color: Color.fromARGB(255, 243, 243, 243),
        width: 1,
      ),
    );

    const decoration = InputDecoration(
      //input field decoration
      hintText: 'Enter Amount',
      hintStyle: TextStyle(color: Color.fromARGB(200, 193, 185, 185)),

      prefixIcon: Icon(Icons.attach_money),
      prefixIconColor: Colors.yellow,
      filled: true,
      fillColor: Color.fromARGB(220, 20, 20, 20),

      focusedBorder: border,
      // when the text field is focused, it will show the border defined above
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
        226,
        4,
        3,
        3,
      ), //Colors  has predefined color values ,, Color

      appBar: AppBar(
        title: const Text('Currency Converter'),
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500,),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 16, 14, 14),
        elevation: 2,
        toolbarHeight: 45,
        shadowColor: const Color.fromARGB(168, 239, 228, 228),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(15),
            bottomRight: Radius.circular(15),
          ),
        ),
      ),

      body: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {
          FocusScope.of(context,).unfocus(); // to hide the keyboard when user taps outside the text field
        },
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.circle_outlined, size: 200, color: Colors.white,
                shadows: [
                  Shadow(
                    color: Color.fromARGB(117, 241, 228, 228),
                    blurRadius: 30,
                  ),
                ],
              ),

              //Text('$time'),
              Text(
                result == 0 ? '0' : result.toStringAsFixed(2),
                //result is object but text widget only accepts string so we convert it to string
                style: const TextStyle(fontSize: 40, fontWeight: FontWeight.w500, letterSpacing: 3, color: Colors.white),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30, bottom: 50),
                child: TextField(
                  //input field
                  controller: textEditingController,
                  // to control the text field
                  textAlign: TextAlign.left,
                  style: textstyle,
                  // declare in build to save memory
                  onChanged: (value) {
                    setState(() {
                      result = 0; // 3. Resets result when user starts typing
                    });
                  },

                  //declared in build to define the const declaration of border and decoration
                  keyboardType: TextInputType.numberWithOptions(decimal: false),
                  //  only number input
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly,],
                  decoration: decoration,
                  cursorHeight: 25,
                  cursorColor: Colors.white12, //cursor color
                  //showCursor: false,                          // show cursor when text field is focused
                ),
              ),

              //button , elevated , text button , outlined button;
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 30, right: 30),
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      result = (double.tryParse(textEditingController.text) ?? 0) * 95;
                    });
                  },

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
                    elevation: WidgetStateProperty.all(5),
                    shadowColor: WidgetStateProperty.all(
                      const Color.fromARGB(255, 255, 255, 255),
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
      ),
    );
  }
}
