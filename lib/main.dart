import 'package:flutter/material.dart';
import 'package:khalti_flutter/khalti_flutter.dart';

import 'payment_method/khalti_payment.dart';

void main() => runApp(const KhaltiPaymentApp());

class KhaltiPaymentApp extends StatelessWidget {
  const KhaltiPaymentApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return KhaltiScope(
      publicKey: "test_public_key_4abf1b628b5b4ae1a24937980c61f2b4",
      builder: (context, navigatorKey) {
        return MaterialApp(
          navigatorKey: navigatorKey,
          supportedLocales: const [
            Locale('en', 'US'),
            Locale('ne', 'NP'),
          ],
          localizationsDelegates: const [
            KhaltiLocalizations.delegate,
          ],
          theme: ThemeData(
            primaryColor: const Color(0xFF56328c),
            appBarTheme: const AppBarTheme(
              color: Color(0xFF56328c),
            ),
          ),
          debugShowCheckedModeBanner: false,
          title: 'Khalti Payment',
          home: const KhaltiPaymentPage(),
        );
      },
    );
  }
}
