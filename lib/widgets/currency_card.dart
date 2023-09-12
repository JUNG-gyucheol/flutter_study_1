import 'package:flutter/material.dart';

class CurrencyCard extends StatelessWidget {
  const CurrencyCard(
      {super.key,
      required this.name,
      required this.code,
      required this.amount,
      required this.icon,
      required this.isInverted});

  final String name, code, amount;
  final IconData icon;
  final bool isInverted;

  final _blackColor = const Color(0xFF1F2123);

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: isInverted ? Colors.white : _blackColor,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.w600,
                          color: isInverted ? Colors.black : Colors.white),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          amount,
                          style: TextStyle(
                            fontSize: 18,
                            color: isInverted ? Colors.black : Colors.white,
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          code,
                          style: TextStyle(
                              color: isInverted
                                  ? Colors.black.withOpacity(0.5)
                                  : Colors.white.withOpacity(0.5)),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
            Transform.scale(
              scale: 2.2,
              child: Transform.translate(
                offset: const Offset(-5, 15),
                child: Icon(
                  icon,
                  color: isInverted ? Colors.black : Colors.white,
                  size: 88,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
