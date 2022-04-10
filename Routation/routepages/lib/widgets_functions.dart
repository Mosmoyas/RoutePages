// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

int selectedItemIndex = 0;
Color bgcBtom = Colors.orange;

//main route function
void selectScreen(BuildContext context, int n) {
  Navigator.of(context).pushNamed(n == 1 ? "/x1" : "/x2",
      arguments: {"id": n == 1 ? 10 : 20, "item": n == 2 ? "Book" : "CDs"});
}

//route to page two
void selectedPageX2(BuildContext context) {
  Navigator.of(context).pushReplacementNamed("/x2");
}
//route to page one

void selectedPageX1(BuildContext context) {
  Navigator.of(context).pushReplacementNamed(
    "/x1",
  );
}

void modalRaoute(
  BuildContext context,
) {
  if (ModalRoute.of(context)!.settings != null &&
      ModalRoute.of(context)!.settings.arguments != null) {
    final routeArgs =
        ModalRoute.of(context)!.settings.arguments as Map<String, Object>;
  } else {
    final routeArgs = {'id': 0, 'title': ''};
  }
}
//create List of wiadges type scaffold

// List<Widget> page = [
//    const Scaffold(
//     body: Center(
//       child: Text("Text of Page One soll hier sein",
//           style: TextStyle(fontSize: 25, color: Colors.green)),
//     ),
//   ),
//    const Scaffold(
//     body: Center(
//       child: Text(
//         "Text of Page Two soll hier sein",
//         style: TextStyle(fontSize: 25, color: Colors.red),
//       ),
//     ),
//   ),
// ];

final List<Map<String, Object>> pages = [
  {
    'page': const Scaffold(
      body: Center(
        child: Text(
          "The Text of Page One soll hier sein",
          style: TextStyle(fontSize: 25, color: Colors.green),
        ),
      ),
    ),
    'title': "Green Page"
  },
  {
    'page': const Scaffold(
      body: Center(
        child: Text(
          "The Text of Page Two soll hier sein",
          style: TextStyle(fontSize: 25, color: Colors.red),
        ),
      ),
    ),
    'title': "Red Page"
  }
];

Widget MyDrawer(BuildContext context) {
  return Drawer(
    child: ListView(
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      children: [
        ListTile(
          onTap: () => selectScreen(context, 1),
          title: const Text(
            "Screen One",
            style: TextStyle(color: Colors.deepOrange, fontSize: 20),
          ),
        ),
        ListTile(
            onTap: () => selectScreen(context, 2),
            title: const Text(
              "Screen Two",
              style: TextStyle(color: Colors.red, fontSize: 20),
            ),
            subtitle: const Text("Go to Page Two"),
            trailing: IconButton(
                onPressed: () {
                  print("x");
                },
                icon: const Icon(Icons.arrow_back_ios_new_outlined))),
      ],
    ),
  );
}
















// Container(
//         color: Colors.amberAccent,
//         width: double.infinity,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           // ignore: prefer_const_literals_to_create_immutables
//           children: [
//             const Text(
//               "Route Project",
//               style: TextStyle(fontSize: 50),
//             )
//           ],
//         ),
//       )