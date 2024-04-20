// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class AnalysisResultsScreen extends StatelessWidget {
  List<Map<String, dynamic>> matchingWordPairs;
  AnalysisResultsScreen({Key? key, required this.matchingWordPairs})
      :super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Analyzed Text'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            for (var i = 0; i < matchingWordPairs.length; i++)
              Padding(
                padding:
                const EdgeInsets.only(left: 8, right: 8, top: 5, bottom: 1),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 70,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Table(
                    border: TableBorder.all(),
                    children: [
                      TableRow(
                        children: [
                          TableCell(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(matchingWordPairs[i]['words'][0]),
                            ),
                          ),
                          TableCell(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(matchingWordPairs[i]['words'][1]),
                            ),
                          ),
                          TableCell(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(matchingWordPairs[i]['matchingLetters'].toString()),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
