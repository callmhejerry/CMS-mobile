extension DateExtension on DateTime {
  String formatDate() {
    late String formatDay;
    late String formatMonth;
    switch (weekday) {
      case 1:
        formatDay = "Monday";
        break;
      case 2:
        formatDay = "Tuesday";
        break;
      case 3:
        formatDay = "Wednesday";
        break;
      case 4:
        formatDay = "Thursday";
        break;
      case 5:
        formatDay = "Friday";
        break;
      case 6:
        formatDay = "Saturday";
        break;
      default:
        formatDay = "Sunday";
    }

    switch (month) {
      case 1:
        formatMonth = "January";
        break;
      case 2:
        formatMonth = "Febuary";
        break;
      case 3:
        formatMonth = "March";
        break;
      case 4:
        formatMonth = "April";
        break;
      case 5:
        formatMonth = "May";
        break;
      case 6:
        formatMonth = "June";
        break;
      case 7:
        formatMonth = "July";
        break;
      case 8:
        formatMonth = "August";
        break;
      case 9:
        formatMonth = "September";
        break;
      case 10:
        formatMonth = "October";
        break;
      case 11:
        formatMonth = "November";
        break;
      default:
        formatMonth = "December";
    }

    String newDate = "$formatDay, $formatMonth $day";
    return newDate;
  }
}
