import 'package:flutter/material.dart';
import 'package:flutter_application_6/pages/home.dart';
import 'package:flutter_application_6/services/ad.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Stripe.publishableKey =
      'pk_test_51Q0AAc03qpzQ5s7gOpGn06ZLS7Dw1W7IKzNxhXpPidBM5qiVKGJ7LsC94NkQ1wrEtABgrq4kZP0br3bARvKQvHWz00bEk9FrXz';
  MobileAds.instance.initialize();
  Ads().showAppOpenAd();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
