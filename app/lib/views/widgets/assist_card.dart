import 'package:flutter/material.dart';

class AssistCard extends StatelessWidget {
  const AssistCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
            height: 100,
            child: Row(
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Username",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Video Title",
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  width: 160,
                ),
                TextButton(onPressed: () {}, child: const Text("View Profile"))
              ],
            ),
          )
        ],
      ),
    );
  }
}
