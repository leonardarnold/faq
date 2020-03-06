import 'package:faq/faq.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FAQWidget(
          onQuestionClicked: (id, opened) => print("Flutter question clicked!id: $id, opened: $opened"),
          faqContent: FAQContent(title: "FAQ", questions: [
            FAQQuestion(
                id: "1-version1",
                title: "What is Flutter?",
                content:
                    """Flutter is Google’s portable UI toolkit for crafting 
beautiful, natively compiled applications for mobile, web, and desktop from a 
single codebase. Flutter works with existing code, is used by developers and 
organizations around the world, and is free and open source."""),
            FAQQuestion(
                id: "2-version1",
                title: "What does Flutter do?",
                content:
                    """For users, Flutter makes beautiful app UIs come to life.

For developers, Flutter lowers the bar to entry for building mobile apps. It speeds up development of mobile apps and reduces the cost and complexity of app production across platforms.

For designers, Flutter helps deliver the original design vision, without loss of fidelity or compromises. It also acts as a productive prototyping tool.

"""),
            FAQQuestion(
                id: "3-version0",
                title: "Who is Flutter for?",
                content:
                    """Flutter is for developers that want a faster way to build beautiful mobile apps, or a way to reach more users with a single investment.

Flutter is also for engineering managers that need to lead mobile development teams. Flutter allows eng managers to create a single mobile app dev team, unifying their development investments to ship more features faster, ship the same feature set to iOS and Android at the same time, and lower maintenance costs.

While not the initial target audience, Flutter is also for designers that want their original design visions delivered consistently, with high fidelity, to all users on mobile.

Fundamentally, Flutter is for users that want beautiful apps, with delightful motion and animation, and UIs with character and an identity all their own."""),
          ]),
        ),
      ),
    );
  }
}
