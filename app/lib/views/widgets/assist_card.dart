import 'package:flutter/material.dart';

class AssistCard extends StatelessWidget {
  const AssistCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            height: 100,
            child: Row(
              children: [
                Column(
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
                      "video name",
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
