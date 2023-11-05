import 'package:flutter/material.dart';
import 'package:hackout/views/widgets/assist_card.dart';

class NotiScreen extends StatelessWidget {
  const NotiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10, itemBuilder: ((context, index) => AssistCard()));
  }
}
