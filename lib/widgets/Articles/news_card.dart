import 'package:flutter/material.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: Image.network(
              "https://www.fcbarcelonanoticias.com/uploads/s1/14/03/32/2/hansi-flick-partido.jpeg",
              height: 213,
            ),
          ),
          const Text(
              "Hansi Flick Hansi Flick Hansi Flick Hansi Flick Hansi Flick Hansi Flick Hansi Flick Hansi Flick Hansi Flick "),
          const Text(
            "lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem ",
            style: TextStyle(color: Colors.grey),
          )
        ],
      ),
    );
  }
}
