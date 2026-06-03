import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
class CurrencyConverterCupertinoPage extends StatefulWidget {
  const CurrencyConverterCupertinoPage({super.key});

  @override
  State<CurrencyConverterCupertinoPage> createState() => _CurrencyConverterCupertinoPageState();
}

class _CurrencyConverterCupertinoPageState extends State<CurrencyConverterCupertinoPage> {
  Object result = 0;
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {



    return CupertinoPageScaffold(
      backgroundColor: const Color.fromARGB(
        210,
        255,
        255,
        255,
      ), //Colors  has predefined color values ,, Color

      navigationBar: CupertinoNavigationBar(
        middle: const Text('Currency Converter'),
        backgroundColor: CupertinoColors.black,
        border: Border(
          bottom: BorderSide(
            color: CupertinoColors.systemGrey.withValues(alpha: 255, red: 1, green: 1, blue: 1),
            width: 2, // Standard iOS hairline thickness
          ),
        ),
      ),

      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(CupertinoIcons.circle,
              size: 300,
              color: CupertinoColors.white,
              shadows: [
                Shadow(color: Color.fromARGB(117, 32, 31, 31), blurRadius: 30),
              ],
            ),

            Text(
              result.toString(), //result is object but text widget only accepts string so we convert it to string
              style: const TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w500,
                letterSpacing: 3,
                color: CupertinoColors.black,
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, bottom: 50),
              child: CupertinoTextField(                   //input field
                //focusNode: FocusNode(),
                //color: CupertinoColors.systemGrey6, // background color of text field
                controller: textEditingController, // to control the text field
                textAlign: TextAlign.left,
                style: TextStyle(    //
                  color: CupertinoColors.black,
                  fontStyle: FontStyle.normal,
                  fontSize: 20,
                ),
                placeholder: 'Enter Amount',
                placeholderStyle: const TextStyle(
                    color: Color.fromARGB(200, 41, 38, 38),
                    fontStyle: FontStyle.italic,
                    fontSize: 18,
                ),
                prefix: const Icon(CupertinoIcons.money_dollar, color: CupertinoColors.systemYellow),
                decoration: BoxDecoration(
                  color: CupertinoColors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    border: Border.all(
                      color: CupertinoColors.systemGrey,
                      width: 1,
                    ),
                ),
                keyboardType: TextInputType.numberWithOptions(decimal: false), //  only number input
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly, // This allows only numbers and a single decimal point
                ],
                cursorHeight: 25,
                cursorColor: CupertinoColors.systemBackground, //cursor color
                //showCursor: false,                          // show cursor when text field is focused
              ),
            ),


            Padding(
              padding: const EdgeInsets.only(top: 20, left: 30, right: 30),
              child: CupertinoButton(
                onPressed: () {
                  setState(() {
                    result = (double.tryParse(textEditingController.text) ?? 0) * 95;
                  });
                },
                color: CupertinoColors.black,  // button color
                borderRadius: BorderRadius.circular(20),

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
