import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final String title;
  final String image;
  final double priceRental, star;
  final String description;
  final String location;
  final press;

  const MyCard({
    Key ? key,
    required this.title,
    required this.image,
    required this.priceRental,
    required this.star,
    required this.description,
    required this.location,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        height: 120,
        width: 220,
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.only(top: 10.0),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 255, 255, 255),
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          border: Border.all(
            color: Colors.grey,
            width: 0.5,
          ),
        ),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(1),
              width: 110,
              height: 110,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                    Radius.circular(5)),
              ),
              child: Image.asset(image),
            ),
            Container(
                padding: const EdgeInsets.only(left: 20),
                width: 150,
                height: 150,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Text(
                      "Rp. ${priceRental}",
                      style: const TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ],
              )
            ),
            Container(
              padding: const EdgeInsets.only(left: 25),
              width: 70,
              height: 70,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                    Radius.circular(5)),
              ),
              child: Row(
                children: [
                  Text("$star"),
                  const Icon(Icons.star, color: Colors.orange, size: 20)
                ],
              )
            ),
          ],
        ),
      ),
    );
  }
}
