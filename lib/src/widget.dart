import 'package:faq/src/model.dart';
import 'package:flutter/material.dart';

class FAQWidget extends StatelessWidget {
  final FAQContent faqContent;
  final TextStyle titleTextStyle;
  final TextStyle questionTitleTextStyle;

  /// This function fires when a question was opened or closed.
  /// The first parameter is the id of a question, the second
  /// if it was opened or closed
  final Function(String, bool) onQuestionClicked;

  const FAQWidget(
      {Key key,
        this.faqContent,
        this.titleTextStyle,
        this.questionTitleTextStyle,
        this.onQuestionClicked})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          title: Text(
            faqContent.title,
            style: titleTextStyle ?? Theme.of(context).textTheme.headline4,
          ),
        ),
        ...faqContent.questions.map(
              (e) => ExpansionTile(
              title: Text(
                e.title,
                style: questionTitleTextStyle ??
                    Theme.of(context).textTheme.headline5,
              ),
              onExpansionChanged: (value) {
                if (onQuestionClicked != null) onQuestionClicked(e.id, value);
              },
              children: <Widget>[
                ListTile(
                  title: Text(
                    e.content,
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                )
              ]),
        ),
      ],
    );
  }
}
