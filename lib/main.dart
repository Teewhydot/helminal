import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:helminal/constants.dart';
import 'package:helminal/engine/prediction_engine.dart';
import 'package:helminal/engine/processing_engine.dart';
import 'package:helminal/firebase_options.dart';
import 'package:helminal/login.dart';
import 'package:helminal/processing.dart';
import 'package:helminal/widgets/reusable_button.dart';
import 'package:helminal/widgets/textfield_widget.dart';
import 'package:helminal/word_analysis.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const LoginPage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  FocusNode focusNodeFirstWord = FocusNode();
  FocusNode focusNodeSecondWord = FocusNode();
  FocusNode focusNodeThirdWord = FocusNode();
  FocusNode focusNodeFourthWord = FocusNode();
  FocusNode focusNodeFifthWord = FocusNode();
  FocusNode focusNodeSixthWord = FocusNode();
  FocusNode focusNodeSeventhWord = FocusNode();
  FocusNode focusNodeEighthWord = FocusNode();
  FocusNode focusNodeNinthWord = FocusNode();
  FocusNode focusNodeTenthWord = FocusNode();
  FocusNode focusNodeEleventhWord = FocusNode();
  FocusNode focusNodeTwelfthWord = FocusNode();
  FocusNode focusNodeThirteenthWord = FocusNode();
  FocusNode focusNodeFourteenthWord = FocusNode();
  FocusNode focusNodeFifteenthWord = FocusNode();
  FocusNode focusNodeSixteenthWord = FocusNode();
  FocusNode focusNodeSeventeenthWord = FocusNode();
  FocusNode focusNodeEighteenthWord = FocusNode();
  FocusNode focusNodeNineteenthWord = FocusNode();
  FocusNode focusNodeTwentiethWord = FocusNode();

  FocusNode focusNodeFirstChoice = FocusNode();
  FocusNode focusNodeSecondChoice = FocusNode();
  FocusNode focusNodeThirdChoice = FocusNode();

  GlobalKey firstWordKey = GlobalKey();
  GlobalKey secondWordKey = GlobalKey();
  GlobalKey thirdWordKey = GlobalKey();
  GlobalKey fourthWordKey = GlobalKey();
  GlobalKey fifthWordKey = GlobalKey();
  GlobalKey sixthWordKey = GlobalKey();
  GlobalKey seventhWordKey = GlobalKey();
  GlobalKey eighthWordKey = GlobalKey();
  GlobalKey ninthWordKey = GlobalKey();
  GlobalKey tenthWordKey = GlobalKey();
  GlobalKey eleventhWordKey = GlobalKey();
  GlobalKey twelfthWordKey = GlobalKey();
  GlobalKey thirteenthWordKey = GlobalKey();
  GlobalKey fourteenthWordKey = GlobalKey();
  GlobalKey fifteenthWordKey = GlobalKey();
  GlobalKey sixteenthWordKey = GlobalKey();
  GlobalKey seventeenthWordKey = GlobalKey();
  GlobalKey eighteenthWordKey = GlobalKey();
  GlobalKey nineteenthWordKey = GlobalKey();
  GlobalKey twentiethWordKey = GlobalKey();

  GlobalKey firstChoice = GlobalKey();
  GlobalKey secondChoice = GlobalKey();
  GlobalKey thirdChoice = GlobalKey();

  final TextEditingController wordLengthController = TextEditingController();
  final TextEditingController firstChoiceController = TextEditingController();
  final TextEditingController secondChoiceController = TextEditingController();
  final TextEditingController thirdChoiceController = TextEditingController();
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
  final TextEditingController eleventhWordController = TextEditingController();
  final TextEditingController twelfthWordController = TextEditingController();
  final TextEditingController thirteenthWordController =
      TextEditingController();
  final TextEditingController fourteenthWordController =
      TextEditingController();
  final TextEditingController fifteenthWordController = TextEditingController();
  final TextEditingController sixteenthWordController = TextEditingController();
  final TextEditingController seventeenthWordController =
      TextEditingController();
  final TextEditingController eighteenthWordController =
      TextEditingController();
  final TextEditingController nineteenthWordController =
      TextEditingController();
  final TextEditingController twentiethWordController = TextEditingController();

  final TextEditingController noOfMatchesControllerFirstChoice =
      TextEditingController();
  final TextEditingController noOfMatchesControllerSecondChoice =
      TextEditingController();
  final TextEditingController noOfMatchesControllerThirdChoice =
      TextEditingController();
  int wordLength = 2;
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
  int noOfMatchesEleventhWordFirstGuess = 0;
  int noOfMatchesTwelfthWordFirstGuess = 0;
  int noOfMatchesThirteenthWordFirstGuess = 0;
  int noOfMatchesFourteenthWordFirstGuess = 0;
  int noOfMatchesFifteenthWordFirstGuess = 0;
  int noOfMatchesSixteenthWordFirstGuess = 0;
  int noOfMatchesSeventeenthWordFirstGuess = 0;
  int noOfMatchesEighteenthWordFirstGuess = 0;
  int noOfMatchesNineteenthWordFirstGuess = 0;
  int noOfMatchesTwentiethWordFirstGuess = 0;

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
  int noOfMatchesEleventhWordSecondGuess = 0;
  int noOfMatchesTwelfthWordSecondGuess = 0;
  int noOfMatchesThirteenthWordSecondGuess = 0;
  int noOfMatchesFourteenthWordSecondGuess = 0;
  int noOfMatchesFifteenthWordSecondGuess = 0;
  int noOfMatchesSixteenthWordSecondGuess = 0;
  int noOfMatchesSeventeenthWordSecondGuess = 0;
  int noOfMatchesEighteenthWordSecondGuess = 0;
  int noOfMatchesNineteenthWordSecondGuess = 0;
  int noOfMatchesTwentiethWordSecondGuess = 0;
