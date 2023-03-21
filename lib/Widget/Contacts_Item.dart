import 'package:flutter/material.dart';

class Contact_item extends StatelessWidget {
  String Name;
  String Number;
  Contact_item({
    super.key,
    required this.Name,
    required this.Number,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      // iconColor: Colors.blue,
      onTap: () {},
      leading: const Icon(Icons.person),
      title: Text(
        Name,
        style: TextStyle(
          fontFamily: 'RobotoMono',
          fontSize: 18,
          color: Colors.grey.shade800,
        ),
      ),
      subtitle: Text(Number),
      trailing: Icon(
        Icons.call,
        color: Colors.blue.shade400,
      ),
    );
  }
}
