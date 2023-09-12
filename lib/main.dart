import 'package:flutter/material.dart';
import 'package:webtoon/widgets/button.dart';
import 'package:webtoon/widgets/currency_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          textTheme: const TextTheme(
              bodyMedium: TextStyle(
            color: Colors.white,
          )),
        ),
        home: Scaffold(
            backgroundColor: const Color.fromARGB(24, 24, 24, 1),
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const SizedBox(
                      height: 50.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const Text(
                              'Hey, Selena',
                              style: TextStyle(
                                  fontSize: 28, fontWeight: FontWeight.w800),
                            ),
                            Text(
                              'Welcome back',
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.8),
                                fontSize: 18,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 100,
                    ),
                    Text(
                      'Total Balance',
                      style: TextStyle(
                          fontSize: 22, color: Colors.white.withOpacity(0.8)),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      '\$5 194 482',
                      style: TextStyle(
                          fontSize: 48,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Button(
                          bgColor: Color(0xFFF1B33B),
                          text: 'Transfer',
                          textColor: Colors.black,
                        ),
                        Button(
                          bgColor: Color(0xFF1F2123),
                          text: 'Request',
                          textColor: Colors.white,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text(
                          'Wallets',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 36,
                          ),
                        ),
                        Text(
                          'View All',
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.8),
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const CurrencyCard(
                      name: 'Euro',
                      code: 'EUR',
                      amount: '6 425',
                      icon: Icons.euro_rounded,
                      isInverted: false,
                    ),
                    Transform.translate(
                      offset: const Offset(0, -20),
                      child: const CurrencyCard(
                        name: 'Bitcoin',
                        code: 'BTC',
                        amount: '9 785',
                        icon: Icons.currency_bitcoin,
                        isInverted: true,
                      ),
                    ),
                    Transform.translate(
                      offset: const Offset(0, -40),
                      child: const CurrencyCard(
                        name: 'Dollar',
                        code: 'USD',
                        amount: '248',
                        icon: Icons.attach_money,
                        isInverted: false,
                      ),
                    ),
                  ],
                ),
              ),
            )));
  }
}