// generate integers for the third guess
  int noOfMatchesFirstWordThirdGuess = 0;
  int noOfMatchesSecondWordThirdGuess = 0;
  int noOfMatchesThirdWordThirdGuess = 0;
  int noOfMatchesFourthWordThirdGuess = 0;
  int noOfMatchesFifthWordThirdGuess = 0;
  int noOfMatchesSixthWordThirdGuess = 0;
  int noOfMatchesSeventhWordThirdGuess = 0;
  int noOfMatchesEighthWordThirdGuess = 0;
  int noOfMatchesNinthWordThirdGuess = 0;
  int noOfMatchesTenthWordThirdGuess = 0;
  int noOfMatchesEleventhWordThirdGuess = 0;
  int noOfMatchesTwelfthWordThirdGuess = 0;
  int noOfMatchesThirteenthWordThirdGuess = 0;
  int noOfMatchesFourteenthWordThirdGuess = 0;
  int noOfMatchesFifteenthWordThirdGuess = 0;
  int noOfMatchesSixteenthWordThirdGuess = 0;
  int noOfMatchesSeventeenthWordThirdGuess = 0;
  int noOfMatchesEighteenthWordThirdGuess = 0;
  int noOfMatchesNineteenthWordThirdGuess = 0;
  int noOfMatchesTwentiethWordThirdGuess = 0;

  bool failedSecondAttempt = false;
  bool failedThirdAttempt = false;
  int noOfAttempts = 1;
  TableCell analyzeResults(){
    if (noOfAttempts ==1 ){
      return TableCell(child: Container());
    } else if(noOfAttempts==2){}
    return TableCell(child: Container());
  }

  TableCell buildLastTableCell(BuildContext context) {
    switch (noOfAttempts) {
      case 1:
        return TableCell(child:   noOfMatchesFirstWordFirstGuess == int.parse(noOfMatchesControllerFirstChoice.text)? const Icon(
          Icons.check_box,
          color: Colors.green,
        ): Container());
      case 2:
        return TableCell(child: noOfMatchesFirstWordFirstGuess == int.parse(noOfMatchesControllerFirstChoice.text) && noOfMatchesFirstWordSecondGuess == int.parse(noOfMatchesControllerSecondChoice.text)? const Icon(
          Icons.check_box,
          color: Colors.green,
        ): Container() );
      case 3:
        return TableCell(child: noOfMatchesFirstWordFirstGuess == int.parse(noOfMatchesControllerFirstChoice.text) && noOfMatchesFirstWordSecondGuess == int.parse(noOfMatchesControllerSecondChoice.text) && noOfMatchesFirstWordThirdGuess == int.parse(noOfMatchesControllerThirdChoice.text)? const Icon(
          Icons.check_box,
          color: Colors.green,
        ): Container() );
      default:
        return TableCell(child: Container(),);
    }
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    firstChoiceController.dispose();
    secondChoiceController.dispose();
    thirdChoiceController.dispose();
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
    eleventhWordController.dispose();
    twelfthWordController.dispose();
    thirteenthWordController.dispose();
    fourteenthWordController.dispose();
    fifteenthWordController.dispose();
    sixteenthWordController.dispose();
    seventeenthWordController.dispose();
    eighteenthWordController.dispose();
    nineteenthWordController.dispose();
    twentiethWordController.dispose();
    wordLengthController.dispose();
    noOfMatchesControllerFirstChoice.dispose();
    noOfMatchesControllerSecondChoice.dispose();
    noOfMatchesControllerThirdChoice.dispose();
    focusNodeFirstWord.dispose();
    focusNodeSecondWord.dispose();
    focusNodeThirdWord.dispose();
    focusNodeFourthWord.dispose();
    focusNodeFifthWord.dispose();
    focusNodeSixthWord.dispose();
    focusNodeSeventhWord.dispose();
    focusNodeEighthWord.dispose();
    focusNodeNinthWord.dispose();
    focusNodeTenthWord.dispose();
    focusNodeEleventhWord.dispose();
    focusNodeTwelfthWord.dispose();
    focusNodeThirteenthWord.dispose();
    focusNodeFourteenthWord.dispose();
    focusNodeFifteenthWord.dispose();
    focusNodeSixteenthWord.dispose();
    focusNodeSeventeenthWord.dispose();
    focusNodeEighteenthWord.dispose();
    focusNodeNineteenthWord.dispose();
    focusNodeTwentiethWord.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
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
              addVerticalSpacing(10),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const HomeApp();
                    }));
                  },
                  child: const Text('Analyse words')),
              addVerticalSpacing(10),
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
                  thirdChoiceController.clear();
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
                  eleventhWordController.clear();
                  twelfthWordController.clear();
                  thirteenthWordController.clear();
                  fourteenthWordController.clear();
                  fifteenthWordController.clear();
                  sixteenthWordController.clear();
                  seventeenthWordController.clear();
                  eighteenthWordController.clear();
                  nineteenthWordController.clear();
                  twentiethWordController.clear();
                  noOfMatchesControllerFirstChoice.clear();
                  noOfMatchesControllerSecondChoice.clear();
                  noOfMatchesControllerThirdChoice.clear();
                  wordLengthController.clear();
                  setState(() {
                    failedSecondAttempt = false;
                    failedThirdAttempt = false;
                    noOfAttempts = 1;
                  });
                },
                child: const Text('Clear all'),
              ),
              CustomTextfield(
                  textController: firstChoiceController,
                  maxLength: wordLength,
                  focusNode: focusNodeFirstChoice,
                  wordKey: firstChoice,
                  hintText: 'Enter the first guess'),
              CustomNumberTextfield(
                  unChanged: () {},
                  textController: noOfMatchesControllerFirstChoice,
                  hintText: 'No of matching letters '),
              const Text(
                  'Enter the other words shown on the game below apart from the first choice'),
              CustomTextfield(
                  textController: firstWordController,
                  maxLength: wordLength,
                  focusNode: focusNodeFirstWord,
                  wordKey: firstWordKey,
                  hintText: 'First Word'),
              CustomTextfield(
                  textController: secondWordController,
                  maxLength: wordLength,
                  hintText: 'Second Word',
                  focusNode: focusNodeSecondWord,
                  wordKey: secondWordKey),
              CustomTextfield(
                  maxLength: wordLength,
                  focusNode: focusNodeThirdWord,
                  wordKey: thirdWordKey,
                  textController: thirdWordController,
                  hintText: 'Third Word'),
              CustomTextfield(
                  textController: fourthWordController,
                  maxLength: wordLength,
                  focusNode: focusNodeFourthWord,
                  wordKey: fourthWordKey,
                  hintText: 'Fourth Word'),
              CustomTextfield(
                  textController: fifthWordController,
                  maxLength: wordLength,
                  focusNode: focusNodeFifthWord,
                  wordKey: fifthWordKey,
                  hintText: 'Fifth Word'),
              CustomTextfield(
                  textController: sixthWordController,
                  maxLength: wordLength,
                  focusNode: focusNodeSixthWord,
                  wordKey: sixthWordKey,
                  hintText: 'Sixth Word'),
              CustomTextfield(
                  textController: seventhWordController,
                  maxLength: wordLength,
                  focusNode: focusNodeSeventhWord,
                  wordKey: seventhWordKey,
                  hintText: 'Seventh Word'),
              CustomTextfield(
                  textController: eighthWordController,
                  maxLength: wordLength,
                  focusNode: focusNodeEighthWord,
                  wordKey: eighthWordKey,
                  hintText: 'Eighth Word'),
              CustomTextfield(
                  textController: ninthWordController,
                  maxLength: wordLength,
                  focusNode: focusNodeNinthWord,
                  wordKey: ninthWordKey,
                  hintText: 'Ninth Word'),
              CustomTextfield(
                  textController: tenthWordController,
                  maxLength: wordLength,
                  focusNode: focusNodeTenthWord,
                  wordKey: tenthWordKey,
                  hintText: 'Tenth Word'),
              CustomTextfield(
                  textController: eleventhWordController,
                  hintText: 'Eleventh word',
                  focusNode: focusNodeEleventhWord,
                  wordKey: eleventhWordKey,
                  maxLength: wordLength),
              CustomTextfield(
                  textController: twelfthWordController,
                  hintText: 'Twelfth word',
                  focusNode: focusNodeTwelfthWord,
                  wordKey: twelfthWordKey,
                  maxLength: wordLength),
              CustomTextfield(
                  textController: thirteenthWordController,
                  hintText: 'Thirteenth word',
                  focusNode: focusNodeThirteenthWord,
                  wordKey: thirteenthWordKey,
                  maxLength: wordLength),
              CustomTextfield(
                  textController: fourteenthWordController,
                  hintText: 'Fourteenth word',
                  focusNode: focusNodeFourteenthWord,
                  wordKey: fourteenthWordKey,
                  maxLength: wordLength),
              CustomTextfield(
                  textController: fifteenthWordController,
                  hintText: 'Fifteenth word',
                  focusNode: focusNodeFifteenthWord,
                  wordKey: fifteenthWordKey,
                  maxLength: wordLength),
              CustomTextfield(
                  textController: sixteenthWordController,
                  hintText: 'Sixteenth word',
                  focusNode: focusNodeSixteenthWord,
                  wordKey: sixteenthWordKey,
                  maxLength: wordLength),
              CustomTextfield(
                  textController: seventeenthWordController,
                  hintText: 'Seventeenth word',
                  focusNode: focusNodeSeventeenthWord,
                  wordKey: seventeenthWordKey,
                  maxLength: wordLength),
              CustomTextfield(
                  textController: eighteenthWordController,
                  hintText: 'Eighteenth word',
                  focusNode: focusNodeEighteenthWord,
                  wordKey: eighteenthWordKey,
                  maxLength: wordLength),
              CustomTextfield(
                  textController: nineteenthWordController,
                  hintText: 'Nineteenth word',
                  focusNode: focusNodeNineteenthWord,
                  wordKey: nineteenthWordKey,
                  maxLength: wordLength),
              CustomTextfield(
                  textController: twentiethWordController,
                  hintText: 'Twentieth word',
                  focusNode: focusNodeTwentiethWord,
                  wordKey: twentiethWordKey,
                  maxLength: wordLength),
              addVerticalSpacing(50),
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
                          noOfAttempts = 2;
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
                        focusNode: focusNodeSecondChoice,
                        wordKey: secondChoice,
                        hintText: 'Enter the second guess'),
                    CustomNumberTextfield(
                        unChanged: () {},
                        textController: noOfMatchesControllerSecondChoice,
                        hintText: 'No of matching letters '),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    const Text('Failed the third guess?'),
                    // button to add second choice and no of matching letters
                    TextButton(
                      onPressed: () {
                        setState(() {
                          failedThirdAttempt = !failedThirdAttempt;
                          noOfAttempts = 3;
                        });
                      },
                      child: failedThirdAttempt == false
                          ? const Text('Yes')
                          : const Text('No'),
                    ),
                  ],
                ),
              ),
              Visibility(
                visible: failedThirdAttempt,
                child: Column(
                  children: [
                    CustomTextfield(
                        textController: thirdChoiceController,
                        maxLength: wordLength,
                        focusNode: focusNodeThirdChoice,
                        wordKey: thirdChoice,
                        hintText: 'Enter the third guess'),
                    CustomNumberTextfield(
                        unChanged: () {},
                        textController: noOfMatchesControllerThirdChoice,
                        hintText: 'No of matching letters '),
                  ],
                ),
              ),
              addVerticalSpacing(40),
              ReusableButton(
                  const Text('Predict'),
                  () {
                    if (noOfMatchesControllerFirstChoice.text.isEmpty ||
                        firstChoiceController.text.isEmpty ||
                        firstWordController.text.isEmpty ||
                        secondWordController.text.isEmpty) {
                      // show a snack bar saying all fields are required
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Please check entries'),
                          duration: Duration(seconds: 1),
                        ),
                      );
                    } else {
                      noOfMatchesFirstWordFirstGuess = countMatchingLetters(
                          firstChoiceController.text, firstWordController.text);
                      noOfMatchesSecondWordFirstGuess = countMatchingLetters(
                          firstChoiceController.text,
                          secondWordController.text);
                      noOfMatchesThirdWordFirstGuess = countMatchingLetters(
                          firstChoiceController.text, thirdWordController.text);
                      noOfMatchesFourthWordFirstGuess = countMatchingLetters(
                          firstChoiceController.text,
                          fourthWordController.text);
                      noOfMatchesFifthWordFirstGuess = countMatchingLetters(
                          firstChoiceController.text, fifthWordController.text);
                      noOfMatchesSixthWordFirstGuess = countMatchingLetters(
                          firstChoiceController.text, sixthWordController.text);
                      noOfMatchesSeventhWordFirstGuess = countMatchingLetters(
                          firstChoiceController.text,
                          seventhWordController.text);
                      noOfMatchesEighthWordFirstGuess = countMatchingLetters(
                          firstChoiceController.text,
                          eighthWordController.text);
                      noOfMatchesNinthWordFirstGuess = countMatchingLetters(
                          firstChoiceController.text, ninthWordController.text);
                      noOfMatchesTenthWordFirstGuess = countMatchingLetters(
                          firstChoiceController.text, tenthWordController.text);
                      noOfMatchesEleventhWordFirstGuess = countMatchingLetters(
                          firstChoiceController.text,
                          eleventhWordController.text);
                      noOfMatchesTwelfthWordFirstGuess = countMatchingLetters(
                          firstChoiceController.text,
                          twelfthWordController.text);
                      noOfMatchesThirteenthWordFirstGuess =
                          countMatchingLetters(firstChoiceController.text,
                              thirteenthWordController.text);
                      noOfMatchesFourteenthWordFirstGuess =
                          countMatchingLetters(firstChoiceController.text,
                              fourteenthWordController.text);
                      noOfMatchesFifteenthWordFirstGuess = countMatchingLetters(
                          firstChoiceController.text,
                          fifteenthWordController.text);
                      noOfMatchesSixteenthWordFirstGuess = countMatchingLetters(
                          firstChoiceController.text,
                          sixteenthWordController.text);
                      noOfMatchesSeventeenthWordFirstGuess =
                          countMatchingLetters(firstChoiceController.text,
                              seventeenthWordController.text);
                      noOfMatchesEighteenthWordFirstGuess =
                          countMatchingLetters(firstChoiceController.text,
                              eighteenthWordController.text);
                      noOfMatchesNineteenthWordFirstGuess =
                          countMatchingLetters(firstChoiceController.text,
                              nineteenthWordController.text);
                      noOfMatchesTwentiethWordFirstGuess = countMatchingLetters(
                          firstChoiceController.text,
                          twentiethWordController.text);

                      if (failedSecondAttempt == true) {
                        noOfMatchesFirstWordSecondGuess = countMatchingLetters(
                            secondChoiceController.text,
                            firstWordController.text);
                        noOfMatchesSecondWordSecondGuess = countMatchingLetters(
                            secondChoiceController.text,
                            secondWordController.text);
                        noOfMatchesThirdWordSecondGuess = countMatchingLetters(
                            secondChoiceController.text,
                            thirdWordController.text);
                        noOfMatchesFourthWordSecondGuess = countMatchingLetters(
                            secondChoiceController.text,
                            fourthWordController.text);
                        noOfMatchesFifthWordSecondGuess = countMatchingLetters(
                            secondChoiceController.text,
                            fifthWordController.text);
                        noOfMatchesSixthWordSecondGuess = countMatchingLetters(
                            secondChoiceController.text,
                            sixthWordController.text);
                        noOfMatchesSeventhWordSecondGuess =
                            countMatchingLetters(secondChoiceController.text,
                                seventhWordController.text);
                        noOfMatchesEighthWordSecondGuess = countMatchingLetters(
                            secondChoiceController.text,
                            eighthWordController.text);
                        noOfMatchesNinthWordSecondGuess = countMatchingLetters(
                            secondChoiceController.text,
                            ninthWordController.text);
                        noOfMatchesTenthWordSecondGuess = countMatchingLetters(
                            secondChoiceController.text,
                            tenthWordController.text);
                        noOfMatchesEleventhWordSecondGuess =
                            countMatchingLetters(secondChoiceController.text,
                                eleventhWordController.text);
                        noOfMatchesTwelfthWordSecondGuess =
                            countMatchingLetters(secondChoiceController.text,
                                twelfthWordController.text);
                        noOfMatchesThirteenthWordSecondGuess =
                            countMatchingLetters(secondChoiceController.text,
                                thirteenthWordController.text);
                        noOfMatchesFourteenthWordSecondGuess =
                            countMatchingLetters(secondChoiceController.text,
                                fourteenthWordController.text);
                        noOfMatchesFifteenthWordSecondGuess =
                            countMatchingLetters(secondChoiceController.text,
                                fifteenthWordController.text);
                        noOfMatchesSixteenthWordSecondGuess =
                            countMatchingLetters(secondChoiceController.text,
                                sixteenthWordController.text);
                        noOfMatchesSeventeenthWordSecondGuess =
                            countMatchingLetters(secondChoiceController.text,
                                seventeenthWordController.text);
                        noOfMatchesEighteenthWordSecondGuess =
                            countMatchingLetters(secondChoiceController.text,
                                eighteenthWordController.text);
                        noOfMatchesNineteenthWordSecondGuess =
                            countMatchingLetters(secondChoiceController.text,
                                nineteenthWordController.text);
                        noOfMatchesTwentiethWordSecondGuess =
                            countMatchingLetters(secondChoiceController.text,
                                twentiethWordController.text);
                      }
                      if (failedThirdAttempt == true) {
                        noOfMatchesFirstWordThirdGuess = countMatchingLetters(
                            thirdChoiceController.text,
                            firstWordController.text);
                        noOfMatchesSecondWordThirdGuess = countMatchingLetters(
                            thirdChoiceController.text,
                            secondWordController.text);
                        noOfMatchesThirdWordThirdGuess = countMatchingLetters(
                            thirdChoiceController.text,
                            thirdWordController.text);
                        noOfMatchesFourthWordThirdGuess = countMatchingLetters(
                            thirdChoiceController.text,
                            fourthWordController.text);
                        noOfMatchesFifthWordThirdGuess = countMatchingLetters(
                            thirdChoiceController.text,
                            fifthWordController.text);
                        noOfMatchesSixthWordThirdGuess = countMatchingLetters(
                            thirdChoiceController.text,
                            sixthWordController.text);
                        noOfMatchesSeventhWordThirdGuess = countMatchingLetters(
                            thirdChoiceController.text,
                            seventhWordController.text);
                        noOfMatchesEighthWordThirdGuess = countMatchingLetters(
                            thirdChoiceController.text,
                            eighthWordController.text);
                        noOfMatchesNinthWordThirdGuess = countMatchingLetters(
                            thirdChoiceController.text,
                            ninthWordController.text);
                        noOfMatchesTenthWordThirdGuess = countMatchingLetters(
                            thirdChoiceController.text,
                            tenthWordController.text);
                        noOfMatchesEleventhWordThirdGuess =
                            countMatchingLetters(thirdChoiceController.text,
                                eleventhWordController.text);
                        noOfMatchesTwelfthWordThirdGuess = countMatchingLetters(
                            thirdChoiceController.text,
                            twelfthWordController.text);
                        noOfMatchesThirteenthWordThirdGuess =
                            countMatchingLetters(thirdChoiceController.text,
                                thirteenthWordController.text);
                        noOfMatchesFourteenthWordThirdGuess =
                            countMatchingLetters(thirdChoiceController.text,
                                fourteenthWordController.text);
                        noOfMatchesFifteenthWordThirdGuess =
                            countMatchingLetters(thirdChoiceController.text,
                                fifteenthWordController.text);
                        noOfMatchesSixteenthWordThirdGuess =
                            countMatchingLetters(thirdChoiceController.text,
                                sixteenthWordController.text);
                        noOfMatchesSeventeenthWordThirdGuess =
                            countMatchingLetters(thirdChoiceController.text,
                                seventeenthWordController.text);
                        noOfMatchesEighteenthWordThirdGuess =
                            countMatchingLetters(thirdChoiceController.text,
                                eighteenthWordController.text);
                        noOfMatchesNineteenthWordThirdGuess =
                            countMatchingLetters(thirdChoiceController.text,
                                nineteenthWordController.text);
                        noOfMatchesTwentiethWordThirdGuess =
                            countMatchingLetters(thirdChoiceController.text,
                                twentiethWordController.text);
                      }
                      // navigate to a new screen
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return SafeArea(
                          child: Scaffold(
                            body: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SingleChildScrollView(
                                physics: const AlwaysScrollableScrollPhysics(),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    const Text('Results',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold)),
                                    Table(
                                        border: TableBorder.all(),
                                        defaultVerticalAlignment:
                                            TableCellVerticalAlignment.middle,
                                        children: [
                                          const TableRow(children: [
                                            TableCell(
                                                child: Text('First attempt')),
                                            TableCell(
                                                child: Text('Second attempt')),
                                            TableCell(
                                                child: Text('Third attempt')),
                                            TableCell(child: Text('Result')),
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
                                            TableCell(
                                              child: failedThirdAttempt == true
                                                  ? Text(
                                                      firstWordController.text,
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: noOfMatchesFirstWordThirdGuess ==
                                                                  int.parse(
                                                                      noOfMatchesControllerThirdChoice
                                                                          .text)
                                                              ? Colors.green
                                                              : Colors.red),
                                                    )
                                                  : const SizedBox(),
                                            ),
                                            buildLastTableCell(context),

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
                                            TableCell(
                                              child: failedThirdAttempt == true
                                                  ? Text(
                                                      secondWordController.text,
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: noOfMatchesSecondWordThirdGuess ==
                                                                  int.parse(
                                                                      noOfMatchesControllerThirdChoice
                                                                          .text)
                                                              ? Colors.green
                                                              : Colors.red),
                                                    )
                                                  : const SizedBox(),
                                            ),
                                            TableCell(child:
                                            noOfMatchesSecondWordFirstGuess == int.parse(noOfMatchesControllerFirstChoice.text) ||
                                            noOfMatchesSecondWordFirstGuess == int.parse(noOfMatchesControllerFirstChoice.text) &&
                                            noOfMatchesSecondWordSecondGuess == int.parse(noOfMatchesControllerSecondChoice.text) ||
                                            noOfMatchesSecondWordFirstGuess == int.parse(noOfMatchesControllerFirstChoice.text) &&
                                            noOfMatchesSecondWordSecondGuess == int.parse(noOfMatchesControllerSecondChoice.text) &&
                                            noOfMatchesSecondWordThirdGuess == int.parse(noOfMatchesControllerThirdChoice.text) ? const Icon(Icons.check_box, color: Colors.green,) : const SizedBox(),
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
                                            TableCell(
                                              child: failedThirdAttempt == true
                                                  ? Text(
                                                      thirdWordController.text,
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: noOfMatchesThirdWordThirdGuess ==
                                                                  int.parse(
                                                                      noOfMatchesControllerThirdChoice
                                                                          .text)
                                                              ? Colors.green
                                                              : Colors.red),
                                                    )
                                                  : const SizedBox(),
                                            ),
                                            TableCell(child:
                                            noOfMatchesThirdWordFirstGuess == int.parse(noOfMatchesControllerFirstChoice.text) ||
                                            noOfMatchesThirdWordFirstGuess == int.parse(noOfMatchesControllerFirstChoice.text) &&
                                            noOfMatchesThirdWordSecondGuess == int.parse(noOfMatchesControllerSecondChoice.text) ||
                                            noOfMatchesThirdWordFirstGuess == int.parse(noOfMatchesControllerFirstChoice.text) &&
                                            noOfMatchesThirdWordSecondGuess == int.parse(noOfMatchesControllerSecondChoice.text) &&
                                            noOfMatchesThirdWordThirdGuess == int.parse(noOfMatchesControllerThirdChoice.text) ? const Icon(Icons.check_box, color: Colors.green,) : const SizedBox(),
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
                                            TableCell(
                                              child: failedThirdAttempt == true
                                                  ? Text(
                                                      fourthWordController.text,
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: noOfMatchesFourthWordThirdGuess ==
                                                                  int.parse(
                                                                      noOfMatchesControllerThirdChoice
                                                                          .text)
                                                              ? Colors.green
                                                              : Colors.red),
                                                    )
                                                  : const SizedBox(),
                                            ),
                                            TableCell(child:
                                            noOfMatchesFourthWordFirstGuess == int.parse(noOfMatchesControllerFirstChoice.text) ||
                                            noOfMatchesFourthWordFirstGuess == int.parse(noOfMatchesControllerFirstChoice.text) &&
                                            noOfMatchesFourthWordSecondGuess == int.parse(noOfMatchesControllerSecondChoice.text) ||
                                            noOfMatchesFourthWordFirstGuess == int.parse(noOfMatchesControllerFirstChoice.text) &&
                                            noOfMatchesFourthWordSecondGuess == int.parse(noOfMatchesControllerSecondChoice.text) &&
                                            noOfMatchesFourthWordThirdGuess == int.parse(noOfMatchesControllerThirdChoice.text) ? const Icon(Icons.check_box, color: Colors.green,) : const SizedBox(),
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
                                            TableCell(
                                              child: failedThirdAttempt == true
                                                  ? Text(
                                                      fifthWordController.text,
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: noOfMatchesFifthWordThirdGuess ==
                                                                  int.parse(
                                                                      noOfMatchesControllerThirdChoice
                                                                          .text)
                                                              ? Colors.green
                                                              : Colors.red),
                                                    )
                                                  : const SizedBox(),
                                            ),
                                            TableCell(child:
                                            noOfMatchesFifthWordFirstGuess == int.parse(noOfMatchesControllerFirstChoice.text) ||
                                            noOfMatchesFifthWordFirstGuess == int.parse(noOfMatchesControllerFirstChoice.text) &&
                                            noOfMatchesFifthWordSecondGuess == int.parse(noOfMatchesControllerSecondChoice.text) ||
                                            noOfMatchesFifthWordFirstGuess == int.parse(noOfMatchesControllerFirstChoice.text) &&
                                            noOfMatchesFifthWordSecondGuess == int.parse(noOfMatchesControllerSecondChoice.text) &&
                                            noOfMatchesFifthWordThirdGuess == int.parse(noOfMatchesControllerThirdChoice.text) ? const Icon(Icons.check_box, color: Colors.green,) : const SizedBox(),
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
                                            TableCell(
                                              child: failedThirdAttempt == true
                                                  ? Text(
                                                      sixthWordController.text,
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: noOfMatchesSixthWordThirdGuess ==
                                                                  int.parse(
                                                                      noOfMatchesControllerThirdChoice
                                                                          .text)
                                                              ? Colors.green
                                                              : Colors.red),
                                                    )
                                                  : const SizedBox(),
                                            ),
                                            TableCell(child:
                                            noOfMatchesSixthWordFirstGuess == int.parse(noOfMatchesControllerFirstChoice.text) ||
                                            noOfMatchesSixthWordFirstGuess == int.parse(noOfMatchesControllerFirstChoice.text) &&
                                            noOfMatchesSixthWordSecondGuess == int.parse(noOfMatchesControllerSecondChoice.text) ||
                                            noOfMatchesSixthWordFirstGuess == int.parse(noOfMatchesControllerFirstChoice.text) &&
                                            noOfMatchesSixthWordSecondGuess == int.parse(noOfMatchesControllerSecondChoice.text) &&
                                            noOfMatchesSixthWordThirdGuess == int.parse(noOfMatchesControllerThirdChoice.text) ? const Icon(Icons.check_box, color: Colors.green,) : const SizedBox(),
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
                                                      seventhWordController
                                                          .text,
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
                                            TableCell(
                                              child: failedThirdAttempt == true
                                                  ? Text(
                                                      seventhWordController
                                                          .text,
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: noOfMatchesSeventhWordThirdGuess ==
                                                                  int.parse(
                                                                      noOfMatchesControllerThirdChoice
                                                                          .text)
                                                              ? Colors.green
                                                              : Colors.red),
                                                    )
                                                  : const SizedBox(),
                                            ),
                                            TableCell(child:
                                            noOfMatchesSeventhWordFirstGuess == int.parse(noOfMatchesControllerFirstChoice.text) ||
                                            noOfMatchesSeventhWordFirstGuess == int.parse(noOfMatchesControllerFirstChoice.text) &&
                                            noOfMatchesSeventhWordSecondGuess == int.parse(noOfMatchesControllerSecondChoice.text) ||
                                            noOfMatchesSeventhWordFirstGuess == int.parse(noOfMatchesControllerFirstChoice.text) &&
                                            noOfMatchesSeventhWordSecondGuess == int.parse(noOfMatchesControllerSecondChoice.text) &&
                                            noOfMatchesSeventhWordThirdGuess == int.parse(noOfMatchesControllerThirdChoice.text) ? const Icon(Icons.check_box, color: Colors.green,) : const SizedBox(),
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
                                            TableCell(
                                              child: failedThirdAttempt == true
                                                  ? Text(
                                                      eighthWordController.text,
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: noOfMatchesEighthWordThirdGuess ==
                                                                  int.parse(
                                                                      noOfMatchesControllerThirdChoice
                                                                          .text)
                                                              ? Colors.green
                                                              : Colors.red),
                                                    )
                                                  : const SizedBox(),
                                            ),
                                            TableCell(child:
                                            noOfMatchesEighthWordFirstGuess == int.parse(noOfMatchesControllerFirstChoice.text) ||
                                            noOfMatchesEighthWordFirstGuess == int.parse(noOfMatchesControllerFirstChoice.text) &&
                                            noOfMatchesEighthWordSecondGuess == int.parse(noOfMatchesControllerSecondChoice.text) ||
                                            noOfMatchesEighthWordFirstGuess == int.parse(noOfMatchesControllerFirstChoice.text) &&
                                            noOfMatchesEighthWordSecondGuess == int.parse(noOfMatchesControllerSecondChoice.text) &&
                                            noOfMatchesEighthWordThirdGuess == int.parse(noOfMatchesControllerThirdChoice.text) ? const Icon(Icons.check_box, color: Colors.green,) : const SizedBox(),
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
                                            TableCell(
                                              child: failedThirdAttempt == true
                                                  ? Text(
                                                      ninthWordController.text,
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: noOfMatchesNinthWordThirdGuess ==
                                                                  int.parse(
                                                                      noOfMatchesControllerThirdChoice
                                                                          .text)
                                                              ? Colors.green
                                                              : Colors.red),
                                                    )
                                                  : const SizedBox(),
                                            ),
                                            TableCell(child:
                                            noOfMatchesNinthWordFirstGuess == int.parse(noOfMatchesControllerFirstChoice.text) ||
                                            noOfMatchesNinthWordFirstGuess == int.parse(noOfMatchesControllerFirstChoice.text) &&
                                            noOfMatchesNinthWordSecondGuess == int.parse(noOfMatchesControllerSecondChoice.text) ||
                                            noOfMatchesNinthWordFirstGuess == int.parse(noOfMatchesControllerFirstChoice.text) &&
                                            noOfMatchesNinthWordSecondGuess == int.parse(noOfMatchesControllerSecondChoice.text) &&
                                            noOfMatchesNinthWordThirdGuess == int.parse(noOfMatchesControllerThirdChoice.text) ? const Icon(Icons.check_box, color: Colors.green,) : const SizedBox(),
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
                                            TableCell(
                                              child: failedThirdAttempt == true
                                                  ? Text(
                                                      tenthWordController.text,
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: noOfMatchesTenthWordThirdGuess ==
                                                                  int.parse(
                                                                      noOfMatchesControllerThirdChoice
                                                                          .text)
                                                              ? Colors.green
                                                              : Colors.red),
                                                    )
                                                  : const SizedBox(),
                                            ),
                                            TableCell(child:
                                            noOfMatchesTenthWordFirstGuess == int.parse(noOfMatchesControllerFirstChoice.text) ||
                                            noOfMatchesTenthWordFirstGuess == int.parse(noOfMatchesControllerFirstChoice.text) &&
                                            noOfMatchesTenthWordSecondGuess == int.parse(noOfMatchesControllerSecondChoice.text) ||
                                            noOfMatchesTenthWordFirstGuess == int.parse(noOfMatchesControllerFirstChoice.text) &&
                                            noOfMatchesTenthWordSecondGuess == int.parse(noOfMatchesControllerSecondChoice.text) &&
                                            noOfMatchesTenthWordThirdGuess == int.parse(noOfMatchesControllerThirdChoice.text) ? const Icon(Icons.check_box, color: Colors.green,) : const SizedBox(),
                                            ),
                                          ]),
                                          TableRow(children: [
                                            TableCell(
                                              child: Text(
                                                eleventhWordController.text,
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    color: noOfMatchesEleventhWordFirstGuess ==
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
                                                      eleventhWordController
                                                          .text,
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: noOfMatchesEleventhWordSecondGuess ==
                                                                  int.parse(
                                                                      noOfMatchesControllerSecondChoice
                                                                          .text)
                                                              ? Colors.green
                                                              : Colors.red),
                                                    )
                                                  : const SizedBox(),
                                            ),
                                            TableCell(
                                              child: failedThirdAttempt == true
                                                  ? Text(
                                                      eleventhWordController
                                                          .text,
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: noOfMatchesEleventhWordThirdGuess ==
                                                                  int.parse(
                                                                      noOfMatchesControllerThirdChoice
                                                                          .text)
                                                              ? Colors.green
                                                              : Colors.red),
                                                    )
                                                  : const SizedBox(),
                                            ),
                                            TableCell(child:
                                            noOfMatchesEleventhWordFirstGuess == int.parse(noOfMatchesControllerFirstChoice.text) ||
                                            noOfMatchesEleventhWordFirstGuess == int.parse(noOfMatchesControllerFirstChoice.text) &&
                                            noOfMatchesEleventhWordSecondGuess == int.parse(noOfMatchesControllerSecondChoice.text) ||
                                            noOfMatchesEleventhWordFirstGuess == int.parse(noOfMatchesControllerFirstChoice.text) &&
                                            noOfMatchesEleventhWordSecondGuess == int.parse(noOfMatchesControllerSecondChoice.text) &&

                                            noOfMatchesEleventhWordThirdGuess == int.parse(noOfMatchesControllerThirdChoice.text) ? const Icon(Icons.check_box, color: Colors.green,) : const SizedBox(),
                                            ),
                                          ]),
                                          TableRow(children: [
                                            TableCell(
                                              child: Text(
                                                twelfthWordController.text,
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    color: noOfMatchesTwelfthWordFirstGuess ==
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
                                                      twelfthWordController
                                                          .text,
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: noOfMatchesTwelfthWordSecondGuess ==
                                                                  int.parse(
                                                                      noOfMatchesControllerSecondChoice
                                                                          .text)
                                                              ? Colors.green
                                                              : Colors.red),
                                                    )
                                                  : const SizedBox(),
                                            ),
                                            TableCell(
                                              child: failedThirdAttempt == true
                                                  ? Text(
                                                      twelfthWordController
                                                          .text,
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: noOfMatchesTwelfthWordThirdGuess ==
                                                                  int.parse(
                                                                      noOfMatchesControllerThirdChoice
                                                                          .text)
                                                              ? Colors.green
                                                              : Colors.red),
                                                    )
                                                  : const SizedBox(),
                                            ),
                                            TableCell(child:
                                            noOfMatchesTwelfthWordFirstGuess == int.parse(noOfMatchesControllerFirstChoice.text) ||
                                            noOfMatchesTwelfthWordFirstGuess == int.parse(noOfMatchesControllerFirstChoice.text) &&
                                            noOfMatchesTwelfthWordSecondGuess == int.parse(noOfMatchesControllerSecondChoice.text) ||
                                            noOfMatchesTwelfthWordFirstGuess == int.parse(noOfMatchesControllerFirstChoice.text) &&
                                            noOfMatchesTwelfthWordSecondGuess == int.parse(noOfMatchesControllerSecondChoice.text) &&
                                            noOfMatchesTwelfthWordThirdGuess == int.parse(noOfMatchesControllerThirdChoice.text) ? const Icon(Icons.check_box, color: Colors.green,) : const SizedBox(),
                                            ),
                                          ]),
                                          TableRow(children: [
                                            TableCell(
                                              child: Text(
                                                thirteenthWordController.text,
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    color: noOfMatchesThirteenthWordFirstGuess ==
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
                                                      thirteenthWordController
                                                          .text,
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: noOfMatchesThirteenthWordSecondGuess ==
                                                                  int.parse(
                                                                      noOfMatchesControllerSecondChoice
                                                                          .text)
                                                              ? Colors.green
                                                              : Colors.red),
                                                    )
                                                  : const SizedBox(),
                                            ),
                                            TableCell(
                                              child: failedThirdAttempt == true
                                                  ? Text(
                                                      thirteenthWordController
                                                          .text,
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: noOfMatchesThirteenthWordThirdGuess ==
                                                                  int.parse(
                                                                      noOfMatchesControllerThirdChoice
                                                                          .text)
                                                              ? Colors.green
                                                              : Colors.red),
                                                    )
                                                  : const SizedBox(),
                                            ),
                                            TableCell(child:
                                            noOfMatchesThirteenthWordFirstGuess == int.parse(noOfMatchesControllerFirstChoice.text) ||
                                            noOfMatchesThirteenthWordFirstGuess == int.parse(noOfMatchesControllerFirstChoice.text) &&
                                            noOfMatchesThirteenthWordSecondGuess == int.parse(noOfMatchesControllerSecondChoice.text) ||
                                            noOfMatchesThirteenthWordFirstGuess == int.parse(noOfMatchesControllerFirstChoice.text) &&
                                            noOfMatchesThirteenthWordSecondGuess == int.parse(noOfMatchesControllerSecondChoice.text) &&
                                            noOfMatchesThirteenthWordThirdGuess == int.parse(noOfMatchesControllerThirdChoice.text) ? const Icon(Icons.check_box, color: Colors.green,) : const SizedBox(),
                                            ),
                                          ]),
                                          TableRow(children: [
                                            TableCell(
                                              child: Text(
                                                fourteenthWordController.text,
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    color: noOfMatchesFourteenthWordFirstGuess ==
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
                                                      fourteenthWordController
                                                          .text,
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: noOfMatchesFourteenthWordSecondGuess ==
                                                                  int.parse(
                                                                      noOfMatchesControllerSecondChoice
                                                                          .text)
                                                              ? Colors.green
                                                              : Colors.red),
                                                    )
                                                  : const SizedBox(),
                                            ),
                                            TableCell(
                                              child: failedThirdAttempt == true
                                                  ? Text(
                                                      fourteenthWordController
                                                          .text,
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: noOfMatchesFourteenthWordThirdGuess ==
                                                                  int.parse(
                                                                      noOfMatchesControllerThirdChoice
                                                                          .text)
                                                              ? Colors.green
                                                              : Colors.red),
                                                    )
                                                  : const SizedBox(),
                                            ),
                                            TableCell(child:
                                            noOfMatchesFourteenthWordFirstGuess == int.parse(noOfMatchesControllerFirstChoice.text) ||
                                            noOfMatchesFourteenthWordFirstGuess == int.parse(noOfMatchesControllerFirstChoice.text) &&
                                            noOfMatchesFourteenthWordSecondGuess == int.parse(noOfMatchesControllerSecondChoice.text) ||
                                            noOfMatchesFourteenthWordFirstGuess == int.parse(noOfMatchesControllerFirstChoice.text) &&
                                            noOfMatchesFourteenthWordSecondGuess == int.parse(noOfMatchesControllerSecondChoice.text) &&
                                            noOfMatchesFourteenthWordThirdGuess == int.parse(noOfMatchesControllerThirdChoice.text) ? const Icon(Icons.check_box, color: Colors.green,) : const SizedBox(),
                                            ),
                                          ]),
                                          TableRow(children: [
                                            TableCell(
                                              child: Text(
                                                fifteenthWordController.text,
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    color: noOfMatchesFifteenthWordFirstGuess ==
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
                                                      fifteenthWordController
                                                          .text,
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: noOfMatchesFifteenthWordSecondGuess ==
                                                                  int.parse(
                                                                      noOfMatchesControllerSecondChoice
                                                                          .text)
                                                              ? Colors.green
                                                              : Colors.red),
                                                    )
                                                  : const SizedBox(),
                                            ),
                                            TableCell(
                                              child: failedThirdAttempt == true
                                                  ? Text(
                                                      fifteenthWordController
                                                          .text,
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: noOfMatchesFifteenthWordThirdGuess ==
                                                                  int.parse(
                                                                      noOfMatchesControllerThirdChoice
                                                                          .text)
                                                              ? Colors.green
                                                              : Colors.red),
                                                    )
                                                  : const SizedBox(),
                                            ),
                                            TableCell(child:
                                            noOfMatchesFifteenthWordFirstGuess == int.parse(noOfMatchesControllerFirstChoice.text) ||
                                            noOfMatchesFifteenthWordFirstGuess == int.parse(noOfMatchesControllerFirstChoice.text) &&
                                            noOfMatchesFifteenthWordSecondGuess == int.parse(noOfMatchesControllerSecondChoice.text) ||
                                            noOfMatchesFifteenthWordFirstGuess == int.parse(noOfMatchesControllerFirstChoice.text) &&
                                            noOfMatchesFifteenthWordSecondGuess == int.parse(noOfMatchesControllerSecondChoice.text) &&
                                            noOfMatchesFifteenthWordThirdGuess == int.parse(noOfMatchesControllerThirdChoice.text) ? const Icon(Icons.check_box, color: Colors.green,) : const SizedBox(),
                                            ),
                                          ]),
                                          TableRow(children: [
                                            TableCell(
                                              child: Text(
                                                sixteenthWordController.text,
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    color: noOfMatchesSixteenthWordFirstGuess ==
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
                                                      sixteenthWordController
                                                          .text,
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: noOfMatchesSixteenthWordSecondGuess ==
                                                                  int.parse(
                                                                      noOfMatchesControllerSecondChoice
                                                                          .text)
                                                              ? Colors.green
                                                              : Colors.red),
                                                    )
                                                  : const SizedBox(),
                                            ),
                                            TableCell(
                                              child: failedThirdAttempt == true
                                                  ? Text(
                                                      sixteenthWordController
                                                          .text,
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: noOfMatchesSixteenthWordThirdGuess ==
                                                                  int.parse(
                                                                      noOfMatchesControllerThirdChoice
                                                                          .text)
                                                              ? Colors.green
                                                              : Colors.red),
                                                    )
                                                  : const SizedBox(),
                                            ),
                                            TableCell(child:
                                            noOfMatchesSixteenthWordFirstGuess == int.parse(noOfMatchesControllerFirstChoice.text) ||
                                            noOfMatchesSixteenthWordFirstGuess == int.parse(noOfMatchesControllerFirstChoice.text) &&
                                            noOfMatchesSixteenthWordSecondGuess == int.parse(noOfMatchesControllerSecondChoice.text) ||

                                            noOfMatchesSixteenthWordFirstGuess == int.parse(noOfMatchesControllerFirstChoice.text) &&
                                            noOfMatchesSixteenthWordSecondGuess == int.parse(noOfMatchesControllerSecondChoice.text) &&
                                            noOfMatchesSixteenthWordThirdGuess == int.parse(noOfMatchesControllerThirdChoice.text) ? const Icon(Icons.check_box, color: Colors.green,) : const SizedBox(),
                                            ),
                                          ]),
                                          TableRow(children: [
                                            TableCell(
                                              child: Text(
                                                seventeenthWordController.text,
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    color: noOfMatchesSeventeenthWordFirstGuess ==
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
                                                      seventeenthWordController
                                                          .text,
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: noOfMatchesSeventeenthWordSecondGuess ==
                                                                  int.parse(
                                                                      noOfMatchesControllerSecondChoice
                                                                          .text)
                                                              ? Colors.green
                                                              : Colors.red),
                                                    )
                                                  : const SizedBox(),
                                            ),
                                            TableCell(
                                              child: failedThirdAttempt == true
                                                  ? Text(
                                                      seventeenthWordController
                                                          .text,
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: noOfMatchesSeventeenthWordThirdGuess ==
                                                                  int.parse(
                                                                      noOfMatchesControllerThirdChoice
                                                                          .text)
                                                              ? Colors.green
                                                              : Colors.red),
                                                    )
                                                  : const SizedBox(),
                                            ),
                                            TableCell(child:
                                            noOfMatchesSeventeenthWordFirstGuess == int.parse(noOfMatchesControllerFirstChoice.text) ||
                                            noOfMatchesSeventeenthWordFirstGuess == int.parse(noOfMatchesControllerFirstChoice.text) &&
                                            noOfMatchesSeventeenthWordSecondGuess == int.parse(noOfMatchesControllerSecondChoice.text) ||
                                            noOfMatchesSeventeenthWordFirstGuess == int.parse(noOfMatchesControllerFirstChoice.text) &&
                                            noOfMatchesSeventeenthWordSecondGuess == int.parse(noOfMatchesControllerSecondChoice.text) &&
                                            noOfMatchesSeventeenthWordThirdGuess == int.parse(noOfMatchesControllerThirdChoice.text) ? const Icon(Icons.check_box, color: Colors.green,) : const SizedBox(),
                                            ),
                                          ]),
                                          TableRow(children: [
                                            TableCell(
                                              child: Text(
                                                eighteenthWordController.text,
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    color: noOfMatchesEighteenthWordFirstGuess ==
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
                                                      eighteenthWordController
                                                          .text,
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: noOfMatchesEighteenthWordSecondGuess ==
                                                                  int.parse(
                                                                      noOfMatchesControllerSecondChoice
                                                                          .text)
                                                              ? Colors.green
                                                              : Colors.red),
                                                    )
                                                  : const SizedBox(),
                                            ),
                                            TableCell(
                                              child: failedThirdAttempt == true
                                                  ? Text(
                                                      eighteenthWordController
                                                          .text,
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: noOfMatchesEighteenthWordThirdGuess ==
                                                                  int.parse(
                                                                      noOfMatchesControllerThirdChoice
                                                                          .text)
                                                              ? Colors.green
                                                              : Colors.red),
                                                    )
                                                  : const SizedBox(),
                                            ),
                                            TableCell(child:
                                            noOfMatchesEighteenthWordFirstGuess == int.parse(noOfMatchesControllerFirstChoice.text) ||
                                            noOfMatchesEighteenthWordFirstGuess == int.parse(noOfMatchesControllerFirstChoice.text) &&

                                            noOfMatchesEighteenthWordSecondGuess == int.parse(noOfMatchesControllerSecondChoice.text) ||
                                            noOfMatchesEighteenthWordFirstGuess == int.parse(noOfMatchesControllerFirstChoice.text) &&
                                            noOfMatchesEighteenthWordSecondGuess == int.parse(noOfMatchesControllerSecondChoice.text) &&
                                            noOfMatchesEighteenthWordThirdGuess == int.parse(noOfMatchesControllerThirdChoice.text) ? const Icon(Icons.check_box, color: Colors.green,) : const SizedBox(),
                                            ),
                                          ]),
                                          TableRow(children: [
                                            TableCell(
                                              child: Text(
                                                nineteenthWordController.text,
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    color: noOfMatchesNineteenthWordFirstGuess ==
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
                                                      nineteenthWordController
                                                          .text,
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: noOfMatchesNineteenthWordSecondGuess ==
                                                                  int.parse(
                                                                      noOfMatchesControllerSecondChoice
                                                                          .text)
                                                              ? Colors.green
                                                              : Colors.red),
                                                    )
                                                  : const SizedBox(),
                                            ),
                                            TableCell(
                                              child: failedThirdAttempt == true
                                                  ? Text(
                                                      nineteenthWordController
                                                          .text,
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: noOfMatchesNineteenthWordThirdGuess ==
                                                                  int.parse(
                                                                      noOfMatchesControllerThirdChoice
                                                                          .text)
                                                              ? Colors.green
                                                              : Colors.red),
                                                    )
                                                  : const SizedBox(),
                                            ),
                                            TableCell(child:
                                            noOfMatchesNineteenthWordFirstGuess == int.parse(noOfMatchesControllerFirstChoice.text) ||
                                            noOfMatchesNineteenthWordFirstGuess == int.parse(noOfMatchesControllerFirstChoice.text) &&

                                            noOfMatchesNineteenthWordSecondGuess == int.parse(noOfMatchesControllerSecondChoice.text) ||
                                            noOfMatchesNineteenthWordFirstGuess == int.parse(noOfMatchesControllerFirstChoice.text) &&
                                            noOfMatchesNineteenthWordSecondGuess == int.parse(noOfMatchesControllerSecondChoice.text) &&
                                            noOfMatchesNineteenthWordThirdGuess == int.parse(noOfMatchesControllerThirdChoice.text) ? const Icon(Icons.check_box, color: Colors.green,) : const SizedBox(),
                                            ),
                                          ]),
                                          TableRow(children: [
                                            TableCell(
                                              child: Text(
                                                twentiethWordController.text,
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    color: noOfMatchesTwentiethWordFirstGuess ==
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
                                                      twentiethWordController
                                                          .text,
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: noOfMatchesTwentiethWordSecondGuess ==
                                                                  int.parse(
                                                                      noOfMatchesControllerSecondChoice
                                                                          .text)
                                                              ? Colors.green
                                                              : Colors.red),
                                                    )
                                                  : const SizedBox(),
                                            ),
                                            TableCell(
                                              child: failedThirdAttempt == true
                                                  ? Text(
                                                      twentiethWordController
                                                          .text,
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: noOfMatchesTwentiethWordThirdGuess ==
                                                                  int.parse(
                                                                      noOfMatchesControllerThirdChoice
                                                                          .text)
                                                              ? Colors.green
                                                              : Colors.red),
                                                    )
                                                  : const SizedBox(),
                                            ),
                                            TableCell(child:
                                            noOfMatchesTwentiethWordFirstGuess == int.parse(noOfMatchesControllerFirstChoice.text) ||
                                            noOfMatchesTwentiethWordFirstGuess == int.parse(noOfMatchesControllerFirstChoice.text) &&

                                            noOfMatchesTwentiethWordSecondGuess == int.parse(noOfMatchesControllerSecondChoice.text) ||
                                            noOfMatchesTwentiethWordFirstGuess == int.parse(noOfMatchesControllerFirstChoice.text) &&
                                            noOfMatchesTwentiethWordSecondGuess == int.parse(noOfMatchesControllerSecondChoice.text) &&
                                            noOfMatchesTwentiethWordThirdGuess == int.parse(noOfMatchesControllerThirdChoice.text) ? const Icon(Icons.check_box, color: Colors.green,) : const SizedBox(),
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
                            ),
                          ),
                        );
                      }));
                    }
                  },
                  Colors.white,
                  () {
                    List<String> words = [
                      firstWordController.text,
                      secondWordController.text,
                      thirdWordController.text,
                      fourthWordController.text,
                      fifthWordController.text,
                      sixthWordController.text,
                      seventhWordController.text,
                      eighthWordController.text,
                      ninthWordController.text,
                      tenthWordController.text,
                      eleventhWordController.text,
                      twelfthWordController.text,
                      thirteenthWordController.text,
                      fourteenthWordController.text,
                      fifteenthWordController.text,
                      sixteenthWordController.text,
                      seventeenthWordController.text,
                      eighteenthWordController.text,
                      nineteenthWordController.text,
                      twentiethWordController.text
                    ];
                    List<Map<String, dynamic>> matchingWordPairs =
                        locateMatchingWordPairs(words);
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return AnalysisResultsScreen(
                          matchingWordPairs: matchingWordPairs);
                    }));
                  }),
              addVerticalSpacing(100),
            ],
          ),
        ),
      ),
    );
  }
}
