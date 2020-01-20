import 'package:flutter/material.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:alnaiem/util/constants.dart';

class Utilities {
  void sendMessage() {
    String inputEmail;
    String inputMessage;
    Email email;
    email = Email(
      body: kEurekaAppzEmailBody,
      subject: kEurekaAppzEmailSubject,
      recipients: [kEurekaAppzEmailAddress],
    );
    send(email);
    debugPrint('email - > $inputEmail  message -> $inputMessage');
  }

  void send(Email email) async {
    print(email.recipients);
    await FlutterEmailSender.send(email);
  }
}
