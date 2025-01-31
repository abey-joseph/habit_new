List<DateTime> lastFiveDays = [];

// A function to generate a list of dates starting from today
List<DateTime> getLastFiveDays() {
  DateTime today = DateTime.now();
  return List.generate(5, (index) => today.subtract(Duration(days: index)));
}
