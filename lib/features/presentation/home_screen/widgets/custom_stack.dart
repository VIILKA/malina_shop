import 'package:flutter/material.dart';

class CustomStack extends StatelessWidget {
  final String title;
  final String subtitle;
  final String assetImage;
  final bool backColor;

  const CustomStack(
      {Key? key,
      required this.assetImage,
      required this.title,
      required this.subtitle,
      this.backColor = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12.0),
      child: Container(
        color: backColor ? const Color.fromARGB(255, 255, 222, 221) : null,
        child: Stack(
          children: [
            Image.asset(
              assetImage,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 22,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    subtitle,
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
