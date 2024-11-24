import 'package:flutter/material.dart';
import 'package:responsive_ui/buy_rent_card.dart';

class BuyRentSection extends StatelessWidget {
  const BuyRentSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Visibility(
          visible: constraints.maxWidth < 600,
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
            child: Row(
              children: [
                BuyRentCard(),
                SizedBox(
                  width: 10,
                ),
                BuyRentCard(
                  isRent: true,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
