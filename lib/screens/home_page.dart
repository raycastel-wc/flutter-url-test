import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../router/router.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              const Text(
                'Home Page'
              ),

              ElevatedButton(
                onPressed: () {
                  context.router.push(const FirstRoute());
                  // context.router.pushNamed('one');
                  // context.router.navigateNamed('one');
                },
                child: const Text('Navigate to First Page'))
            ]
          ),
        ),
      ),
    );
  }
}