import 'package:flutter/material.dart';

extension TimeExtenstion on TimeOfDay {
  static TimeOfDay fromTime(String time) {
    RegExp timeRegex = RegExp(r'^(\d{2}):(\d{2}):(\d{2})$');
    Match? match = timeRegex.firstMatch(time);

    if (match != null) {
      int hour = int.tryParse(match.group(1)!) ?? 0;
      int minute = int.tryParse(match.group(2)!) ?? 0;

      return TimeOfDay(hour: hour, minute: minute);
    }

    return TimeOfDay.now();
  }

  String stringFormat() {
    String strHour = hour > 12 ? (24 - hour).toString() : (hour).toString();
    String strMin =
        (minute).toString().length == 2 ? (minute).toString() : "${minute}0";
    String strPeriod = "";
    switch (period) {
      case DayPeriod.am:
        strPeriod = "AM";
        break;
      default:
        strPeriod = "PM";
    }
    return "$strHour:$strMin $strPeriod";
  }
}
