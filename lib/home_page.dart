import 'package:flutter/material.dart';
import 'package:responsive_ui/app_bar.dart';
import 'package:responsive_ui/banners.dart';
import 'package:responsive_ui/buy_options.dart';
import 'package:responsive_ui/buy_rent_section.dart';
import 'package:responsive_ui/deals_of_the_day_section.dart';
import 'package:responsive_ui/offers_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(bottom: 50),
          child: Column(
            children: [
              const MobileAppBar(),
              MobileBannners(),
              const BuyOptions(),
              const BuyRentSection(),
              const OffersSection(),
              DealsOfTheDaySection(),
            ],
          ),
        ),
      ),
    );
  }
}
