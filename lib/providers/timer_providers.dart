import 'dart:async';

import 'package:flutter/foundation.dart';

class ResendOTPTimerProvider with ChangeNotifier {
  bool _isResendAgain = false;
  bool get isResendAgain => _isResendAgain;

  late Timer _timer;
  Timer get timer => _timer;

  int _start = 60;
  int get start => _start;

  void resend() {
    _isResendAgain = true;

    const Duration oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(oneSec, (timer) {
      if (_start == 0) {
        _start = 60;
        _isResendAgain = false;
        timer.cancel();
        notifyListeners();
      } else {
        _start--;
        notifyListeners();
      }
    });
    notifyListeners();
  }
}
