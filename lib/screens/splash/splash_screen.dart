import 'package:flutter/material.dart';
import '../../core/routes/route_names.dart';
import '../../core/constants/app_constants.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(AppConstants.splashDuration, () {
      if (mounted) {
        Navigator.pushReplacementNamed(context, RouteNames.login);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.flutter_dash, size: 80),
            const SizedBox(height: 16),
            Text(AppConstants.appName,
                style: Theme.of(context).textTheme.headlineMedium),
          ],
        ),
      ),
    );
  }
}
