class Validators {
  static final RegExp _emailRegExp = RegExp(
    r'^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$',
  );
  static final RegExp _passwordRegExp = RegExp(
    r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$',
  );

  static final RegExp _phoneRegExp = RegExp(
    r'^(?:[+0]212)?[0-9]{9}$',
  );

  static isValidUsername(String name) {
    return name.length > 3;
  }
  
  static isValidEmail(String email) {
    return _emailRegExp.hasMatch(email);
  }

  static isValidPassword(String password) {
    return _passwordRegExp.hasMatch(password);
  }

  static isValidPhone(String phone) {
    if (phone.isNotEmpty && phone[0] == '0') {
      return _phoneRegExp.hasMatch(phone.substring(1));
    } else {
      return _phoneRegExp.hasMatch(phone);
    }
  }
}
