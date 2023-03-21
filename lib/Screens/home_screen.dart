import 'package:flutter/material.dart';
import 'package:login_auth/Models/Contact.dart';

import '../Widget/Contacts_Item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Contact> _contact = [
    Contact('Mohammed', '+972-56728-111'),
    Contact('Ahmed', '+972-56728-222'),
    Contact('Mhamoud', '+972-56728-333'),
    Contact('Rewaa', '+972-56728-444'),
    Contact('kholud', '+972-56728-555'),
    Contact('Sara', '+972-56728-666'),
    Contact('Mustafa', '+972-56728-777'),
    Contact('Hamada', '+972-56728-888'),
    Contact('Yosuf', '+972-56728-999'),
    Contact('Adeep', '+972-56728-421'),
    Contact('Omar', '+972-56728-777'),
    Contact('Fares', '+972-56728-888'),
    Contact('Hassan', '+972-56728-999'),
    Contact('Abood', '+972-56728-421'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade400,
      appBar: AppBar(
        title: const Text(
          'Contact',
          style: TextStyle(
            fontFamily: 'RobotoMono',
            fontSize: 20,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/login_screen');
            },
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Contact_item(
            Name: _contact.elementAt(index).Name,
            Number: _contact.elementAt(index).Number,
          );
        },
        itemCount: _contact.length,
      ),
    );
  }
}

/**
 *  Contact_item(Name: 'Mohammed', Number: '+972-56728-111'),
          Contact_item(Name: 'Ahmed', Number: '+972-56728-222'),
          Contact_item(Name: 'Mahmoud', Number: '+972-56728-333'),
          Contact_item(Name: 'Rewaa', Number: '+972-56728-444'),
          Contact_item(Name: 'Khloud', Number: '+972-56728-555'),
          Contact_item(Name: 'Sara', Number: '+972-56728-666'),
          Contact_item(Name: 'Faruk', Number: '+972-56728-777'),
          Contact_item(Name: 'Fares', Number: '+972-56728-888'),
          Contact_item(Name: 'Manar', Number: '+972-56728-999'),
          Contact_item(Name: 'Mustafa', Number: '+972-56728-1122'),
          Contact_item(Name: 'Hamada', Number: '+972-56728-322'),
          Contact_item(Name: 'Yousef', Number: '+972-56728-532'),
          Contact_item(Name: 'Adeep', Number: '+972-56728-872'),
          Contact_item(Name: 'Omar', Number: '+972-56728-638'),
 */
