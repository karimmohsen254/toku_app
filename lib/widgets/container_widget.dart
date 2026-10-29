import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  final String text;
  final Color colorr;
  final Widget screenName;
  const new({
    super.key,
    required this.colorr,
    required this.text,
    required this.screenName,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return screenName;
            },
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Card(
          color: colorr,
          elevation: 3,
          child: ListTile(
            title: Text(
              text,
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}
