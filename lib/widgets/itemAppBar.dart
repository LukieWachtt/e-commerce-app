import 'package:flutter/material.dart';

class ItemAppBar extends StatelessWidget {
  const ItemAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Row(
          children: [
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.arrow_back,
                size: 38,
                color: Colors.blue,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                'Product',
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue
                ),
              ),
            ),
            const Spacer(),
            const Icon(
              Icons.favorite,
              size: 30,
              color: Colors.red,
            )
          ],
        ),
      ),
    );
  }
}
