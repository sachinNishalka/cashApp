import "package:cashapp/components/BottomMainNavigationBar.dart";
import "package:cashapp/components/CustomizedAppBar.dart";
import "package:flutter/material.dart";
import 'package:cashapp/components/GetSectionData.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'dart:ui' as ui;
import 'package:cashapp/data/myExpenses.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late List<MyExpenses> _chartData;

  @override
  void initState() {
    _chartData = MyExpenses.getMyExpense();

    super.initState();
  }

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
                    SfCircularChart(
                      onCreateShader: (ChartShaderDetails chartShaderDetails) {
                        return ui.Gradient.radial(
                          chartShaderDetails.outerRect.center,
                          chartShaderDetails.outerRect.right -
                              chartShaderDetails.outerRect.center.dx,
                          <Color>[
                            Color(0xFFB3A142),
                            Color(0xFFA9A647),
                            Color(0xFFA4AA4B),
                            Color(0xFF9CAE4F),
                            Color(0xFF99B861),
                            Color(0xFF9BBB67), // blue sky
                            Color(0xFFA9C681),
                          ],
                          <double>[0.2, 0.4, 0.6, 0.8, 10.0, 12.0, 14.0],
                        );
                      },
                      series: <CircularSeries>[
                        PieSeries<MyExpenses, String>(
                          explode: true,
                          radius: "100%",
                          dataLabelSettings: DataLabelSettings(
                            isVisible: true,
                            textStyle:
                                TextStyle(fontSize: 14.0, color: Colors.white),
                          ),
                          strokeColor: Color(0xFFCCAD5E),
                          dataSource: _chartData,
                          xValueMapper: (MyExpenses data, _) =>
                              data.expenseName,
                          yValueMapper: (MyExpenses data, _) =>
                              data.expenceValue,
                          dataLabelMapper: (MyExpenses data, _) =>
                              "${data.expenseName}",
                        ),
                      ],
                    )
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
