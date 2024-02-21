import 'package:flutter/material.dart';
import 'package:helminal/engine/prediction_engine.dart';
import 'package:helminal/widgets/textfield_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController firstChoiceController = TextEditingController();
  final TextEditingController firstWordController = TextEditingController();
  final TextEditingController secondWordController = TextEditingController();
  final TextEditingController thirdWordController = TextEditingController();
  final TextEditingController fourthWordController = TextEditingController();
  final TextEditingController fifthWordController = TextEditingController();
  final TextEditingController sixthWordController = TextEditingController();
  final TextEditingController noOfMatchesController = TextEditingController();
  int noOfMatchesFirstWord = 0;
  int noOfMatchesSecondWord = 0;
  int noOfMatchesThirdWord = 0;
  int noOfMatchesFourthWord = 0;
  int noOfMatchesFifthWord = 0;
  int noOfMatchesSixthWord = 0;
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    firstChoiceController.dispose();
    firstWordController.dispose();
    secondWordController.dispose();
    thirdWordController.dispose();
    fourthWordController.dispose();
    fifthWordController.dispose();
    sixthWordController.dispose();
    noOfMatchesController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Terminal game assistant'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              CustomTextfield(
                  textController: firstChoiceController,
                  hintText: 'Enter the first choice'),
              CustomNumberTextfield(
                  textController: noOfMatchesController,
                  hintText: 'No of matching letters '),

              const Text(
                  'Enter the other words shown on the game below apart from the first choice'),
              CustomTextfield(
                  textController: firstWordController, hintText: 'First Word'),
              CustomTextfield(
                  textController: secondWordController, hintText: 'Second Word'),
              CustomTextfield(
                  textController: thirdWordController, hintText: 'Third Word'),
              CustomTextfield(
                  textController: fourthWordController, hintText: 'Fourth Word'),
              CustomTextfield(
                  textController: fifthWordController, hintText: 'Fifth Word'),
              CustomTextfield(
                  textController: sixthWordController, hintText: 'Sixth Word'),
              // ElevatedButton(onPressed: (){}, child: const Text('Predict the word')),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          noOfMatchesFirstWord = countMatchingLetters(
              firstChoiceController.text, firstWordController.text);
          noOfMatchesSecondWord = countMatchingLetters(
              firstChoiceController.text, secondWordController.text);
          noOfMatchesThirdWord = countMatchingLetters(
              firstChoiceController.text, thirdWordController.text);
          noOfMatchesFourthWord = countMatchingLetters(
              firstChoiceController.text, fourthWordController.text);
          noOfMatchesFifthWord = countMatchingLetters(
              firstChoiceController.text, fifthWordController.text);
          noOfMatchesSixthWord = countMatchingLetters(
              firstChoiceController.text, sixthWordController.text);
          showModalBottomSheet(
            context: context,
            isDismissible: false,
            enableDrag: false,
            builder: (BuildContext context) {
              return SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        children: [
                          const Text('Results will be shown here',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold)),
                          const SizedBox(height: 20),
                          Text(
                            firstWordController.text,
                            style: TextStyle(
                              fontSize: 15,
                                color: noOfMatchesFirstWord ==
                                        int.parse(noOfMatchesController.text)
                                    ? Colors.green
                                    : Colors.red),
                          ),
                          Text(
                            secondWordController.text,
                            style: TextStyle(
                                fontSize: 15,

                                color: noOfMatchesSecondWord ==
                                        int.parse(noOfMatchesController.text)
                                    ? Colors.green
                                    : Colors.red),
                          ),
                          Text(
                            thirdWordController.text,
                            style: TextStyle(
                                fontSize: 15,

                                color: noOfMatchesThirdWord ==
                                        int.parse(noOfMatchesController.text)
                                    ? Colors.green
                                    : Colors.red),
                          ),
                          Text(
                            fourthWordController.text,
                            style: TextStyle(
                                fontSize: 15,

                                color: noOfMatchesFourthWord ==
                                        int.parse(noOfMatchesController.text)
                                    ? Colors.green
                                    : Colors.red),
                          ),
                          Text(
                            fifthWordController.text,
                            style: TextStyle(
                                fontSize: 15,

                                color: noOfMatchesFifthWord ==
                                        int.parse(noOfMatchesController.text)
                                    ? Colors.green
                                    : Colors.red),
                          ),
                          Text(
                            sixthWordController.text,
                            style: TextStyle(
                                fontSize: 15,

                                color: noOfMatchesSixthWord ==
                                        int.parse(noOfMatchesController.text)
                                    ? Colors.green
                                    : Colors.red),
                          ),
                        ],
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text('Close'),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
        child: const Text('Predict'),
      ),
    );
  }
}
