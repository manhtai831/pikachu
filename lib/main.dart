import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

List<Card> cards = [];
List<Card> cards2 = [];

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    cards.add(Card(
        id: 1,
        done: false,
        name: 'Ảnh số 1',
        color: Colors.red,
        enable: false,
        cardController: AnimationController(
          duration: const Duration(milliseconds: 200),
          vsync: this,
        )));
    cards.add(Card(
        id: 1,
        done: false,
        name: 'Ảnh số 1',
        color: Colors.red,
        enable: false,
        cardController: AnimationController(
          duration: const Duration(milliseconds: 200),
          vsync: this,
        )));
    cards.add(Card(
        id: 2,
        done: false,
        name: 'Ảnh số 2',
        color: Colors.red,
        enable: false,
        cardController: AnimationController(
          duration: const Duration(milliseconds: 200),
          vsync: this,
        )));
    cards.add(Card(
        id: 2,
        done: false,
        name: 'Ảnh số 2',
        color: Colors.red,
        enable: false,
        cardController: AnimationController(
          duration: const Duration(milliseconds: 200),
          vsync: this,
        )));
    cards.add(Card(
        id: 3,
        done: false,
        name: 'Ảnh số 3',
        color: Colors.red,
        enable: false,
        cardController: AnimationController(
          duration: const Duration(milliseconds: 200),
          vsync: this,
        )));
    cards.add(Card(
        id: 3,
        done: false,
        name: 'Ảnh số 3',
        color: Colors.red,
        enable: false,
        cardController: AnimationController(
          duration: const Duration(milliseconds: 200),
          vsync: this,
        )));
    cards.add(Card(
        id: 4,
        done: false,
        name: 'Ảnh số 4',
        color: Colors.red,
        enable: false,
        cardController: AnimationController(
          duration: const Duration(milliseconds: 200),
          vsync: this,
        )));
    cards.add(Card(
        id: 4,
        done: false,
        name: 'Ảnh số 4',
        color: Colors.red,
        enable: false,
        cardController: AnimationController(
          duration: const Duration(milliseconds: 200),
          vsync: this,
        )));
    cards.add(Card(
        id: 5,
        done: false,
        name: 'Ảnh số 5',
        color: Colors.red,
        enable: false,
        cardController: AnimationController(
          duration: const Duration(milliseconds: 200),
          vsync: this,
        )));
    cards.add(Card(
        id: 5,
        done: false,
        name: 'Ảnh số 5',
        color: Colors.red,
        enable: false,
        cardController: AnimationController(
          duration: const Duration(milliseconds: 200),
          vsync: this,
        )));
    cards.add(Card(
        id: 6,
        done: false,
        name: 'Ảnh số 6',
        color: Colors.red,
        enable: false,
        cardController: AnimationController(
          duration: const Duration(milliseconds: 200),
          vsync: this,
        )));
    cards.add(Card(
        id: 6,
        done: false,
        name: 'Ảnh số 6',
        color: Colors.red,
        enable: false,
        cardController: AnimationController(
          duration: const Duration(milliseconds: 200),
          vsync: this,
        )));
    cards.add(Card(
        id: 7,
        done: false,
        name: 'Ảnh số 7',
        color: Colors.red,
        enable: false,
        cardController: AnimationController(
          duration: const Duration(milliseconds: 200),
          vsync: this,
        )));
    cards.add(Card(
        id: 7,
        done: false,
        name: 'Ảnh số 7',
        color: Colors.red,
        enable: false,
        cardController: AnimationController(
          duration: const Duration(milliseconds: 200),
          vsync: this,
        )));
    var list = new List<int>.generate(cards.length, (int index) => index); // [0, 1, 4]
    list.shuffle();
    print(list);
    list.forEachIndexed((index, element) => cards2.add(cards[element]));
    // Random random = Random();
    // Set<int> set = Set();
    // while (cards2.length < cards.length) {
    //   set.add(random.nextInt(cards.length));
    // }
    // print(jsonEncode(set));
    // for (int i = 0; i < set.toList().length; i++) {
    //   cards2.add(cards[set.toList()[i]]);
    // }
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: MasonryGridView.count(
        crossAxisCount: 4,
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        itemBuilder: (context, index) {
          return FlipCard(
            card: cards2[index],
            callback: () {
              setState(() {});
            },
          );
        },
        itemCount: cards2.length,
      ),
    );
  }

  @override
  void dispose() {
    cards2.forEachIndexed((index, element) {
      element.cardController?.dispose();
    });
    super.dispose();
  }
}

