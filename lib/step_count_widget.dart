import 'package:flutter/material.dart';

class StepCountWidget extends StatelessWidget {
  final int stepCount;
  final Function(int) onStepSelected;

  const StepCountWidget({
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
                color: Colors.blue,
              ),
              child: Center(
                child: Text(
                  '${index + 1}',
                  style: const TextStyle(
                    color: Colors.white,
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
