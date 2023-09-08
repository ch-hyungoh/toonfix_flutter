import 'package:flutter/material.dart';
import 'package:toonflix/widgets/button.dart';
import 'package:toonflix/widgets/currency_dart.dart';

void main() {
  runApp(const App());
} // root

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          // 배경색 가져와서
          backgroundColor: const Color(0xFF181818),
          body: SingleChildScrollView(
            // 왼쪽의 노란 전구를 클릭해서 패딩을 추가할수 있다
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Column(
                // 세로를 맞추면서 가로 정렬 설정
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // 중간에 공간을 만들어서 띄우기 만들기 위한 box
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const Text(
                            'Hey, Selena',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          Text(
                            'Welcome back',
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.8),
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 45,
                  ),
                  Text(
                    'Total Balance',
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.white.withOpacity(0.8),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    '\$5 194 482',
                    style: TextStyle(
                      fontSize: 38,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Button(
                        text: 'Transfer',
                        bgcolor: Color(0xFFF1B33B),
                        textcolor: Colors.black,
                      ),
                      Button(
                          text: "Request",
                          bgcolor: Color(0xFF1F2123),
                          textcolor: Colors.white),
                    ],
                  ),
                  const SizedBox(
                    height: 45,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Wallets',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'ViewAll',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.8),
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const CurrencyCard(
                    num: 0,
                    name: 'Euro',
                    code: 'EUR',
                    amount: '6 428',
                    icon: Icons.euro_rounded,
                    isInverted: false,
                  ),
                  const CurrencyCard(
                    num: -20,
                    name: 'Bitcoin',
                    code: 'BTC',
                    amount: '9 785',
                    icon: Icons.currency_bitcoin,
                    isInverted: true,
                  ),
                  const CurrencyCard(
                    num: -40,
                    name: 'Dollar',
                    code: 'USD',
                    amount: '428',
                    icon: Icons.attach_money_outlined,
                    isInverted: false,
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
