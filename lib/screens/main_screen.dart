import 'package:flutter/material.dart';

import '../util/responsive.dart';
import '../widgets/dashboard_widget.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
 Widget build(BuildContext context) {
  final isDesktop = Responsive.isDesktop(context);

  return Scaffold(
    body: SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        color: Color.fromARGB(221, 246, 246, 246), // Background color for the whole page
       // backgroundColor: const Color.fromARGB(255, 117, 243, 33),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.blue, // Color for the left data box
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      padding: EdgeInsets.all(20.0),
                      child: DashboardWidget(), // Assuming this widget displays relevant data
                    ),
                  ),
                  SizedBox(width: 20.0),
                  Expanded(
                    flex: 3,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.green, // Color for the right data box
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      padding: EdgeInsets.all(20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Additional Information',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 20.0),
                          // Add any additional widgets here to display more information
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

}
