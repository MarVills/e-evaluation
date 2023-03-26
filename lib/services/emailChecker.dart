bool isValidEmail(String email) {
  // Regular expression pattern for email validation
  String emailPattern = r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$';

  // Create a regex object with the email pattern
  RegExp regex = RegExp(emailPattern);

  // Check if the email matches the regex pattern
  return regex.hasMatch(email);
}
