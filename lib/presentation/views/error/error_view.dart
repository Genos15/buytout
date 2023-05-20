import 'package:flutter/material.dart';

class ErrorView extends StatelessWidget {
  const ErrorView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('something_wrong'),
            ElevatedButton(
              onPressed: () {},
              child: Text('retry'),
            ),
          ],
        ),
      ),
    );
  }
}
