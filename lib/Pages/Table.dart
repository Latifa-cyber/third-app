import 'package:flutter/material.dart';
import 'dart:math';

import 'Result.dart';

class TablePage extends StatefulWidget {
  const TablePage({Key? key}) : super(key: key);

  @override
  State<TablePage> createState() => _TablePageState();
}

class _TablePageState extends State<TablePage> {
  var somme = '';
  final keys = GlobalKey<FormState>();
  TextEditingController v1 = TextEditingController();
  TextEditingController v2 = TextEditingController();
  TextEditingController v3 = TextEditingController();
  TextEditingController v4 = TextEditingController();
  TextEditingController v5 = TextEditingController();
  TextEditingController v6 = TextEditingController();
  TextEditingController v7 = TextEditingController();
  TextEditingController v8 = TextEditingController();
  TextEditingController v9 = TextEditingController();
  TextEditingController v10 = TextEditingController();
  TextEditingController v11 = TextEditingController();
  TextEditingController v12 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color(0xDDA663CC),
          toolbarHeight: 71,
          title: Text(
            'Form',
            style: TextStyle(
                color: Colors.white,
                fontSize: 38,
                fontFamily: 'MontaguSlab',
                fontWeight: FontWeight.w200),
          ),
        ),
        body: SafeArea(
          child: Form(
              key: keys,
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: 1,
                  itemBuilder: (BuildContext context, int l) {
                    return Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 5),
                          child: Text(
                            'Fill in the following marks:',
                            style: TextStyle(
                                color: Color(0xFF6F2DBD),
                                fontFamily: 'MontaguSlab',
                                fontSize: 18),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(15),
                          child: Table(
                            defaultVerticalAlignment:
                                TableCellVerticalAlignment.middle,
                            columnWidths: {
                              0: FlexColumnWidth(7.2),
                              1: FlexColumnWidth(1.4),
                              2: FlexColumnWidth(1.4),
                            },
                            border: TableBorder.all(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xFF120D3A),
                              width: 2.0,
                            ),
                            children: [
                              TableRow(children: [
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text('Mémoire organization'),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  child: Text('0.5'),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  child: TextFormField(
                                    controller: v1,
                                    onSaved: (value) {
                                      v1.text = value!;
                                    },
                                    validator: (controller) {
                                      if (controller!.isEmpty) {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(SnackBar(
                                                content:
                                                    Text('unvalid input!')));
                                        return '';
                                      }
                                      if (double.parse(controller) > 0.5) {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(SnackBar(
                                                content: Text(
                                                    'unvalid input! note greater than the the full mark')));
                                        return '';
                                      }
                                      if (double.parse(controller) < 0) {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(SnackBar(
                                                content: Text(
                                                    'unvalid input! negative numbers are not allowed')));
                                        return '';
                                      } else {
                                        return null;
                                      }
                                    },
                                    textAlign: TextAlign.center,
                                    decoration: InputDecoration(
                                        border: InputBorder.none),
                                    maxLines: 1,
                                  ),
                                ),
                              ]),
                              TableRow(children: [
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text('Editorial quality'),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  child: Text('1'),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  child: TextFormField(
                                    controller: v2,
                                    onSaved: (value) {
                                      v2.text = value!;
                                    },
                                    validator: (controller) {
                                      if (controller!.isEmpty) {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(SnackBar(
                                                content:
                                                    Text('unvalid input!')));
                                        return '';
                                      }
                                      if (double.parse(controller) > 1) {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(SnackBar(
                                                content: Text(
                                                    'unvalid input! note greater than the the full mark')));
                                        return '';
                                      }
                                      if (double.parse(controller) < 0) {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(SnackBar(
                                                content: Text(
                                                    'unvalid input! negative numbers are not allowed')));
                                        return '';
                                      } else {
                                        return null;
                                      }
                                    },
                                    textAlign: TextAlign.center,
                                    decoration: InputDecoration(
                                        border: InputBorder.none),
                                    maxLines: 1,
                                  ),
                                ),
                              ]),
                              TableRow(children: [
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text('Bibliography quality'),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  child: Text('0.5'),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  child: TextFormField(
                                    controller: v3,
                                    onSaved: (value) {
                                      v3.text = value!;
                                    },
                                    validator: (controller) {
                                      if (controller!.isEmpty) {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(SnackBar(
                                                content:
                                                    Text('unvalid input!')));
                                        return '';
                                      }
                                      if (double.parse(controller) > 0.5) {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(SnackBar(
                                                content: Text(
                                                    'unvalid input! note greater than the the full mark')));
                                        return '';
                                      }
                                      if (double.parse(controller) < 0) {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(SnackBar(
                                                content: Text(
                                                    'unvalid input! negative numbers are not allowed')));
                                        return '';
                                      } else {
                                        return null;
                                      }
                                    },
                                    textAlign: TextAlign.center,
                                    decoration: InputDecoration(
                                        border: InputBorder.none),
                                    maxLines: 1,
                                  ),
                                ),
                              ]),
                              TableRow(children: [
                                Container(
                                  margin: EdgeInsets.only(left: 10),
                                  child: Text(
                                      'Scientific content: clarity of problematic, work methodology, conclusion,....'),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  child: Text('1'),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  child: TextFormField(
                                    controller: v4,
                                    onSaved: (value) {
                                      v4.text = value!;
                                    },
                                    validator: (controller) {
                                      if (controller!.isEmpty) {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(SnackBar(
                                                content:
                                                    Text('unvalid input!')));
                                        return '';
                                      }
                                      if (double.parse(controller) > 1) {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(SnackBar(
                                                content: Text(
                                                    'unvalid input! note greater than the the full mark')));
                                        return '';
                                      }
                                      if (double.parse(controller) < 0) {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(SnackBar(
                                                content: Text(
                                                    'unvalid input! negative numbers are not allowed')));
                                        return '';
                                      } else {
                                        return null;
                                      }
                                    },
                                    textDirection: TextDirection.ltr,
                                    textAlign: TextAlign.center,
                                    decoration: InputDecoration(
                                        border: InputBorder.none),
                                    maxLines: 1,
                                  ),
                                ),
                              ]),
                              TableRow(children: [
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child:
                                      Text('Ergonomics / clarity of analysis'),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  child: Text('1'),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  child: TextFormField(
                                    controller: v5,
                                    onSaved: (value) {
                                      v5.text = value!;
                                    },
                                    validator: (controller) {
                                      if (controller!.isEmpty) {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(SnackBar(
                                                content:
                                                    Text('unvalid input!')));
                                        return '';
                                      }
                                      if (double.parse(controller) > 1) {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(SnackBar(
                                                content: Text(
                                                    'unvalid input! note greater than the the full mark')));
                                        return '';
                                      }
                                      if (double.parse(controller) < 0) {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(SnackBar(
                                                content: Text(
                                                    'unvalid input! negative numbers are not allowed')));
                                        return '';
                                      } else {
                                        return null;
                                      }
                                    },
                                    textAlign: TextAlign.center,
                                    decoration: InputDecoration(
                                        border: InputBorder.none),
                                    maxLines: 1,
                                  ),
                                ),
                              ]),
                              TableRow(children: [
                                Container(
                                  margin: EdgeInsets.only(left: 10),
                                  child: Text(
                                      'Development effort / Analysis: originality'),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  child: Text('1'),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  child: TextFormField(
                                    controller: v6,
                                    onSaved: (value) {
                                      v6.text = value!;
                                    },
                                    validator: (controller) {
                                      if (controller!.isEmpty) {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(SnackBar(
                                                content:
                                                    Text('unvalid input!')));
                                        return '';
                                      }
                                      if (double.parse(controller) > 1) {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(SnackBar(
                                                content: Text(
                                                    'unvalid input! note greater than the the full mark')));
                                        return '';
                                      }
                                      if (double.parse(controller) < 0) {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(SnackBar(
                                                content: Text(
                                                    'unvalid input! negative numbers are not allowed')));
                                        return '';
                                      } else {
                                        return null;
                                      }
                                    },
                                    textAlign: TextAlign.center,
                                    decoration: InputDecoration(
                                        border: InputBorder.none),
                                    maxLines: 1,
                                  ),
                                ),
                              ]),
                              TableRow(children: [
                                Container(
                                  margin: EdgeInsets.only(left: 10),
                                  child: Text('Quality of results'),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  child: Text('1'),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  child: TextFormField(
                                    controller: v7,
                                    onSaved: (value) {
                                      v7.text = value!;
                                    },
                                    validator: (controller) {
                                      if (controller!.isEmpty) {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(SnackBar(
                                                content:
                                                    Text('unvalid input!')));
                                        return '';
                                      }
                                      if (double.parse(controller) > 1) {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(SnackBar(
                                                content: Text(
                                                    'unvalid input! note greater than the the full mark')));
                                        return '';
                                      }
                                      if (double.parse(controller) < 0) {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(SnackBar(
                                                content: Text(
                                                    'unvalid input! negative numbers are not allowed')));
                                        return '';
                                      } else {
                                        return null;
                                      }
                                    },
                                    textAlign: TextAlign.center,
                                    decoration: InputDecoration(
                                        border: InputBorder.none),
                                    maxLines: 1,
                                  ),
                                ),
                              ]),
                              TableRow(children: [
                                Container(
                                  margin: EdgeInsets.only(left: 10),
                                  child: Text('Mastery of tools'),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  child: Text('1'),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  child: TextFormField(
                                    controller: v8,
                                    onSaved: (value) {
                                      v8.text = value!;
                                    },
                                    validator: (controller) {
                                      if (controller!.isEmpty) {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(SnackBar(
                                                content:
                                                    Text('unvalid input!')));
                                        return '';
                                      }
                                      if (double.parse(controller) > 1) {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(SnackBar(
                                                content: Text(
                                                    'unvalid input! note greater than the the full mark')));
                                        return '';
                                      }
                                      if (double.parse(controller) < 0) {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(SnackBar(
                                                content: Text(
                                                    'unvalid input! negative numbers are not allowed')));
                                        return '';
                                      } else {
                                        return null;
                                      }
                                    },
                                    textAlign: TextAlign.center,
                                    decoration: InputDecoration(
                                        border: InputBorder.none),
                                    maxLines: 1,
                                  ),
                                ),
                              ]),
                              TableRow(children: [
                                Container(
                                  margin: EdgeInsets.only(left: 10),
                                  child: Text('Presentation quality'),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  child: Text('1'),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  child: TextFormField(
                                    controller: v9,
                                    onSaved: (value) {
                                      v9.text = value!;
                                    },
                                    validator: (controller) {
                                      if (controller!.isEmpty) {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(SnackBar(
                                                content:
                                                    Text('unvalid input!')));
                                        return '';
                                      }
                                      if (double.parse(controller) > 1) {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(SnackBar(
                                                content: Text(
                                                    'unvalid input! note greater than the the full mark')));
                                        return '';
                                      }
                                      if (double.parse(controller) < 0) {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(SnackBar(
                                                content: Text(
                                                    'unvalid input! negative numbers are not allowed')));
                                        return '';
                                      } else {
                                        return null;
                                      }
                                    },
                                    textAlign: TextAlign.center,
                                    decoration: InputDecoration(
                                        border: InputBorder.none),
                                    maxLines: 1,
                                  ),
                                ),
                              ]),
                              TableRow(children: [
                                Container(
                                  margin: EdgeInsets.only(left: 10),
                                  child: Text('Fluent oral expression'),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  child: Text('1'),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  child: TextFormField(
                                    controller: v10,
                                    onSaved: (value) {
                                      v10.text = value!;
                                    },
                                    validator: (controller) {
                                      if (controller!.isEmpty) {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(SnackBar(
                                                content:
                                                    Text('unvalid input!')));
                                        return '';
                                      }
                                      if (double.parse(controller) > 1) {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(SnackBar(
                                                content: Text(
                                                    'unvalid input! note greater than the the full mark')));
                                        return '';
                                      }
                                      if (double.parse(controller) < 0) {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(SnackBar(
                                                content: Text(
                                                    'unvalid input! negative numbers are not allowed')));
                                        return '';
                                      } else {
                                        return null;
                                      }
                                    },
                                    textAlign: TextAlign.center,
                                    decoration: InputDecoration(
                                        border: InputBorder.none),
                                    maxLines: 1,
                                  ),
                                ),
                              ]),
                              TableRow(children: [
                                Container(
                                  margin: EdgeInsets.only(left: 10),
                                  child: Text('Well-posed problematic'),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  child: Text('1'),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  child: TextFormField(
                                    controller: v11,
                                    onSaved: (value) {
                                      v11.text = value!;
                                    },
                                    validator: (controller) {
                                      if (controller!.isEmpty) {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(SnackBar(
                                                content:
                                                    Text('unvalid input!')));
                                        return '';
                                      }
                                      if (double.parse(controller) > 1) {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(SnackBar(
                                                content: Text(
                                                    'unvalid input! note greater than the the full mark')));
                                        return '';
                                      }
                                      if (double.parse(controller) < 0) {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(SnackBar(
                                                content: Text(
                                                    'unvalid input! negative numbers are not allowed')));
                                        return '';
                                      } else {
                                        return null;
                                      }
                                    },
                                    textAlign: TextAlign.center,
                                    decoration: InputDecoration(
                                        border: InputBorder.none),
                                    maxLines: 1,
                                  ),
                                ),
                              ]),
                              TableRow(children: [
                                Container(
                                  margin: EdgeInsets.only(left: 10),
                                  child: Text(
                                      'Relevance and quality of responses on the scientific plan'),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  child: Text('2'),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  child: TextFormField(
                                    controller: v12,
                                    onSaved: (value) {
                                      v12.text = value!;
                                    },
                                    validator: (controller) {
                                      if (controller!.isEmpty) {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(SnackBar(
                                                content:
                                                    Text('unvalid input!')));
                                        return '';
                                      }
                                      if (double.parse(controller) > 2) {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(SnackBar(
                                                content: Text(
                                                    'unvalid input! note greater than the the full mark')));
                                        return '';
                                      }
                                      if (double.parse(controller) < 0) {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(SnackBar(
                                                content: Text(
                                                    'unvalid input! negative numbers are not allowed')));
                                        return '';
                                      } else {
                                        return null;
                                      }
                                    },
                                    textAlign: TextAlign.center,
                                    decoration: InputDecoration(
                                        border: InputBorder.none),
                                    maxLines: 1,
                                  ),
                                ),
                              ]),
                            ],
                          ),
                        ),
                        Stack(
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 30),
                              alignment: Alignment.centerRight,
                              child: ElevatedButton(
                                  onPressed: () {
                                    if (keys.currentState!.validate()) {
                                      keys.currentState!.save();
                                      somme = (((double.parse(v1.text) +
                                                      double.parse(v2.text) +
                                                      double.parse(v3.text) +
                                                      double.parse(v4.text) +
                                                      double.parse(v5.text) +
                                                      double.parse(v6.text) +
                                                      double.parse(v7.text) +
                                                      double.parse(v8.text) +
                                                      double.parse(v9.text) +
                                                      double.parse(v10.text) +
                                                      double.parse(v11.text) +
                                                      double.parse(v12.text)) *
                                                  20) /
                                              12)
                                          .toStringAsFixed(2);
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  ResultPage(somme)));
                                    }
                                  },
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Color(0xFFA663CC),
                                      padding: EdgeInsets.only(
                                          left: 20,
                                          right: 20,
                                          top: 10,
                                          bottom: 10),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      side:
                                          BorderSide(color: Color(0xFF6F2DBD))),
                                  child: Container(
                                    alignment: Alignment.center,
                                    height: 35,
                                    width: 150,
                                    child: Text(
                                      'Calculate',
                                      style: TextStyle(
                                          fontFamily: 'MontaguSlab',
                                          fontSize: 21,
                                          color: Colors.white),
                                    ),
                                  )),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 30),
                              alignment: Alignment.centerLeft,
                              child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.white,
                                      padding: EdgeInsets.only(
                                          left: 5,
                                          right: 5,
                                          top: 10,
                                          bottom: 10),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      side:
                                          BorderSide(color: Color(0xFF6F2DBD))),
                                  child: Container(
                                    alignment: Alignment.center,
                                    height: 35,
                                    width: 80,
                                    child: Text(
                                      'Reset',
                                      style: TextStyle(
                                          fontFamily: 'MontaguSlab',
                                          fontSize: 21,
                                          color: Color(0xFF6F2DBD)),
                                    ),
                                  )),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        )
                      ],
                    );
                  })),
        ));
  }
}
