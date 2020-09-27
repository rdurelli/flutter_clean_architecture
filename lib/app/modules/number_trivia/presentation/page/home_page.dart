import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutterapphelloback/app/modules/number_trivia/presentation/mobx/number_trivia_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home Durelli"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, NumberTriviaController> {
  //use 'controller' variable to access controller

  @override
  void initState() {
    super.initState();
    controller.getConcreteNumber(number: 42);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          Observer(builder: (context) {
            if (!controller.isLoaded) {
              return CircularProgressIndicator();
            }
            else {
              return Center(
                child: Column(
                  children: [
                    Text(controller.numberTrivia.number.toString()),
                    Text(controller.numberTrivia.text)
                  ],
                )
              );
            }
          },)
        ],
      ),
    );
  }
}
