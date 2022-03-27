import 'package:flutter/material.dart';

class Retry extends StatelessWidget {
  const Retry({Key? key, required this.onPressed}) : super(key: key);
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text('Something went wrong'),
        const SizedBox(
          height: 10,
        ),
        TextButton(onPressed: onPressed, child: const Text('Retry'))
      ],
    );
  }
}
