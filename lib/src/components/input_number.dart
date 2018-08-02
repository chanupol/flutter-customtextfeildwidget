import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputNumber extends StatelessWidget {
  const InputNumber(
      {Key key,
      @required this.controller,
      @required this.hintText,
      @required this.icon})
      : super(key: key);

  final TextEditingController controller;
  final String hintText;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.only(top: 10.0, left: 32.0, right: 32.0),
      child: TextField(
        controller: controller,
        keyboardType: TextInputType.numberWithOptions(),
        // เพื่อที่จะทำให้ keyboard ไม่สามารถกดอะไรได้หรือกดอะไรไม่ได้
        // โดยการใช้ BlacklistingTextInputFormatter
        // โดยส่ง pattern เช้าไปเป็น Regex
        inputFormatters: [
          new BlacklistingTextInputFormatter(
              new RegExp('[\\*|\\+|\\,|\\-|\\s]'),
              replacementString: '')
        ],
        decoration: InputDecoration(icon: Icon(icon), hintText: hintText),
      ),
    );
  }
}
