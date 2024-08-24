import 'package:flutter/material.dart';

class TextField_widget extends StatelessWidget {
  final String hintText;
  const TextField_widget({
    Key? key,
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(143, 148, 251, .2),
            blurRadius: 20,
            offset: Offset(0, 10),
          )
        ],
      ),
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
              color: Color(0xffF5F5F5),
            ))),
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: hintText,
                hintStyle: TextStyle(
                  color: Colors.grey[400],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