class FlipCard extends StatefulWidget {
  Card? card;
  Function? callback;

  FlipCard({this.card, Key? key, this.callback}) : super(key: key);

  @override
  _FlipCardState createState() => _FlipCardState();
}

int countFlip = 0;

class _FlipCardState extends State<FlipCard> with TickerProviderStateMixin {
  Size? size;

  Color color = Colors.red;
  late Animation<double> tween;

  @override
  void initState() {
    super.initState();
    tween = Tween(begin: 0.0, end: 1.0).animate(widget.card!.cardController!)
      ..addListener(() {
        if (mounted) {
          setState(() {
            if (widget.card!.cardController!.value >= 0.5) {
              widget.card?.enable = true;
            } else {
              widget.card?.enable = false;
            }
          });
        }
      });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    size = MediaQuery.of(context).size;
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: widget.card!.cardController!,
      builder: (BuildContext context, Widget? child) {
        bool isFront = widget.card!.cardController!.value < .5;
        return InkWell(
          onTap: widget.card?.done == false ? () => pressCard() : null,
          child: Transform(
            transform: Matrix4.identity()
              ..setEntry(3, 2, 0.002)
              ..rotateY(3.14 * widget.card!.cardController!.value + (isFront ? 0 : 3.14)),
            alignment: FractionalOffset.center,
            child: widget.card?.done == true
                ? Container(
                    color: Colors.transparent,
                    width: size!.width / 3,
                    height: size!.width / 3,
                  )
                : isFront
                    ? Container(
                        color: Colors.red,
                        width: size!.width / 3,
                        height: size!.width / 3,
                        alignment: Alignment.center,
                        child: Visibility(
                          visible: widget.card?.enable == true,
                          child: Text(
                            widget.card?.name ?? '',
                            style: const TextStyle(color: Colors.white),
                          ),
                        ),
                      )
                    : Container(
                        color: Colors.black,
                        width: size!.width / 3,
                        height: size!.width / 3,
                        alignment: Alignment.center,
                        child: Visibility(
                          visible: widget.card?.enable == true,
                          child: Text(
                            widget.card?.name ?? '',
                            style: const TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
          ),
        );
      },
    );
  }

  void pressCard() async {
    if (countFlip == 2) return;
    if (widget.card!.cardController!.isCompleted) return;
    if (widget.card?.enable == false) {
      countFlip++;
      widget.card!.cardController!.forward();
    }
    await Future.delayed(const Duration(milliseconds: 200));
    if (countFlip >= 2) {
      // await Future.delayed(Duration(milliseconds: 300));

      List<Card> pickCards = cards.where((element) => element.enable == true).toList();
      if (pickCards.length >= 2) {
        if (pickCards[0].id == pickCards[1].id) {
          pickCards[0].color = Colors.transparent;
          pickCards[1].color = Colors.transparent;
          pickCards[0].enable = false;
          pickCards[1].enable = false;
          pickCards[0].done = true;
          pickCards[1].done = true;
          widget.callback?.call();
        } else {
          await Future.delayed(const Duration(milliseconds: 200));
          pickCards.forEach((element) {
            element.cardController!.reverse();
          });
          await Future.delayed(const Duration(milliseconds: 200));
        }
        countFlip = 0;
      }
    }
  }
}

class Card {
  String? name;
  int? id;
  Color? color;
  bool? enable;
  bool? done;
  AnimationController? cardController;

  Card({this.enable, this.name, this.done, this.id, this.cardController, this.color});
}
