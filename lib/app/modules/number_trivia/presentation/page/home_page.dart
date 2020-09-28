import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_offline/flutter_offline.dart';
import 'package:flutterapphelloback/app/core/widget/off_line_builder_widget.dart';

import '../../presentation/mobx/number_trivia_controller.dart';

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
      body: OffLineBuilderWidget(
        child: Observer(
          builder: (context) {
            if (!controller.isLoaded) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else {
              return Center(
                child: Text('${controller.numberTrivia.text}'),
              );
            }
          },
        ),
      ),
    );
  }
}

