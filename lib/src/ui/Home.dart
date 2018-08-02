import 'package:customwidget/src/components/input_number.dart';
import 'package:flutter/material.dart';

class CustomeHomePage extends StatefulWidget {
  CustomeHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _CustomeHomePageState createState() => new _CustomeHomePageState();
}

class _CustomeHomePageState extends State<CustomeHomePage> {
  final _testInputNumberController = new TextEditingController();
  final _testInputNumber2Controller = new TextEditingController();
  String _printText;
  String _printText2 ;

  @override
  void initState() {
    super.initState();
    _printText = '';
    _printText2 = '';
    _testInputNumberController.addListener(onChanged);
    _testInputNumber2Controller.addListener(onChanged);
  }

  void onChanged() {
    setState(() {
      _printText = _testInputNumberController.text;
      _printText2 = _testInputNumber2Controller.text;
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _testInputNumberController.removeListener(onChanged);
    _testInputNumberController.dispose();

    _testInputNumber2Controller.removeListener(onChanged);
    _testInputNumber2Controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              new InputNumber(
                controller: _testInputNumberController,
                hintText: 'Test 1',
                icon: Icons.format_list_numbered,
              ),
              SizedBox(
                height: 32.0,
              ),
              Text('$_printText'),
              SizedBox(
                height: 32.0,
              ),
              new InputNumber(
                controller: _testInputNumber2Controller,
                hintText: 'Test 2',
                icon: Icons.confirmation_number,
              ), SizedBox(
                height: 32.0,
              ),
              Text('$_printText2'),
             
            ],
          ),
        ],
      ),
    );
  }
}
