import 'package:flutter/material.dart';
import '/models/card.dart';
import '/models/favorite.dart';
import 'package:provider/provider.dart';
import 'reusable_card.dart';
import 'package:flip_card/flip_card.dart';
import 'data_n2.dart';

class questItem extends StatefulWidget {
  final int currInt;
  final Flash_Card quizId;
  questItem({required this.currInt, required this.quizId});

  @override
  State<questItem> createState() => _questItemState();
}

class _questItemState extends State<questItem> {
  @override
  Widget build(BuildContext context) {
    final favoritesList = context.watch<Favorites>();

    return SizedBox(
      width: double.infinity,
      height: 500,
      child: FlipCard(
        direction: FlipDirection.VERTICAL,
        front: ReusableCard(
          text: Container(
            child: Text(
              userFlashCard[widget.currInt].front,
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
          ),
          likeText: IconButton(
              onPressed: () {
                setState(() {
                  !favoritesList.items.contains(widget.quizId)
                      ? favoritesList.add(widget.quizId)
                      : favoritesList.remove(widget.quizId);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(favoritesList.items.contains(widget.quizId)
                          ? 'Added to favorites.'
                          : 'Removed from favorites.'),
                      duration: const Duration(seconds: 1),
                    ),
                  );
                });
              },
              icon: favoritesList.items.contains(widget.quizId)
                  ? Icon(Icons.favorite)
                  : Icon(Icons.favorite_border)),
          knowText: OutlinedButton(
            child:
                Container(child: Text(userFlashCard[widget.currInt].knowledge)),
            onPressed: () {
              setState(() {
                userFlashCard[widget.currInt].knowledge == 'Chua hoc'
                    ? userFlashCard[widget.currInt].knowledge = 'Da hoc'
                    : userFlashCard[widget.currInt].knowledge = 'Chua hoc';
              });
            },
          ),
        ),
        back: ReusableCard(
          text: Container(
            height: 450,
            child: ListView(
              children: [
                Container(
                  height: 350,
                  alignment: Alignment.center,
                  child: Text(
                    userFlashCard[widget.currInt].meaning +
                        '\n' +
                        '\n' +
                        userFlashCard[widget.currInt].hanChineseReading,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                ),
              ],
            ),
          ),
          likeText: IconButton(
              onPressed: () {
                setState(() {
                  !favoritesList.items.contains(widget.quizId)
                      ? favoritesList.add(widget.quizId)
                      : favoritesList.remove(widget.quizId);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(favoritesList.items.contains(widget.quizId)
                          ? 'Added to favorites.'
                          : 'Removed from favorites.'),
                      duration: const Duration(seconds: 1),
                    ),
                  );
                });
              },
              icon: favoritesList.items.contains(widget.quizId)
                  ? Icon(Icons.favorite)
                  : Icon(Icons.favorite_border)),
          knowText: OutlinedButton(
              child: Text(userFlashCard[widget.currInt].knowledge),
              onPressed: () {
                setState(() {
                  userFlashCard[widget.currInt].knowledge == 'Chua hoc'
                      ? userFlashCard[widget.currInt].knowledge = 'Da hoc'
                      : userFlashCard[widget.currInt].knowledge = 'Chua hoc';
                });
              }),
        ),
      ),
    );
  }
}
