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
  bool _isFlipped = false;
  bool _isMatched = false;

  final int index;
  final AssetImage content;

  ConcentrationCard(this.content, this.index);

  void flipCard() {
    if (!_isMatched) {
      _isFlipped = !_isFlipped;
    }
  }

  void matchCard() {
    _isMatched = true;
  }

  @override
  bool operator ==(Object other) {
    return other is ConcentrationCard && other.content == content;
  }
}
