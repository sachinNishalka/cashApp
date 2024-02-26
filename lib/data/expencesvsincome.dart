class ExpensesVsIncome {
  final String day;
  final int incomeValue;
  final int expenseValue;

  ExpensesVsIncome(
      {required this.day,
      required this.expenseValue,
      required this.incomeValue});

  static List<ExpensesVsIncome> getExpenseVsIncome() {
    final List<ExpensesVsIncome> chartdata = [
      ExpensesVsIncome(day: "Monday", incomeValue: 5000, expenseValue: 15000),
      ExpensesVsIncome(day: "Tuesday", incomeValue: 7000, expenseValue: 2500),
      ExpensesVsIncome(
          day: "Wednesday", incomeValue: 10000, expenseValue: 1000),
      ExpensesVsIncome(day: "Thursday", incomeValue: 2500, expenseValue: 1000),
      ExpensesVsIncome(day: "Friday", incomeValue: 15000, expenseValue: 2000),
      ExpensesVsIncome(day: "Saturday", incomeValue: 1000, expenseValue: 900),
      ExpensesVsIncome(day: "Sunday", incomeValue: 1000, expenseValue: 1000)
    ];

    return chartdata;
  }
}
