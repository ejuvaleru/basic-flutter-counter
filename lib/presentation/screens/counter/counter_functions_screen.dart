import 'package:flutter/material.dart';

class CounterFuntionsScreen extends StatefulWidget {
  const CounterFuntionsScreen({super.key});

  @override
  State<CounterFuntionsScreen> createState() => _CounterFuntionsScreenState();
}

class _CounterFuntionsScreenState extends State<CounterFuntionsScreen> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Functions'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$counter',
                style: const TextStyle(
                    fontSize: 160, fontWeight: FontWeight.w100)),
            Text((counter != 1) ? 'clicks' : 'click',
                style: const TextStyle(fontSize: 25)),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomButton(
              icon: Icons.refresh_rounded,
              onPressed: () {
                setState(() {
                  counter = 0;
                });
              }),
          const SizedBox(height: 10),
          CustomButton(
            icon: Icons.exposure_minus_1,
            onPressed: () {
              if (counter == 0) return;
              setState(() {
                counter--;
              });
            },
          ),
          const SizedBox(height: 10),
          CustomButton(
              icon: Icons.plus_one,
              onPressed: () {
                setState(() {
                  counter++;
                });
              }),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;
  const CustomButton({super.key, required this.icon, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}
