enum StatusLogin {
  LOG_IN,
  LOGGED_IN,
  SIGN_IN,
}

class StatusLoginSignup {
  StatusLogin status = StatusLogin.SIGN_IN;

  void setStatus(StatusLogin status) {
    this.status = status;
  }
}
