import 'package:cashapp/components/BottomMainNavigationBar.dart';
import 'package:cashapp/components/CustomizedAppBar.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import 'package:cashapp/data/expencesvsincome.dart';

class ReportScreen extends StatefulWidget {
  ReportScreen({
    super.key,
  });

  @override
  State<ReportScreen> createState() => _ReportScreenState();
}

class _ReportScreenState extends State<ReportScreen> {
  List<ExpensesVsIncome>? _chartData;

  @override
  void initState() {
    _chartData = ExpensesVsIncome.getExpenseVsIncome();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomMainNavigationBar(),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(120),
        child: CustomizedAppBar(
          headingText: "Report",
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding:
                const EdgeInsets.only(left: 25.0, right: 25.0, bottom: 25.0),
            child: Stack(
              children: [
                SfCartesianChart(
                  legend: Legend(
                    isVisible: true,
                  ),
                  primaryXAxis: CategoryAxis(
                    isVisible: true,
                  ),
                  series: <CartesianSeries>[
                    StackedColumnSeries<ExpensesVsIncome, String>(
                      dataSource: _chartData,
                      xValueMapper: (ExpensesVsIncome ch, _) => ch.day,
                      yValueMapper: (ExpensesVsIncome ch, _) => ch.incomeValue,
                      color: Color(0xFF007D0D),
                      legendItemText: "Income",
                    ),
                    StackedColumnSeries<ExpensesVsIncome, String>(
                      dataSource: _chartData,
                      xValueMapper: (ExpensesVsIncome ch, _) => ch.day,
                      yValueMapper: (ExpensesVsIncome ch, _) => ch.expenseValue,
                      color: Color(0xFFAA7A00),
                      legendItemText: "Expenses",
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
