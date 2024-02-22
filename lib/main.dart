import 'package:flutter/material.dart';
import 'package:helminal/engine/prediction_engine.dart';
import 'package:helminal/widgets/row_option_widget.dart';
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
  final TextEditingController wordLengthController = TextEditingController();
  final TextEditingController firstChoiceController = TextEditingController();
  final TextEditingController secondChoiceController = TextEditingController();
  final TextEditingController firstWordController = TextEditingController();
  final TextEditingController secondWordController = TextEditingController();
  final TextEditingController thirdWordController = TextEditingController();
  final TextEditingController fourthWordController = TextEditingController();
  final TextEditingController fifthWordController = TextEditingController();
  final TextEditingController sixthWordController = TextEditingController();
  final TextEditingController seventhWordController = TextEditingController();

  final TextEditingController noOfMatchesControllerFirstChoice =
      TextEditingController();
  final TextEditingController noOfMatchesControllerSecondChoice =
      TextEditingController();
  int wordLength = 0;
  int noOfMatchesFirstWordFirstGuess = 0;
  int noOfMatchesSecondWordFirstGuess = 0;
  int noOfMatchesThirdWordFirstGuess = 0;
  int noOfMatchesFourthWordFirstGuess = 0;
  int noOfMatchesFifthWordFirstGuess = 0;
  int noOfMatchesSixthWordFirstGuess = 0;
  int noOfMatchesSeventhWordFirstGuess = 0;
  int noOfMatchesFirstWordSecondGuess = 0;
  int noOfMatchesSecondWordSecondGuess = 0;
  int noOfMatchesThirdWordSecondGuess = 0;
  int noOfMatchesFourthWordSecondGuess = 0;
  int noOfMatchesFifthWordSecondGuess = 0;
  int noOfMatchesSixthWordSecondGuess = 0;
  int noOfMatchesSeventhWordSecondGuess = 0;

  List<bool> isActive = [false, true];
  bool failedSecondAttempt = false;
  final Color activeColor = Colors.lightGreen;
  final Color inactiveColor = Colors.grey;
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    firstChoiceController.dispose();
    secondChoiceController.dispose();
    firstWordController.dispose();
    secondWordController.dispose();
    thirdWordController.dispose();
    fourthWordController.dispose();
    fifthWordController.dispose();
    sixthWordController.dispose();
    seventhWordController.dispose();
    wordLengthController.dispose();
    noOfMatchesControllerFirstChoice.dispose();
    noOfMatchesControllerSecondChoice.dispose();
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
              ToggleButtons(
                fillColor: Colors.transparent,
                onPressed: (int newIndex) {
                  setState(() {
                    for (int index = 0; index < isActive.length; index++) {
                      if (index == newIndex) {
                        isActive[index] = true;
                      } else {
                        isActive[index] = false;
                      }
                    }
                  });
                },
                isSelected: isActive,
                children: [
                  RowOption(
                    text: const Text(
                      '7 words',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    color: isActive[0] == true ? activeColor : inactiveColor,
                  ),
                  RowOption(
                    text: const Text(
                      '8 words',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    color: isActive[1] == true ? activeColor : inactiveColor,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              CustomNumberTextfield(
                  textController: wordLengthController,
                  hintText: 'Word length '),
              ElevatedButton(
                onPressed: () {
                  firstChoiceController.clear();
                  secondChoiceController.clear();
                  firstWordController.clear();
                  secondWordController.clear();
                  thirdWordController.clear();
                  fourthWordController.clear();
                  fifthWordController.clear();
                  sixthWordController.clear();
                  seventhWordController.clear();
                  noOfMatchesControllerFirstChoice.clear();
                  noOfMatchesControllerSecondChoice.clear();
                  setState(() {
                    isActive = [false, true];
                    failedSecondAttempt = false;
                  });
                },
                child: const Text('Clear all'),
              ),
              CustomTextfield(
                  textController: firstChoiceController,
                  hintText: 'Enter the first guess'),
              CustomNumberTextfield(
                  textController: noOfMatchesControllerFirstChoice,
                  hintText: 'No of matching letters '),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    const Text('Failed the second guess?'),
                    // button to add second choice and no of matching letters
                    TextButton(
                      onPressed: () {
                        setState(() {
                          failedSecondAttempt = !failedSecondAttempt;
                        });
                      },
                      child: failedSecondAttempt == false
                          ? const Text('Yes')
                          : const Text('No'),
                    ),
                  ],
                ),
              ),
              Visibility(
                visible: failedSecondAttempt,
                child: Column(
                  children: [
                    CustomTextfield(
                        textController: secondChoiceController,
                        hintText: 'Enter the second guess'),
                    CustomNumberTextfield(
                        textController: noOfMatchesControllerSecondChoice,
                        hintText: 'No of matching letters '),
                  ],
                ),
              ),
              const Text(
                  'Enter the other words shown on the game below apart from the first choice'),
              CustomTextfield(
                  textController: firstWordController, hintText: 'First Word'),
              CustomTextfield(
                  textController: secondWordController,
                  hintText: 'Second Word'),
              CustomTextfield(
                  textController: thirdWordController, hintText: 'Third Word'),
              CustomTextfield(
                  textController: fourthWordController,
                  hintText: 'Fourth Word'),
              CustomTextfield(
                  textController: fifthWordController, hintText: 'Fifth Word'),
              CustomTextfield(
                  textController: sixthWordController, hintText: 'Sixth Word'),
              isActive[1] == true
                  ? CustomTextfield(
                      textController: seventhWordController,
                      hintText: 'Seventh Word')
                  : const SizedBox(),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          wordLength = int.parse(wordLengthController.text);
          if (firstChoiceController.text.length == wordLength &&
              firstWordController.text.length == wordLength &&
              secondWordController.text.length == wordLength &&
              thirdWordController.text.length == wordLength &&
              fourthWordController.text.length == wordLength &&
              fifthWordController.text.length == wordLength &&
              sixthWordController.text.length == wordLength &&
              (isActive[1] == true
                  ? seventhWordController.text.length == wordLength
                  : true) &&
              noOfMatchesControllerFirstChoice.text.isNotEmpty &&
              (failedSecondAttempt == true
                  ? noOfMatchesControllerSecondChoice.text.isNotEmpty
                  : true) &&
              (failedSecondAttempt == true
                  ? secondChoiceController.text.length == wordLength
                  : true)) {
            noOfMatchesFirstWordFirstGuess = countMatchingLetters(
                firstChoiceController.text, firstWordController.text);
            noOfMatchesSecondWordFirstGuess = countMatchingLetters(
                firstChoiceController.text, secondWordController.text);
            noOfMatchesThirdWordFirstGuess = countMatchingLetters(
                firstChoiceController.text, thirdWordController.text);
            noOfMatchesFourthWordFirstGuess = countMatchingLetters(
                firstChoiceController.text, fourthWordController.text);
            noOfMatchesFifthWordFirstGuess = countMatchingLetters(
                firstChoiceController.text, fifthWordController.text);
            noOfMatchesSixthWordFirstGuess = countMatchingLetters(
                firstChoiceController.text, sixthWordController.text);
            if (isActive[1] == true) {
              noOfMatchesSeventhWordFirstGuess = countMatchingLetters(
                  firstChoiceController.text, seventhWordController.text);
            }
            if (failedSecondAttempt == true) {
              noOfMatchesFirstWordSecondGuess = countMatchingLetters(
                  secondChoiceController.text, firstWordController.text);
              noOfMatchesSecondWordSecondGuess = countMatchingLetters(
                  secondChoiceController.text, secondWordController.text);
              noOfMatchesThirdWordSecondGuess = countMatchingLetters(
                  secondChoiceController.text, thirdWordController.text);
              noOfMatchesFourthWordSecondGuess = countMatchingLetters(
                  secondChoiceController.text, fourthWordController.text);
              noOfMatchesFifthWordSecondGuess = countMatchingLetters(
                  secondChoiceController.text, fifthWordController.text);
              noOfMatchesSixthWordSecondGuess = countMatchingLetters(
                  secondChoiceController.text, sixthWordController.text);
              if (isActive[1] == true) {
                noOfMatchesSeventhWordSecondGuess = countMatchingLetters(
                    secondChoiceController.text, seventhWordController.text);
              }
            }
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
                            const Text('Results',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold)),
                            const SizedBox(height: 20),
                            Text(
                              firstWordController.text,
                              style: TextStyle(
                                  fontSize: 15,
                                  color: noOfMatchesFirstWordFirstGuess ==
                                          int.parse(
                                              noOfMatchesControllerFirstChoice
                                                  .text)
                                      ? Colors.green
                                      : Colors.red),
                            ),
                            Text(
                              secondWordController.text,
                              style: TextStyle(
                                  fontSize: 15,
                                  color: noOfMatchesSecondWordFirstGuess ==
                                          int.parse(
                                              noOfMatchesControllerFirstChoice
                                                  .text)
                                      ? Colors.green
                                      : Colors.red),
                            ),
                            Text(
                              thirdWordController.text,
                              style: TextStyle(
                                  fontSize: 15,
                                  color: noOfMatchesThirdWordFirstGuess ==
                                          int.parse(
                                              noOfMatchesControllerFirstChoice
                                                  .text)
                                      ? Colors.green
                                      : Colors.red),
                            ),
                            Text(
                              fourthWordController.text,
                              style: TextStyle(
                                  fontSize: 15,
                                  color: noOfMatchesFourthWordFirstGuess ==
                                          int.parse(
                                              noOfMatchesControllerFirstChoice
                                                  .text)
                                      ? Colors.green
                                      : Colors.red),
                            ),
                            Text(
                              fifthWordController.text,
                              style: TextStyle(
                                  fontSize: 15,
                                  color: noOfMatchesFifthWordFirstGuess ==
                                          int.parse(
                                              noOfMatchesControllerFirstChoice
                                                  .text)
                                      ? Colors.green
                                      : Colors.red),
                            ),
                            Text(
                              sixthWordController.text,
                              style: TextStyle(
                                  fontSize: 15,
                                  color: noOfMatchesSixthWordFirstGuess ==
                                          int.parse(
                                              noOfMatchesControllerFirstChoice
                                                  .text)
                                      ? Colors.green
                                      : Colors.red),
                            ),
                            isActive[1] == true
                                ? Text(
                                    seventhWordController.text,
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: noOfMatchesSeventhWordFirstGuess ==
                                                int.parse(
                                                    noOfMatchesControllerFirstChoice
                                                        .text)
                                            ? Colors.green
                                            : Colors.red),
                                  )
                                : const SizedBox(),
                          ],
                        ),
                        failedSecondAttempt == true
                            ? Column(
                                children: [
                                  const Text('Results second attempt',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold)),
                                  const SizedBox(height: 20),
                                  Text(
                                    firstWordController.text,
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: noOfMatchesFirstWordSecondGuess ==
                                                int.parse(
                                                    noOfMatchesControllerSecondChoice
                                                        .text)
                                            ? Colors.green
                                            : Colors.red),
                                  ),
                                  Text(
                                    secondWordController.text,
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: noOfMatchesSecondWordSecondGuess ==
                                                int.parse(
                                                    noOfMatchesControllerSecondChoice
                                                        .text)
                                            ? Colors.green
                                            : Colors.red),
                                  ),
                                  Text(
                                    thirdWordController.text,
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: noOfMatchesThirdWordSecondGuess ==
                                                int.parse(
                                                    noOfMatchesControllerSecondChoice
                                                        .text)
                                            ? Colors.green
                                            : Colors.red),
                                  ),
                                  Text(
                                    fourthWordController.text,
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: noOfMatchesFourthWordSecondGuess ==
                                                int.parse(
                                                    noOfMatchesControllerSecondChoice
                                                        .text)
                                            ? Colors.green
                                            : Colors.red),
                                  ),
                                  Text(
                                    fifthWordController.text,
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: noOfMatchesFifthWordSecondGuess ==
                                                int.parse(
                                                    noOfMatchesControllerSecondChoice
                                                        .text)
                                            ? Colors.green
                                            : Colors.red),
                                  ),
                                  Text(
                                    sixthWordController.text,
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: noOfMatchesSixthWordSecondGuess ==
                                                int.parse(
                                                    noOfMatchesControllerSecondChoice
                                                        .text)
                                            ? Colors.green
                                            : Colors.red),
                                  ),
                                  isActive[1] == true
                                      ? Text(
                                          seventhWordController.text,
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: noOfMatchesSeventhWordSecondGuess ==
                                                      int.parse(
                                                          noOfMatchesControllerSecondChoice
                                                              .text)
                                                  ? Colors.green
                                                  : Colors.red),
                                        )
                                      : const SizedBox(),
                                ],
                              )
                            : const SizedBox(),
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
          } else {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                duration: Duration(seconds: 1),
                content:
                    Text('Please check that all fields are of equal length'),
              ),
            );
          }
        },
        child: const Text('Go'),
      ),
    );
  }
}
