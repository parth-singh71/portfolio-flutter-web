import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/widgets/basic_webpage.dart';

class ContactPage extends StatefulWidget {
  ContactPage({Key key}) : super(key: key);

  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    return BasicWebpage(
      webpage: Webpage.contact,
      body: body(),
    );
  }

  Widget body() {
    return Container(
      margin: EdgeInsets.all(50.0),
      child: Text(
        "Contact Page",
        style: TextStyle(fontSize: 50.0),
      ),
    );
  }
}
