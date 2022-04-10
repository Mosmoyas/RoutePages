import 'package:flutter/material.dart';
import 'package:routepages/widgets_functions.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({
    Key? key,
  }) : super(key: key);

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
        title: const Text("Screen Two"),
      ),
      body: Container(
        color: Colors.amber,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Page Tow ${routeArgs!['id']}",
                style: const TextStyle(fontSize: 20, color: Colors.green)),
            const SizedBox(
              height: 20,
            ),
            Text("Page Two ${routeArgs["item"]}",
                style: const TextStyle(fontSize: 20, color: Colors.redAccent)),
            const SizedBox(
              height: 20,
            ),
            InkWell(
                child: const Text("Page X1", style: TextStyle(fontSize: 20)),
                onTap: () {
                  selectedPageX1(context);
                }),
          ],
        ),
      ),
    );
  }
}
