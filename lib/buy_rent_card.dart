import 'package:flutter/material.dart';

class BuyRentCard extends StatelessWidget {
  const BuyRentCard({
    super.key,
    this.isRent = false,
  });

  final bool isRent;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: isRent ? Colors.greenAccent : Colors.blueAccent,
          borderRadius: BorderRadius.circular(20),
        ),
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              isRent ? Icons.recycling : Icons.card_giftcard_rounded,
              size: 60,
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Buy',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    isRent ? 'Refurbished' : 'Brand New',
                    style: const TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w700,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const Icon(
                  Icons.arrow_right_alt_outlined,
                  size: 30,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
