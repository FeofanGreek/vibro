import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_vibrate/flutter_vibrate.dart';
import 'package:vibration/vibration.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Примеры виброткликов'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(

          title: Text(widget.title),
        ),
        body: SingleChildScrollView(

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 30,),
              Container(
                margin: const EdgeInsets.fromLTRB(5, 5, 0, 0),
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),

                alignment: Alignment.center,
                child: TextButton(
                  onPressed: () {
                    HapticFeedback.lightImpact();
},
                  child: const Text('1', style: TextStyle(fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                      fontFamily: 'ZenAntique'), textAlign: TextAlign.center,),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
primary: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                  ),
                ),

              ),
              Container(
                margin: const EdgeInsets.fromLTRB(5, 5, 0, 0),
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),

                alignment: Alignment.center,
                child: TextButton(
                  onPressed: () {
                    HapticFeedback.vibrate();
},
                  child: const Text('2', style: TextStyle(fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                      fontFamily: 'ZenAntique'), textAlign: TextAlign.center,),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    primary: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                  ),
                ),

              ),
              Container(
                margin: const EdgeInsets.fromLTRB(5, 5, 0, 0),
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),

                alignment: Alignment.center,
                child: TextButton(
                  onPressed: () {
                    HapticFeedback.selectionClick();
},
                  child: const Text('3', style: TextStyle(fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                      fontFamily: 'ZenAntique'), textAlign: TextAlign.center,),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    primary: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                  ),
                ),

              ),
              Container(
                margin: const EdgeInsets.fromLTRB(5, 5, 0, 0),
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),

                alignment: Alignment.center,
                child: TextButton(
                  onPressed: () {
                    HapticFeedback.heavyImpact();
},
                  child: const Text('4', style: TextStyle(fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                      fontFamily: 'ZenAntique'), textAlign: TextAlign.center,),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    primary: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                  ),
                ),

              ),
              Container(
                margin: const EdgeInsets.fromLTRB(5, 5, 0, 0),
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),

                alignment: Alignment.center,
                child: TextButton(
                  onPressed: () {
                    HapticFeedback.mediumImpact();
},
                  child: const Text('5', style: TextStyle(fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                      fontFamily: 'ZenAntique'), textAlign: TextAlign.center,),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    primary: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                  ),
                ),

              ),
              Container(
                margin: const EdgeInsets.fromLTRB(5, 5, 0, 0),
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),

                alignment: Alignment.center,
                child: TextButton(
                  onPressed: () {
                    Vibration.vibrate(duration: 100, amplitude: 10);
},
                  child: const Text('6', style: TextStyle(fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                      fontFamily: 'ZenAntique'), textAlign: TextAlign.center,),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    primary: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                  ),
                ),

              ),
              Container(
                margin: const EdgeInsets.fromLTRB(5, 5, 0, 0),
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                alignment: Alignment.center,
                child: TextButton(
                  onPressed: () {
                    Vibration.vibrate(pattern: [500, 1000, 500, 2000]);
},
                  child: const Text('7', style: TextStyle(fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                      fontFamily: 'ZenAntique'), textAlign: TextAlign.center,),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    primary: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                  ),
                ),

              ),
              Container(
                margin: const EdgeInsets.fromLTRB(5, 5, 0, 0),
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                alignment: Alignment.center,
                child: TextButton(
                  onPressed: () {
                    Vibration.vibrate(
                        pattern: [500, 1000, 500, 2000], intensities: [1, 255]);
                    },
                  child: const Text('8', style: TextStyle(fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                      fontFamily: 'ZenAntique'), textAlign: TextAlign.center,),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    primary: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                  ),
                ),

              ),
              Container(
                margin: const EdgeInsets.fromLTRB(5, 5, 0, 0),
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                alignment: Alignment.center,
                child: TextButton(
                  onPressed: () {
                    Vibration.hasCustomVibrationsSupport();
                    },
                  child: const Text('9', style: TextStyle(fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                      fontFamily: 'ZenAntique'), textAlign: TextAlign.center,),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    primary: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                  ),
                ),

              ),
              Container(
                margin: const EdgeInsets.fromLTRB(5, 5, 0, 0),
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                alignment: Alignment.center,
                child: TextButton(
                  onPressed: () {
                    Vibrate.feedback(FeedbackType.medium);
                    },
                  child: const Text('10', style: TextStyle(fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                      fontFamily: 'ZenAntique'), textAlign: TextAlign.center,),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    primary: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                  ),
                ),

              ),
              Container(
                margin: const EdgeInsets.fromLTRB(5, 5, 0, 0),
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                alignment: Alignment.center,
                child: TextButton(
                  onPressed: () {
                    Vibrate.feedback(FeedbackType.success);
                  },
                  child: const Text('11', style: TextStyle(fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                      fontFamily: 'ZenAntique'), textAlign: TextAlign.center,),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    primary: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                  ),
                ),

              ),
              Container(
                margin: const EdgeInsets.fromLTRB(5, 5, 0, 0),
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                alignment: Alignment.center,
                child: TextButton(
                  onPressed: () {
                    Vibrate.feedback(FeedbackType.warning);
},
                  child: const Text('12', style: TextStyle(fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                      fontFamily: 'ZenAntique'), textAlign: TextAlign.center,),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    primary: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                  ),
                ),

              ),
              Container(
                margin: const EdgeInsets.fromLTRB(5, 5, 0, 0),
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                alignment: Alignment.center,
                child: TextButton(
                  onPressed: () {
                    Vibrate.feedback(FeedbackType.error);
},
                  child: const Text('13', style: TextStyle(fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                      fontFamily: 'ZenAntique'), textAlign: TextAlign.center,),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    primary: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                  ),
                ),

              ),
              Container(
                margin: const EdgeInsets.fromLTRB(5, 5, 0, 0),
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                alignment: Alignment.center,
                child: TextButton(
                  onPressed: () {

                    Vibrate.feedback(FeedbackType.light);
},
                  child: const Text('14', style: TextStyle(fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                      fontFamily: 'ZenAntique'), textAlign: TextAlign.center,),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    primary: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                  ),
                ),

              ),
              Container(
                margin: const EdgeInsets.fromLTRB(5, 5, 0, 0),
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                alignment: Alignment.center,
                child: TextButton(
                  onPressed: () {

                    Vibrate.feedback(FeedbackType.heavy);
},
                  child: const Text('15', style: TextStyle(fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                      fontFamily: 'ZenAntique'), textAlign: TextAlign.center,),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    primary: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                  ),
                ),

              ),
              Container(
                margin: const EdgeInsets.fromLTRB(5, 5, 0, 0),
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                alignment: Alignment.center,
                child: TextButton(
                  onPressed: () {
                    Vibrate.feedback(FeedbackType.selection);

                  },
                  child: const Text('16', style: TextStyle(fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                      fontFamily: 'ZenAntique'), textAlign: TextAlign.center,),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    primary: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                  ),
                ),

              ),
              Container(
                margin: const EdgeInsets.fromLTRB(5, 5, 0, 0),
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                alignment: Alignment.center,
                child: TextButton(
                  onPressed: () {
                    Vibrate.vibrate();
                  },
                  child: const Text('17', style: TextStyle(fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                      fontFamily: 'ZenAntique'), textAlign: TextAlign.center,),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    primary: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                  ),
                ),

              ),
              Container(
                margin: const EdgeInsets.fromLTRB(5, 5, 0, 0),
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                alignment: Alignment.center,
                child: TextButton(
                  onPressed: () {
                    Vibrate.vibrateWithPauses([
                      const Duration(milliseconds: 500),
                      const Duration(milliseconds: 1000),
                      const Duration(milliseconds: 500),
                    ]);
                  },
                  child: const Text('18', style: TextStyle(fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                      fontFamily: 'ZenAntique'), textAlign: TextAlign.center,),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    primary: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                  ),
                ),

              ),
              SizedBox(height: 30,)
            ],
          ),
        ),

      );
    }
  }
