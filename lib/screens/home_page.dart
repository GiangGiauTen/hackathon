import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '/models/card.dart';
import '../flashcard/quest_item.dart';
import '/screens/favorite.dart';

import '../flashcard/all_constants.dart';
import '../flashcard/data_n2.dart';
import '../flashcard/reusable_card.dart';

class HomePage extends StatefulWidget {
  static const routeName = '/';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndexNumber = 0;
  double _initial = 1 / userFlashCard.length;

  @override
  Widget build(BuildContext context) {
    String value = (_initial * userFlashCard.length).toStringAsFixed(0);
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        title: Text("Flashcards App"),
        actions: [
          TextButton.icon(
            style: TextButton.styleFrom(foregroundColor: Colors.white),
            onPressed: () {
              Navigator.pushNamed(context, FavoritesPage.routeName);
            },
            icon: const Icon(Icons.favorite_border),
            label: const Text('Favorites'),
          ),
        ],
      ),
      // backgroundColor: mainColor,
      // toolbarHeight: 80,
      // elevation: 5,
      // shadowColor: mainColor,
      // shape: RoundedRectangleBorder(
      //     borderRadius: BorderRadius.circular(20))),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Column(
              children: [
                Text("Question $value of ${userFlashCard.length} Completed",
                    style: otherTextStyle),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: LinearProgressIndicator(
                    backgroundColor: Colors.white,
                    valueColor: AlwaysStoppedAnimation(Colors.pinkAccent),
                    minHeight: 5,
                    value: _initial,
                  ),
                ),
              ],
            ),
            questItem(
                currInt: _currentIndexNumber,
                quizId: userFlashCard[_currentIndexNumber]),
            Text("Tab to see Answer", style: otherTextStyle),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                ElevatedButton.icon(
                    onPressed: () {
                      showPreviousCard();
                      updateToPrev();
                    },
                    icon: Icon(FontAwesomeIcons.handPointLeft, size: 30),
                    label: Text(""),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: mainColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        padding: const EdgeInsets.only(
                            right: 20, left: 25, top: 15, bottom: 15))),
                ElevatedButton.icon(
                    onPressed: () {
                      showNextCard();
                      updateToNext();
                    },
                    icon: Icon(FontAwesomeIcons.handPointRight, size: 30),
                    label: Text(""),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: mainColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        padding: EdgeInsets.only(
                            right: 20, left: 25, top: 15, bottom: 15))),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void updateToNext() {
    setState(() {
      _initial = _initial + 1 / userFlashCard.length;
      if (_initial > 1.0) {
        _initial = 1 / userFlashCard.length;
      }
    });
  }

  void updateToPrev() {
    setState(() {
      _initial = _initial - 1 / userFlashCard.length;
      if (_initial < 1 / userFlashCard.length) {
        _initial = 1.0;
      }
    });
  }

  void showNextCard() {
    setState(() {
      _currentIndexNumber = (_currentIndexNumber + 1 < userFlashCard.length)
          ? _currentIndexNumber + 1
          : 0;
    });
  }

  void showPreviousCard() {
    setState(() {
      _currentIndexNumber = (_currentIndexNumber - 1 >= 0)
          ? _currentIndexNumber - 1
          : userFlashCard.length - 1;
    });
  }
}
