import 'package:flutter/material.dart';

import 'payment/page/payment_page.dart';

class Payment extends StatelessWidget {
  const Payment({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Payment',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
        
      ),
      home:  const PaymentPage(),
    );
  }
}
