import 'package:flutter/material.dart';

class Contact {
  final String name;
  final String number;

  Contact(this.name, this.number);
}

class ContactListApp extends StatefulWidget {
  const ContactListApp({super.key});

  @override
  State<ContactListApp> createState() => _ContactListAppState();
}

class _ContactListAppState extends State<ContactListApp> {
  final TextEditingController nameTEController = TextEditingController();
  final TextEditingController numberTEController = TextEditingController();

  final List<Contact> contacts = [];

  void addContact() {
    String name = nameTEController.text.trim();
    String number = numberTEController.text.trim();

    if (name.isNotEmpty && number.isNotEmpty) {
      setState(() {
        contacts.add(Contact(name, number));
        nameTEController.clear();
        numberTEController.clear();
      });
    }
  }

  void showDeleteConfirmation(int index) {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('Confirmation'),
        content: const Text('Are you sure for Delete?'),
        actions: [
          IconButton(
            icon: const Icon(Icons.close),
            onPressed: () => Navigator.of(ctx).pop(),
          ),
          IconButton(
            icon: const Icon(Icons.delete, color: Colors.red),
            onPressed: () {
              setState(() {
                contacts.removeAt(index);
              });
              Navigator.of(ctx).pop();
            },
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact List'),
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            TextField(
              controller: nameTEController,
              decoration: const InputDecoration(
                labelText: 'NAME',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: numberTEController,
              keyboardType: TextInputType.phone,
              decoration: const InputDecoration(
                labelText: 'NUMBER',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: addContact,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueGrey,
              ),
              child: const Text(
                'Add',
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: contacts.length,
                itemBuilder: (context, index) {
                  final contact = contacts[index];
                  return GestureDetector(
                    onLongPress: () => showDeleteConfirmation(index),
                    child: ListTile(
                      leading: const Icon(Icons.person),
                      title: Text(
                        contact.name,
                        style: const TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(contact.number),
                      trailing: const Icon(Icons.phone, color: Colors.blue),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
