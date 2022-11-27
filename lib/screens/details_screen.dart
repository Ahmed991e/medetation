import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  final String title;

  const DetailsScreen({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 112, 75, 38),
      body: SafeArea(
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Column(
              children: [
                const SizedBox(height: 100),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50),
                            topRight: Radius.circular(50))),
                    height: 100,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: const Icon(Icons.arrow_back)),
                    const SizedBox(
                      height: 50,
                    ),
                  ],
                ),
                Container(
                  color: Colors.red,
                  width: 120,
                  height: 120,
                ),
                Text(title)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
