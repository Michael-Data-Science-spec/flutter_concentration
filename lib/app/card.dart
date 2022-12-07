import 'package:flutter/material.dart';

class AutoCardIndex {
  int index = 0;
  static final AutoCardIndex _singleton = AutoCardIndex._internal();

  factory AutoCardIndex() {
    return _singleton;
  }

  int assignCardIndex() {
    index += 1;
    return index;
  }

  AutoCardIndex._internal();
}

class ConcentrationCard {
  bool isFlipped = false;
  bool isMatched = false;
  final int index = AutoCardIndex().assignCardIndex();
  bool hasEqual = false;
  final AssetImage content;

  ConcentrationCard(this.content);

  void flipCard() {
    if (!isMatched) {
      isFlipped = !isFlipped;
    }
  }

  void matchCard() {
    isMatched = true;
  }

  void setEqual() {
    hasEqual = true;
  }

  @override
  bool operator ==(Object other) {
    return other is ConcentrationCard && other.content == content;
  }
}
