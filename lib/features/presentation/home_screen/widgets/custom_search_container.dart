import 'package:flutter/material.dart';

class CustomSearchContainer extends StatelessWidget {
  const CustomSearchContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.06,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: Row(
          children: [
            Icon(
              Icons.search_outlined,
              color: Colors.grey,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              'Искать в Malina',
              style: TextStyle(color: Colors.grey),
            )
          ],
        ),
      ),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Color.fromARGB(34, 0, 0, 0),
          blurRadius: 15,
          spreadRadius: 1,
        ),
      ], color: Colors.white, borderRadius: BorderRadius.circular(12)),
    );
  }
}
