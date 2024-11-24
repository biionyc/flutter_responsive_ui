import 'package:flutter/material.dart';

class BuyOptions extends StatelessWidget {
  const BuyOptions({
    super.key,
  });

  final List<Widget> _buyOptions = const [
    Column(
      children: [
        Icon(
          Icons.access_alarm,
          size: 60,
        ),
        SizedBox(
          height: 15,
        ),
        Text('Option 1')
      ],
    ),
    Column(
      children: [
        Icon(
          Icons.fiber_dvr_sharp,
          size: 60,
        ),
        SizedBox(
          height: 15,
        ),
        Text('Option 2')
      ],
    ),
    Column(
      children: [
        Icon(
          Icons.fast_forward,
          size: 60,
        ),
        SizedBox(
          height: 15,
        ),
        Text('Option 3')
      ],
    ),
    Column(
      children: [
        Icon(
          Icons.hail_sharp,
          size: 60,
        ),
        SizedBox(
          height: 15,
        ),
        Text('Option 4')
      ],
    ),
    Column(
      children: [
        Icon(
          Icons.read_more,
          size: 60,
        ),
        SizedBox(
          height: 15,
        ),
        Text('Option 5')
      ],
    ),
    Column(
      children: [
        Icon(
          Icons.dashboard,
          size: 60,
        ),
        SizedBox(
          height: 15,
        ),
        Text('Option 6')
      ],
    ),
    Column(
      children: [
        Icon(
          Icons.table_bar_outlined,
          size: 60,
        ),
        SizedBox(
          height: 15,
        ),
        Text('Option 7')
      ],
    ),
    Column(
      children: [
        Icon(
          Icons.dns_sharp,
          size: 60,
        ),
        SizedBox(
          height: 15,
        ),
        Text('Option 8')
      ],
    ),
    Column(
      children: [
        Icon(
          Icons.yard,
          size: 60,
        ),
        SizedBox(
          height: 15,
        ),
        Text('Option 9')
      ],
    ),
    Column(
      children: [
        Icon(
          Icons.gps_fixed,
          size: 60,
        ),
        SizedBox(
          height: 15,
        ),
        Text('Option 10')
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'BUY FURNITURE',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 25,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Wrap(
            runSpacing: 30,
            spacing: 30,
            alignment: WrapAlignment.center,
            children: _buyOptions,
          ),
        )
      ],
    );
  }
}
