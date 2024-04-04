void timeConversion(String str) {
  int hour = (int.parse(str.substring(0, 2)) % 12);
  String response = '';

  if (str[8] == 'A') {
    // If time is in "AM"
    if (hour == 0) {
      response = '00';
    } else {
      response = hour.toString().padLeft(2, '0');
    }
    response += str.substring(2, 8);
  } else {
    // If time is in "PM"
    if (hour == 0) {
      response = '12';
    } else {
      hour += 12;
      response = hour.toString().padLeft(2, '0');
    }
    response += str.substring(2, 8);
  }

  print(response);
}

void main() {
  timeConversion("07:05:45PM");
  timeConversion("12:01:00PM");
  timeConversion("19:05:45AM");
}
