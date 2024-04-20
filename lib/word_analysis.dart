import 'package:flutter/material.dart';
import 'package:helminal/processing.dart';
import 'package:helminal/widgets/textfield_widget.dart';

class HomeApp extends StatefulWidget {
  const HomeApp({Key? key}) : super(key: key);
  @override
  State<HomeApp> createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  final List<TextEditingController> _textControllers =
  List.generate(15, (index) => TextEditingController());
  final TextEditingController analysisWordLengthController = TextEditingController();
  int analysisWordLength = 2;
  List<Map<String, dynamic>> locateMatchingWordPairs(List<String> words) {
    List<Map<String, dynamic>> matchingWordPairs = [];

    for (int i = 0; i < words.length; i++) {
      String word1 = words[i];
      for (int j = i + 1; j < words.length; j++) {
        String word2 = words[j];

        int matchingLetters = 0;
        String matchedPositions = '';

        for (int k = 0; k < word1.length; k++) {
          if (word1[k] == word2[k]) {
            matchingLetters++;
            matchedPositions += k.toString();
          }
        }

        if (matchingLetters >= 1 && matchingLetters <= 5) {
          matchingWordPairs.add({
            'words': [word1, word2],
            'matchingLetters': matchingLetters,
          });
        }
      }
    }

    return matchingWordPairs;
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    for (var i = 0; i < 15; i++) {
      _textControllers[i].dispose();
    }
    analysisWordLengthController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Custom Textfield'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: [
                  CustomNumberTextfield(
                      textController: analysisWordLengthController,
                      unChanged: (value) {
                        setState(() {
                          analysisWordLength = int.parse(value);
                        });
                      },
                      hintText: 'Word length '),
                  // generate 15 textfields attached to a controller
                  for (var i = 0; i < 15; i++)
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 8, right: 8, top: 5, bottom: 1),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 70,
                        decoration: const BoxDecoration(
                            borderRadius:
                            BorderRadius.all(Radius.circular(20))),
                        child: TextFormField(
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          controller: _textControllers[i],
                          keyboardType: TextInputType.name,
                          maxLength: analysisWordLength,
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  width: 3, style: BorderStyle.solid),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(
                                width: 1,
                                style: BorderStyle.solid,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            hintText: 'Enter text',
                          ),
                        ),
                      ),
                    ),
                ],
              ),
              // button that says analyze
              ElevatedButton(
                onPressed: () {
                  // loop through the controllers and add the text to a list
                  final List<String> texts = [];
                  for (var i = 0; i < 15; i++) {
                    texts.add(_textControllers[i].text);
                  }
                  List<Map<String, dynamic>> matchingWordPairs = locateMatchingWordPairs(texts);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => AnalysisResultsScreen( matchingWordPairs: matchingWordPairs,)),
                  );
                },
                child: const Text('Analyze'),
              ),
            ],
          ),
        ));
  }
}
