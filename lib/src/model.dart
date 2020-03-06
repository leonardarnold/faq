import 'package:flutter/material.dart';
class FAQContent {
  /// main title
  final String title;

  /// list of questions + answers
  final List<FAQQuestion> questions;

  FAQContent({@required this.title, this.questions});
}

class FAQQuestion {
  /// title of the question
  final String title;

  /// answer to the question
  final String content;

  /// optional id for optional event handling
  final String id;

  FAQQuestion({@required this.title, this.content, this.id});
}