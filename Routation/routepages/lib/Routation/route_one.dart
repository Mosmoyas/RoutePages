// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:routepages/widgets_functions.dart';

class ScreenOne extends StatelessWidget {
   const ScreenOne({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
       final routeArgs;

       if (ModalRoute.of(context)!.settings != null &&
        ModalRoute.of(context)!.settings.arguments != null) {
      routeArgs =
          ModalRoute.of(context)!.settings.arguments as Map<String, Object>;
    } else {
      routeArgs = {'id': 0, 'title': ''};
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Screen One"),
      ),
      body: Container(
        color: Colors.amber,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Text("Page One ${routeArgs!['id']}",
                style: const TextStyle(fontSize: 20, color: Colors.redAccent)),
            const SizedBox(
              height: 20,
            ),
            Text("Page One ${routeArgs["item"]}",
                style: const TextStyle(fontSize: 20, color: Colors.redAccent)),
            const SizedBox(
              height: 20,
            ),
            InkWell(
                child: const Text(
                  "Page X2",
                  style: TextStyle(fontSize: 20),
                ),
                onTap: () {
                  selectedPageX2(context);
                }),
          ],
        ),
      ),
    );
  }
}
