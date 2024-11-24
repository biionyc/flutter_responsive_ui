import 'package:flutter/material.dart';

class MobileAppBar extends StatelessWidget {
  const MobileAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Padding(
          padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
          child: Container(
            padding: const EdgeInsets.all(10),
            height: kToolbarHeight + 10,
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(50),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.location_pin,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Deliver to'),
                        Text(
                          '201301',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    if (constraints.maxWidth > 600) ...[
                      const SizedBox(
                        width: 5,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text('Buy'),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text('Rent'),
                      ),
                    ]
                  ],
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 50, right: 20),
                    child: Visibility(
                      visible: constraints.maxWidth > 600,
                      child: TextField(
                        onTapOutside: (event) =>
                            FocusScope.of(context).unfocus(),
                        cursorColor: Colors.black,
                        decoration: InputDecoration(
                          label: const Text(
                            'Search',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          suffixIcon: const Icon(Icons.search_rounded),
                        ),
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Visibility(
                      visible: constraints.maxWidth < 600,
                      child: const Icon(
                        Icons.search_rounded,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Icon(
                      Icons.favorite_rounded,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Icon(
                      Icons.shopping_cart_rounded,
                    ),
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
