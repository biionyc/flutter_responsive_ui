import 'package:flutter/material.dart';
import 'package:responsive_ui/deal_product.dart';
import 'package:responsive_ui/deals_of_the_day_product_card.dart';

class DealsOfTheDaySection extends StatelessWidget {
  DealsOfTheDaySection({
    super.key,
  });

  final List<DealProduct> _dealProducts = [
    DealProduct(
      id: '0',
      image: 'assets/images/sofa_one.jpg',
      name: 'Insert Here Very Long Product Name',
      discount: '74%',
      price: '6,421',
    ),
    DealProduct(
      id: '1',
      image: 'assets/images/sofa_two.jpg',
      name: 'Moderate Product Name',
      discount: '71%',
      price: '12,400',
    ),
    DealProduct(
      id: '2',
      image: 'assets/images/sofa_three.jpg',
      name: 'Product Name',
      discount: '60%',
      price: '8,234',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.percent_rounded),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Deals of the day',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text('To Buy')
                      ],
                    )
                  ],
                ),
                Row(
                  children: [
                    Text('View All'),
                    Icon(
                      Icons.arrow_right_alt_outlined,
                      size: 30,
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: constraints.maxWidth < 600 ? 300 : 450,
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return DealsOfTheDayProductCard(
                  dealProduct: _dealProducts[index],
                );
              },
              separatorBuilder: (context, index) {
                return const SizedBox(
                  width: 20,
                );
              },
              itemCount: _dealProducts.length,
            ),
          )
        ],
      );
    });
  }
}
