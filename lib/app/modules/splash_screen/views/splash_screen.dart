import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          // Black background with text
          Positioned.fill(
            child: Align(
              alignment: Alignment.topCenter,
              child: Container(
                color: Colors.black,
                height: MediaQuery.of(context).size.height / 2,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RichText(
                        text: TextSpan(
                          children: [
                            const TextSpan(
                              text: 'Uni',
                              style: TextStyle(
                                fontSize: 48.0,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              ),
                            ),
                            TextSpan(
                              text: 'Share',
                              style: TextStyle(
                                fontSize: 48.0,
                                fontWeight: FontWeight.w400,
                                color: Colors.orange.shade900,
                              ),
                            ),    
                          ],
                        ),
                      ),
                      const SizedBox(height: 10.0),
                       Text(
                        'Unlock Your Opportunities\nBoost Your Career',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.grey.shade100,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          const Positioned.fill(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: CustomGrayLayer(),
            ),
          ),
          // Orange layer (unchanged)
          const Positioned.fill(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: CustomOrangeLayer(),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomOrangeLayer extends StatelessWidget {
  const CustomOrangeLayer({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CustomClipPath(), // Apply the custom clip path
      child: Container(
        height: MediaQuery.of(context).size.height / 1.5,
        decoration: BoxDecoration(
          color: Colors.orange.shade900,
        ),
        child:  Stack(
          children: [
            // Orange background
           Positioned(
              top: 0, // Adjust the top position as needed
              left: 0,
              right: 0,
              child: SizedBox(
                width: MediaQuery.of(context).size.width, // Set width to match screen width
                height: MediaQuery.of(context).size.height/5, // Set height to match the container height
                child: Image.asset(
                  'assets/img/unishare_splash.png', // Replace with your image path
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class CustomClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();

    // Adjust border offset
    final double borderWidth = 2.0;

    // Move to the starting point of the curve
    path.moveTo(0.0, size.height * 0.2);

    // Define control points for quadratic Bezier curve
    double controlPointX = size.width / 2;
    double controlPointY = 0.0; // Control point at the top-middle
    double endPointX = size.width;
    double endPointY = size.height * 0.2;

    // Draw the quadratic Bezier curve to the top-right
    path.quadraticBezierTo(controlPointX, controlPointY, endPointX, endPointY);

    // Draw a line to the bottom-right corner
    path.lineTo(size.width, size.height);

    // Draw a line to the bottom-left corner
    path.lineTo(0.0, size.height);
    path.lineTo(0.0, 0.0); // Close the path

    path.close();

    // Create a bordered path
    final borderedPath = Path();
    borderedPath.addPath(path, Offset.zero);
    borderedPath.addPath(path, Offset(borderWidth, borderWidth));

    return borderedPath;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class CustomGrayLayer extends StatelessWidget {
  const CustomGrayLayer({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CustomClipPath(), // Apply the custom clip path
      child: Container(
        height: MediaQuery.of(context).size.height / 1.45,
        decoration: BoxDecoration(
          color: Colors.grey.shade400,
        ),
      ),
    );
  }
}
