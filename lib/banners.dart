import 'package:flutter/material.dart';

class MobileBannners extends StatelessWidget {
  MobileBannners({
    super.key,
  });

  final List<String> _offerBanners = [
    'assets/images/sale-with-special-discount-chair.jpg',
    'assets/images/cosmetic-bottles-podium-banner_33099-1946.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Padding(
          padding: const EdgeInsets.fromLTRB(0, 40, 0, 30),
          child: SizedBox(
            height: constraints.maxWidth < 600 ? 250 : 350,
            child: ListView.separated(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              scrollDirection: Axis.horizontal,
              itemCount: _offerBanners.length,
              itemBuilder: (context, index) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  clipBehavior: Clip.antiAlias,
                  child: Image.asset(
                    fit: BoxFit.cover,
                    _offerBanners[index],
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return const SizedBox(
                  width: 20,
                );
              },
            ),
          ),
        );
      },
    );
  }
}
