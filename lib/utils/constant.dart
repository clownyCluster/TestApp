import 'package:flutter/material.dart';


SizedBox kSizedBox() => SizedBox(
      height: 10,
    );
SizedBox MSizedBox() => SizedBox(
      height: 15,
    );
SizedBox LSizedBox() => SizedBox(
      height: 20,
    );

SizedBox sSizedBox() => SizedBox(
      height: 5,
    );
SizedBox minWidthSpan() => const SizedBox(
      width: 5,
    );
SizedBox maxWidthSpan() => const SizedBox(
      width: 10,
    );
SizedBox largeWidthSpan() => const SizedBox(
      width: 20,
    );

EdgeInsets kStandardPadding() =>
    const EdgeInsets.symmetric(horizontal: 20, vertical: 10);

EdgeInsets kPadding() => const EdgeInsets.all(10);
EdgeInsets kVerticalPadding() => const EdgeInsets.symmetric(vertical: 10);
EdgeInsets kHorizontalPadding() => const EdgeInsets.symmetric(horizontal: 10);


TextStyle kTextStyle(context) {

  return TextStyle(
    fontFamily: 'QuickSand',
    fontSize: 11,
    
    fontWeight: FontWeight.w400,
  );
}

TextStyle kWhiteTextStyle(context) {

  return TextStyle(
    fontFamily: 'QuickSand',
    fontSize: 11 ,
    color: whiteColor,
    fontWeight: FontWeight.w400,
  );
}

TextStyle kkTextStyle(context) {

  return TextStyle(
    // color: Colors.grey[800],
    fontFamily: 'QuickSand',
    fontSize: 14,
  );
}

TextStyle sTextStyle(context) {

  return TextStyle(
    color: Colors.grey[600],
    fontFamily: 'QuickSand',
    fontSize: 9,
  );
}

TextStyle kBoldTextStyle(context) {

  return TextStyle(
    // color: Colors.grey[800],
    fontFamily: 'QuickSand',
    fontSize: 11,
    fontWeight: FontWeight.w700,
  );
}

TextStyle kWhiteBoldTextStyle(context) {

  return TextStyle(
    color: Colors.white,
    fontFamily: 'QuickSand',
    fontSize: 11,
    fontWeight: FontWeight.w700,
  );
}

TextStyle kkBoldTextStyle(context) {

  return TextStyle(
    // color: Colors.grey[800],
    fontFamily: 'QuickSand',
    fontSize: 14,
    fontWeight: FontWeight.bold,
  );
}

TextStyle kkWhiteBoldTextStyle(context) {

  return TextStyle(
    color: Colors.white,
    fontFamily: 'QuickSand',
    fontSize: 14,
    fontWeight: FontWeight.bold,
  );
}

TextStyle tabsTextStyle(context) {

  return TextStyle(
    
    fontFamily: 'QuickSand',
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );
}

TextStyle sBoldTextStyle(context) {

  return TextStyle(
    color: Colors.grey[800],
    fontFamily: 'QuickSand',
    fontSize: 9,
    fontWeight: FontWeight.bold,
  );
}

TextStyle sWhiteBoldTextStyle(context) {

  return TextStyle(
    color: Colors.white,
    fontFamily: 'QuickSand',
    fontSize: 9,
    fontWeight: FontWeight.bold,
  );
}

AppBar whiteAppBar(String title, Color color, context) {
  return AppBar(
    centerTitle: false,
    iconTheme: IconThemeData(color: darkGrey),
    title: Text(
      title,
      style: kkBoldTextStyle(context).copyWith(color: darkGrey, fontSize: 22),
    ),
    backgroundColor: color,
    elevation: 0,
  );
}

// Text kHeadLineText = Text('');

// Color primaryColor = Color(0xFFC83030).withOpacity(0.96);
Color primaryColor = Color(0xff00AEEF);

Color blueColor = Color(0xff1A469D);
Color darkGrey = Color.fromARGB(255, 14, 14, 15);
Color yellowColor = Color(0xffFFCF01);
Color errorColor = Colors.red;
Color whiteColor = Colors.white;

Color successColor = Colors.green;

Color blinkingColor = Colors.green;


const kBottomContainerHeight = 80.0;
const kActiveCardColour = Color.fromARGB(255, 70, 72, 107);
const kInactiveCardColour = Color(0xFF111328);
const kBottomContainerColour = Color(0xFFEB1555);

const kLabelTextStyle = TextStyle(
  fontSize: 18.0,
  color: Color.fromARGB(255, 42, 42, 44),
);

const kNumberTextStyle = TextStyle(
  fontSize: 40.0,
  fontWeight: FontWeight.w900,
);

const kLargeButtonTextStyle = TextStyle(
  fontSize: 25.0,
  fontWeight: FontWeight.bold,
);

const kTitleTextStyle = TextStyle(
  fontSize: 50.0,
  fontWeight: FontWeight.bold,
);

const kResultTextStyle = TextStyle(
  color: Color(0xFF24D876),
  fontSize: 22.0,
  fontWeight: FontWeight.bold,
);

const kBMITextStyle = TextStyle(
  fontSize: 100.0,
  fontWeight: FontWeight.bold,
);

const kBodyTextStyle = TextStyle(
  fontSize: 22.0,
);

String secret = 'ZE7EDFlxRz8RJIGKbhbY7qrG';
String url = 'http://csms.efleetpass.com';
