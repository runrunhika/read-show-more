import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isReadMore = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Read More'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Text(
            'Awesome Article',
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 16,
          ),
          buildText('''RESOURCES
Send Email In Background Tutorial: https://www.youtube.com/watch?v=RDwst
Bottom Navigation Bar Tutorial: https://www.youtube.com/watch?v=xoKqQ
Page Transition Animation Tutorial: https://www.youtube.com/watch?v=_R3E_
Persistent Bottom Sheet Tutorial: https://www.youtube.com/watch?v=o01hE
Modal Bottom Sheet Tutorial: https://www.youtube.com/watch?v=AjAQg
Animated List Tutorial: https://www.youtube.com/watch?v=E3SQO
Settings Page Tutorial: https://www.youtube.com/watch?v=pYQAh
Fix Bottom Overflowed By Pixels Tutorial: https://www.youtube.com/watch?v=voARo
Navigation Drawer Tutorial: https://www.youtube.com/watch?v=ts9n2
User Profile Page UI Tutorial: https://www.youtube.com/watch?v=gSl-M
Quiz App UI Tutorial: https://www.youtube.com/watch?v=gSvd-
Hide Bottom On Scroll Tutorial: https://www.youtube.com/watch?v=pr_Go
Animated Bottom Navigation Bar Tutorial: https://www.youtube.com/watch?v=95PED
AppBar & Transparent AppBar Tutorial: https://www.youtube.com/watch?v=BAshF
Sliver App Bar Tutorial: https://www.youtube.com/watch?v=s_3ak
Sticky Headers In ListView Tutorial: https://www.youtube.com/watch?v=QVxd0
Scaffold Widget Tutorial: https://www.youtube.com/watch?v=fcakQ'''),
          SizedBox(
            height: 24,
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: buildButton(),
          )
        ],
      ),
    );
  }

  Widget buildButton() => ElevatedButton(
      style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 16),
          textStyle: TextStyle(fontSize: 20)),
      onPressed: () => setState(() => isReadMore = !isReadMore),
      child: Text(isReadMore ? 'Read Less' : 'Read More'));

  Widget buildText(String text) {
    final maxLines = isReadMore ? null : 5;
    final overflow = isReadMore ? TextOverflow.visible : TextOverflow.ellipsis;

    // maxLines: maxLines,
    // overflow: overflow,

    final styleButton = TextStyle(
        fontSize: 20, color: Colors.pink, fontWeight: FontWeight.bold);

    return ReadMoreText(
      
      text,
      trimLines: 3,
      trimMode: TrimMode.Line,
      trimCollapsedText: 'Read More',
      trimExpandedText: 'Read Less',
      style: TextStyle(fontSize: 20),
      lessStyle: styleButton,
      moreStyle: styleButton,
    );
  }
}
