import 'package:flutter/material.dart';
import 'package:habit/data/constant/last_5_days/last_5_days_list.dart';
import 'package:intl/intl.dart';

class DateRow extends StatelessWidget {
  const DateRow({super.key});

  @override
  Widget build(BuildContext context) {
    // Get the last 5 days
    lastFiveDays = getLastFiveDays();

    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: lastFiveDays.map((date) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: 50,
              child: Center(
                child: Text(
                  DateFormat.E()
                      .format(date), // Display day abbreviation (e.g., Mon)
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54),
                ),
              ),
            ),
            Center(
              child: Text(
                DateFormat.d().format(date), // Display day of the month
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ),
              ),
            ),
          ],
        );
      }).toList(),
    );
  }
}
