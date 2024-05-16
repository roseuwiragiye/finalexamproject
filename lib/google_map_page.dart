import 'package:flutter/material.dart';

class GoogleMapPage extends StatelessWidget {
  final int stepCount;
  final Function(int) onStepSelected;

  const GoogleMapPage({
    super.key,
    required this.stepCount,
    required this.onStepSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(
          stepCount,
          (index) => GestureDetector(
            onTap: () => onStepSelected(index),
            child: Container(
              width: 40.0,
              height: 40.0,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(255, 117, 243, 33),
              ),
              child: Center(
                child: Text(
                  '${index + 1}',
                  style: const TextStyle(
                    color: Color.fromARGB(27, 1, 0, 0),
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
