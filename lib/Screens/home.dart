import "package:cashapp/components/BottomMainNavigationBar.dart";
import "package:cashapp/components/CustomizedAppBar.dart";
import "package:flutter/material.dart";
import 'package:cashapp/components/GetSectionData.dart';

import 'package:fl_chart/fl_chart.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomMainNavigationBar(),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(120),
        child: CustomizedAppBar(
          headingText: "Home",
        ),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            SafeArea(
              child: Padding(
                padding: EdgeInsets.only(right: 25.0, left: 25.0, bottom: 25.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 400,
                      child: Transform.scale(
                        scale: 1,
                        child: PieChart(
                          PieChartData(
                            sections: <PieChartSectionData>[
                              PieChartSectionData(
                                radius: 150,
                                showTitle: true,
                                title: "Income",
                                titleStyle: TextStyle(
                                    color: Colors.white, fontSize: 12),
                                value: 25,
                                gradient: RadialGradient(
                                  center: Alignment(1, 1),
                                  radius: 1.2,
                                  colors: <Color>[
                                    Color(0xFFB3A142),
                                    Color(0xFFA9A647),
                                    Color(0xFFA4AA4B),
                                    Color(0xFF9CAE4F),
                                    Color(0xFF99B861),
                                    Color(0xFF9BBB67), // blue sky
                                    Color(0xFFA9C681), // yellow sun
                                  ],
                                ),
                              ),
                              PieChartSectionData(
                                radius: 150,
                                showTitle: true,
                                title: "Debt",
                                titleStyle: TextStyle(
                                    color: Colors.white, fontSize: 12),
                                value: 25,
                                gradient: RadialGradient(
                                  center: Alignment(1, 1),
                                  radius: 1.2,
                                  colors: <Color>[
                                    Color(0xFFB3A142),
                                    Color(0xFFA9A647),
                                    Color(0xFFA4AA4B),
                                    Color(0xFF9CAE4F),
                                    Color(0xFF99B861),
                                    Color(0xFF9BBB67), // blue sky
                                    Color(0xFFA9C681), // yellow sun
                                  ],
                                ),
                              ),
                              PieChartSectionData(
                                radius: 150,

                                showTitle: true,
                                title: "Report",
                                titleStyle: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    textBaseline: TextBaseline.alphabetic),
                                value: 25,
                                gradient: RadialGradient(
                                  center: Alignment(-1, 1),
                                  radius: 1,
                                  colors: <Color>[
                                    Color(0xFFB3A142),
                                    Color(0xFFCCAD5E),
                                    Color(0xFFCCAD5E),
                                    Color(0xFFCCAD5E),
                                    Color(0xFFCCAD5E),
                                    Color(0xFFCCAD5E), // blue sky
                                    Color(0xFFCCAD5E), // yellow sun
                                  ],
                                ),
                                // color: Color(0xFFCCAD5E),
                              ),
                              PieChartSectionData(
                                radius: 150,
                                showTitle: true,
                                title: "Settings",
                                titleStyle: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    textBaseline: TextBaseline.alphabetic),
                                value: 25,
                                gradient: RadialGradient(
                                  center: Alignment(-1, 1),
                                  radius: 1.2,
                                  colors: <Color>[
                                    Color(0xFFB3A142),
                                    Color(0xFFA9A647),
                                    Color(0xFFA4AA4B),
                                    Color(0xFF9CAE4F),
                                    Color(0xFF99B861),
                                    Color(0xFF9BBB67), // blue sky
                                    Color(0xFFA9C681), // yellow sun
                                  ],
                                ),
                              ),
                              PieChartSectionData(
                                radius: 150,
                                showTitle: true,
                                title: "Credit",
                                titleStyle: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    textBaseline: TextBaseline.alphabetic),
                                value: 25,
                                gradient: RadialGradient(
                                  center: Alignment(-1, -1),
                                  radius: 1.2,
                                  colors: <Color>[
                                    Color(0xFFB3A142),
                                    Color(0xFFA9A647),
                                    Color(0xFFA4AA4B),
                                    Color(0xFF9CAE4F),
                                    Color(0xFF99B861),
                                    Color(0xFF9BBB67), // blue sky
                                    Color(0xFFA9C681), // yellow sun
                                  ],
                                ),
                              ),
                              PieChartSectionData(
                                radius: 150,
                                showTitle: true,
                                title: "Visualize",
                                titleStyle: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    textBaseline: TextBaseline.alphabetic),
                                value: 25,
                                gradient: RadialGradient(
                                  center: Alignment(-1, -1),
                                  radius: 1.2,
                                  colors: <Color>[
                                    Color(0xFFB3A142),
                                    Color(0xFFA9A647),
                                    Color(0xFFA4AA4B),
                                    Color(0xFF9CAE4F),
                                    Color(0xFF99B861),
                                    Color(0xFF9BBB67), // blue sky
                                    Color(0xFFA9C681), // yellow sun
                                  ],
                                ),
                              ),
                              PieChartSectionData(
                                radius: 150,
                                showTitle: true,
                                title: "Budget",
                                titleStyle: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    textBaseline: TextBaseline.alphabetic),
                                value: 25,
                                gradient: RadialGradient(
                                  center: Alignment(1, -1),
                                  radius: 1.2,
                                  colors: <Color>[
                                    Color(0xFFB3A142),
                                    Color(0xFFA9A647),
                                    Color(0xFFA4AA4B),
                                    Color(0xFF9CAE4F),
                                    Color(0xFF99B861),
                                    Color(0xFF9BBB67), // blue sky
                                    Color(0xFFA9C681), // yellow sun
                                  ],
                                ),
                              ),
                              PieChartSectionData(
                                radius: 150,
                                showTitle: true,
                                title: "Expense",
                                titleStyle: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    textBaseline: TextBaseline.alphabetic),
                                value: 25,
                                gradient: RadialGradient(
                                  center: Alignment(1, -1),
                                  radius: 1.2,
                                  colors: <Color>[
                                    Color(0xFFB3A142),
                                    Color(0xFFA9A647),
                                    Color(0xFFA4AA4B),
                                    Color(0xFF9CAE4F),
                                    Color(0xFF99B861),
                                    Color(0xFF9BBB67), // blue sky
                                    Color(0xFFA9C681), // yellow sun
                                  ],
                                ),
                              ),
                            ],
                            startDegreeOffset: 180,
                            borderData: FlBorderData(
                              show: false,
                            ),
                            sectionsSpace: 0.4,
                            centerSpaceRadius: 0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
