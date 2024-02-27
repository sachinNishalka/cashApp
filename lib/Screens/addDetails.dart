import 'dart:ui';

import 'package:flutter/material.dart';
import "package:cashapp/components/BottomMainNavigationBar.dart";
import "package:cashapp/components/CustomizedAppBar.dart";
import 'package:cashapp/components/PrimaryTextComponent.dart';
import 'package:cashapp/components/PrimaryContainer.dart';
import 'package:cashapp/components/SecondaryContainer.dart';
import 'package:flutter/widgets.dart';

class AddDetailsScreen extends StatelessWidget {
  const AddDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomMainNavigationBar(),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(120.0),
        child: CustomizedAppBar(
          headingText: "Add Details",
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(
                top: 15.0, left: 25.0, right: 25.0, bottom: 25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                PrimaryTextComponent(textStatement: "This week"),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Color(0xFF007D0D), Color(0xFFAA7A00)],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                      borderRadius: BorderRadius.circular(25.0)),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            PrimaryTextComponent(
                              textStatement: "Budget",
                              fontFamily: "Poppins-bold",
                              fontColor: Colors.white,
                              fontSize: 40.0,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Expanded(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.baseline,
                                textBaseline: TextBaseline.alphabetic,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.white),
                                        shape: BoxShape.circle),
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: PrimaryTextComponent(
                                        textStatement: "+",
                                        fontSize: 24.0,
                                        fontWeight: FontWeight.w600,
                                        fontColor: Colors.white,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5.0,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.white),
                                        shape: BoxShape.circle),
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: PrimaryTextComponent(
                                        textStatement: "X",
                                        fontSize: 24.0,
                                        fontWeight: FontWeight.w600,
                                        fontColor: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.baseline,
                                textBaseline: TextBaseline.alphabetic,
                                children: [
                                  PrimaryTextComponent(
                                    textStatement: "Rs",
                                    fontColor: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 24.0,
                                  ),
                                  SizedBox(
                                    width: 5.0,
                                  ),
                                  PrimaryTextComponent(
                                    textStatement: "0",
                                    fontColor: Colors.white,
                                    fontSize: 40.0,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Center(
                  child: PrimaryTextComponent(
                    textStatement: "Set your budget for this week",
                    fontColor: Color(0xFF6A6A6A),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                PrimaryTextComponent(textStatement: "Today"),
                SizedBox(
                  height: 10.0,
                ),
                PrimaryContainer(
                  componentWidgets: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          PrimaryTextComponent(textStatement: "Income"),
                          PrimaryTextComponent(textStatement: "Monday"),
                        ],
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Expanded(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              textBaseline: TextBaseline.alphabetic,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Color(0xFF007D0D),
                                      ),
                                      shape: BoxShape.circle),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: PrimaryTextComponent(
                                      textStatement: "+",
                                      fontSize: 24.0,
                                      fontWeight: FontWeight.w600,
                                      fontColor: Color(0xFF007D0D),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 5.0,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      border:
                                          Border.all(color: Color(0xFF007D0D)),
                                      shape: BoxShape.circle),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: PrimaryTextComponent(
                                      textStatement: "X",
                                      fontSize: 24.0,
                                      fontWeight: FontWeight.w600,
                                      fontColor: Color(0xFF007D0D),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              textBaseline: TextBaseline.alphabetic,
                              children: [
                                PrimaryTextComponent(
                                  textStatement: "Rs",
                                  fontColor: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 24.0,
                                ),
                                SizedBox(
                                  width: 5.0,
                                ),
                                PrimaryTextComponent(
                                  textStatement: "0",
                                  fontColor: Colors.black,
                                  fontSize: 40.0,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                SecondaryContainer(
                  componentWidgets: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          PrimaryTextComponent(textStatement: "Expenses"),
                          PrimaryTextComponent(textStatement: "Monday"),
                        ],
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Expanded(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              textBaseline: TextBaseline.alphabetic,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Color(0xFFAA7A00),
                                      ),
                                      shape: BoxShape.circle),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: PrimaryTextComponent(
                                      textStatement: "+",
                                      fontSize: 24.0,
                                      fontWeight: FontWeight.w600,
                                      fontColor: Color(0xFFAA7A00),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 5.0,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Color(0xFFAA7A00),
                                      ),
                                      shape: BoxShape.circle),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: PrimaryTextComponent(
                                      textStatement: "X",
                                      fontSize: 24.0,
                                      fontWeight: FontWeight.w600,
                                      fontColor: Color(0xFFAA7A00),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              textBaseline: TextBaseline.alphabetic,
                              children: [
                                PrimaryTextComponent(
                                  textStatement: "Rs",
                                  fontColor: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 24.0,
                                ),
                                SizedBox(
                                  width: 5.0,
                                ),
                                PrimaryTextComponent(
                                  textStatement: "0",
                                  fontColor: Colors.black,
                                  fontSize: 40.0,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
