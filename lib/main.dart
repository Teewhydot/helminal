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
  final TextEditingController eighthWordController = TextEditingController();
  final TextEditingController ninthWordController = TextEditingController();
  final TextEditingController tenthWordController = TextEditingController();

  final TextEditingController noOfMatchesControllerFirstChoice =
      TextEditingController();
  final TextEditingController noOfMatchesControllerSecondChoice =
      TextEditingController();
  int wordLength = 1;
  int noOfMatchesFirstWordFirstGuess = 0;
  int noOfMatchesSecondWordFirstGuess = 0;
  int noOfMatchesThirdWordFirstGuess = 0;
  int noOfMatchesFourthWordFirstGuess = 0;
  int noOfMatchesFifthWordFirstGuess = 0;
  int noOfMatchesSixthWordFirstGuess = 0;
  int noOfMatchesSeventhWordFirstGuess = 0;
  int noOfMatchesEighthWordFirstGuess = 0;
  int noOfMatchesNinthWordFirstGuess = 0;
  int noOfMatchesTenthWordFirstGuess = 0;

  int noOfMatchesFirstWordSecondGuess = 0;
  int noOfMatchesSecondWordSecondGuess = 0;
  int noOfMatchesThirdWordSecondGuess = 0;
  int noOfMatchesFourthWordSecondGuess = 0;
  int noOfMatchesFifthWordSecondGuess = 0;
  int noOfMatchesSixthWordSecondGuess = 0;
  int noOfMatchesSeventhWordSecondGuess = 0;
  int noOfMatchesEighthWordSecondGuess = 0;
  int noOfMatchesNinthWordSecondGuess = 0;
  int noOfMatchesTenthWordSecondGuess = 0;

  bool failedSecondAttempt = false;
  bool needNinthWord = false;
  bool needTenthWord = false;
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
    eighthWordController.dispose();
    ninthWordController.dispose();
    tenthWordController.dispose();
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
              CustomNumberTextfield(
                  textController: wordLengthController,
                  unChanged: (value) {
                    setState(() {
                      wordLength = int.parse(value);
                    });
                  },
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
                  eighthWordController.clear();
                  ninthWordController.clear();
                  tenthWordController.clear();
                  noOfMatchesControllerFirstChoice.clear();
                  noOfMatchesControllerSecondChoice.clear();
                  wordLengthController.clear();
                  setState(() {
                    failedSecondAttempt = false;
                  });
                },
                child: const Text('Clear all'),
              ),
              CustomTextfield(
                  textController: firstChoiceController,
                  maxLength: wordLength,
                  hintText: 'Enter the first guess'),
              CustomNumberTextfield(
                  unChanged: () {},
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
                        maxLength: wordLength,
                        hintText: 'Enter the second guess'),
                    CustomNumberTextfield(
                        unChanged: () {},
                        textController: noOfMatchesControllerSecondChoice,
                        hintText: 'No of matching letters '),
                  ],
                ),
              ),
              const Text(
                  'Enter the other words shown on the game below apart from the first choice'),
              CustomTextfield(
                  textController: firstWordController,
                  maxLength: wordLength,
                  hintText: 'First Word'),
              CustomTextfield(
                  textController: secondWordController,
                  maxLength: wordLength,
                  hintText: 'Second Word'),
              CustomTextfield(
                  maxLength: wordLength,
                  textController: thirdWordController,
                  hintText: 'Third Word'),
              CustomTextfield(
                  textController: fourthWordController,
                  maxLength: wordLength,
                  hintText: 'Fourth Word'),
              CustomTextfield(
                  textController: fifthWordController,
                  maxLength: wordLength,
                  hintText: 'Fifth Word'),
              CustomTextfield(
                  textController: sixthWordController,
                  maxLength: wordLength,
                  hintText: 'Sixth Word'),
              CustomTextfield(
                  textController: seventhWordController,
                  maxLength: wordLength,
                  hintText: 'Seventh Word'),
              CustomTextfield(
                  textController: eighthWordController,
                  maxLength: wordLength,
                  hintText: 'Eighth Word'),
              TextButton(
                  onPressed: () {
                    setState(() {
                      needNinthWord = !needNinthWord;
                    });
                  },
                  child: needNinthWord
                      ? const Text('Remove ninth word')
                      : const Text('Need ninth word')),
              Visibility(
                visible: needNinthWord,
                child: CustomTextfield(
                    textController: ninthWordController,
                    maxLength: wordLength,
                    hintText: 'Ninth Word'),
              ),
              TextButton(
                  onPressed: () {
                    setState(() {
                      needTenthWord = !needTenthWord;
                    });
                  },
                  child: needTenthWord
                      ? const Text('Remove tenth word')
                      : const Text('Need tenth word')),
              Visibility(
                visible: needTenthWord,
                child: CustomTextfield(
                    textController: tenthWordController,
                    maxLength: wordLength,
                    hintText: 'Tenth Word'),
              ),
              const SizedBox(
                height: 50,
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (noOfMatchesControllerFirstChoice.text.isEmpty ||
              firstChoiceController.text.isEmpty ||
              firstWordController.text.isEmpty ||
              secondWordController.text.isEmpty ||
              thirdWordController.text.isEmpty ||
              fourthWordController.text.isEmpty ||
              fifthWordController.text.isEmpty ||
              sixthWordController.text.isEmpty
            ) {
            // show a snack bar saying all fields are required
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Please fill all the fields'),
                duration: Duration(seconds: 1),
              ),
            );
          } else {
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
            noOfMatchesSeventhWordFirstGuess = countMatchingLetters(
                firstChoiceController.text, seventhWordController.text);
            noOfMatchesEighthWordFirstGuess = countMatchingLetters(
                firstChoiceController.text, eighthWordController.text);
            noOfMatchesNinthWordFirstGuess = countMatchingLetters(
                firstChoiceController.text, ninthWordController.text);
            noOfMatchesTenthWordFirstGuess = countMatchingLetters(
                firstChoiceController.text, tenthWordController.text);

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
              noOfMatchesSeventhWordSecondGuess = countMatchingLetters(
                  secondChoiceController.text, seventhWordController.text);
              noOfMatchesEighthWordSecondGuess = countMatchingLetters(
                  secondChoiceController.text, eighthWordController.text);
              noOfMatchesNinthWordSecondGuess = countMatchingLetters(
                  secondChoiceController.text, ninthWordController.text);
              noOfMatchesTenthWordSecondGuess = countMatchingLetters(
                  secondChoiceController.text, tenthWordController.text);
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
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text('Results',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                        Table(
                            border: TableBorder.all(),
                            defaultVerticalAlignment:
                                TableCellVerticalAlignment.middle,
                            children: [
                              const TableRow(children: [
                                TableCell(child: Text('First attempt')),
                                TableCell(child: Text('Second attempt')),
                              ]),
                              TableRow(children: [
                                TableCell(
                                  child: Text(
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
                                ),
                                TableCell(
                                  child: failedSecondAttempt == true
                                      ? Text(
                                          firstWordController.text,
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: noOfMatchesFirstWordSecondGuess ==
                                                      int.parse(
                                                          noOfMatchesControllerSecondChoice
                                                              .text)
                                                  ? Colors.green
                                                  : Colors.red),
                                        )
                                      : const SizedBox(),
                                ),
                              ]),
                              TableRow(children: [
                                TableCell(
                                  child: Text(
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
                                ),
                                TableCell(
                                  child: failedSecondAttempt == true
                                      ? Text(
                                          secondWordController.text,
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: noOfMatchesSecondWordSecondGuess ==
                                                      int.parse(
                                                          noOfMatchesControllerSecondChoice
                                                              .text)
                                                  ? Colors.green
                                                  : Colors.red),
                                        )
                                      : const SizedBox(),
                                ),
                              ]),
                              TableRow(children: [
                                TableCell(
                                  child: Text(
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
                                ),
                                TableCell(
                                  child: failedSecondAttempt == true
                                      ? Text(
                                          thirdWordController.text,
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: noOfMatchesThirdWordSecondGuess ==
                                                      int.parse(
                                                          noOfMatchesControllerSecondChoice
                                                              .text)
                                                  ? Colors.green
                                                  : Colors.red),
                                        )
                                      : const SizedBox(),
                                ),
                              ]),
                              TableRow(children: [
                                TableCell(
                                  child: Text(
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
                                ),
                                TableCell(
                                  child: failedSecondAttempt == true
                                      ? Text(
                                          fourthWordController.text,
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: noOfMatchesFourthWordSecondGuess ==
                                                      int.parse(
                                                          noOfMatchesControllerSecondChoice
                                                              .text)
                                                  ? Colors.green
                                                  : Colors.red),
                                        )
                                      : const SizedBox(),
                                ),
                              ]),
                              TableRow(children: [
                                TableCell(
                                  child: Text(
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
                                ),
                                TableCell(
                                  child: failedSecondAttempt == true
                                      ? Text(
                                          fifthWordController.text,
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: noOfMatchesFifthWordSecondGuess ==
                                                      int.parse(
                                                          noOfMatchesControllerSecondChoice
                                                              .text)
                                                  ? Colors.green
                                                  : Colors.red),
                                        )
                                      : const SizedBox(),
                                ),
                              ]),
                              TableRow(children: [
                                TableCell(
                                  child: Text(
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
                                ),
                                TableCell(
                                  child: failedSecondAttempt == true
                                      ? Text(
                                          sixthWordController.text,
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: noOfMatchesSixthWordSecondGuess ==
                                                      int.parse(
                                                          noOfMatchesControllerSecondChoice
                                                              .text)
                                                  ? Colors.green
                                                  : Colors.red),
                                        )
                                      : const SizedBox(),
                                ),
                              ]),
                              TableRow(children: [
                                TableCell(
                                  child: Text(
                                    seventhWordController.text,
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: noOfMatchesSeventhWordFirstGuess ==
                                                int.parse(
                                                    noOfMatchesControllerFirstChoice
                                                        .text)
                                            ? Colors.green
                                            : Colors.red),
                                  ),
                                ),
                                TableCell(
                                  child: failedSecondAttempt == true
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
                                ),
                              ]),
                              TableRow(children: [
                                TableCell(
                                  child: Text(
                                    eighthWordController.text,
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: noOfMatchesEighthWordFirstGuess ==
                                                int.parse(
                                                    noOfMatchesControllerFirstChoice
                                                        .text)
                                            ? Colors.green
                                            : Colors.red),
                                  ),
                                ),
                                TableCell(
                                  child: failedSecondAttempt == true
                                      ? Text(
                                          eighthWordController.text,
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: noOfMatchesEighthWordSecondGuess ==
                                                      int.parse(
                                                          noOfMatchesControllerSecondChoice
                                                              .text)
                                                  ? Colors.green
                                                  : Colors.red),
                                        )
                                      : const SizedBox(),
                                ),
                              ]),
                              TableRow(children: [
                                TableCell(
                                  child: Text(
                                    ninthWordController.text,
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: noOfMatchesNinthWordFirstGuess ==
                                                int.parse(
                                                    noOfMatchesControllerFirstChoice
                                                        .text)
                                            ? Colors.green
                                            : Colors.red),
                                  ),
                                ),
                                TableCell(
                                  child: failedSecondAttempt == true
                                      ? Text(
                                          ninthWordController.text,
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: noOfMatchesNinthWordSecondGuess ==
                                                      int.parse(
                                                          noOfMatchesControllerSecondChoice
                                                              .text)
                                                  ? Colors.green
                                                  : Colors.red),
                                        )
                                      : const SizedBox(),
                                ),
                              ]),
                              TableRow(children: [
                                TableCell(
                                  child: Text(
                                    tenthWordController.text,
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: noOfMatchesTenthWordFirstGuess ==
                                                int.parse(
                                                    noOfMatchesControllerFirstChoice
                                                        .text)
                                            ? Colors.green
                                            : Colors.red),
                                  ),
                                ),
                                TableCell(
                                  child: failedSecondAttempt == true
                                      ? Text(
                                          tenthWordController.text,
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: noOfMatchesTenthWordSecondGuess ==
                                                      int.parse(
                                                          noOfMatchesControllerSecondChoice
                                                              .text)
                                                  ? Colors.green
                                                  : Colors.red),
                                        )
                                      : const SizedBox(),
                                ),
                              ]),
                            ]),
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
          }
        },
        child: const Text('Go'),
      ),
    );
  }
}
