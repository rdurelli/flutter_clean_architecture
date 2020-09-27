import 'package:meta/meta.dart';

import '../../domain/entities/number_trivia.dart';

class NumberTrivialModel {
  String text;
  int number;

  NumberTrivialModel(@required this.text, @required this.number);

  NumberTrivialModel.fromJson(Map<String, dynamic> json) {
    text = json['text'];
    number = json['number'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['text'] = this.text;
    data['number'] = this.number;
    return data;
  }

  NumberTrivia toEntity() => NumberTrivia(text: this.text, number: this.number);
}
