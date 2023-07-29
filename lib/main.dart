import 'package:flutter/material.dart';
import 'quote.dart';

void main() {
  runApp(const MaterialApp(
    home: Fixing(),
  ));
}

class Fixing extends StatefulWidget {
  const Fixing({Key? key}) : super(key: key);

  @override
  State<Fixing> createState() => _Fixing();
}

class _Fixing extends State<Fixing> {
  int point = 0;

  List<Quote> quotes = [
    Quote(text: 'The Lord is my shepered', author: 'Psalms'),
    Quote(text: 'I shall not want', author: 'Jesus'),
    Quote(text: 'He makes me to lie down in greener pastures', author: 'James'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.grey[850],
        centerTitle: true,
        title: const Text(
          'Practice',
          style: TextStyle(color: Colors.amber),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: CircleAvatar(
                backgroundImage: AssetImage(
                  'assets/image1.jpg',
                ),
                radius: 40.0,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            const Divider(
              color: Colors.grey,
            ),
            const SizedBox(
              height: 20.0,
            ),
            const Text(
              'Name',
              style: TextStyle(
                color: Colors.amber,
                // letterSpacing: 2.0,
                fontSize: 16.0,
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            const Text(
              'Humble',
              style: TextStyle(
                color: Colors.grey,
                // letterSpacing: 2.0,
                fontSize: 24.0,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            const Text(
              'Level',
              style: TextStyle(
                color: Colors.amber,
                // letterSpacing: 2.0,
                fontSize: 16.0,
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            const Text(
              'Beginner Level',
              style: TextStyle(
                color: Colors.grey,
                // letterSpacing: 2.0,
                fontSize: 24.0,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            const Text(
              'Email Adress',
              style: TextStyle(
                color: Colors.amber,
                fontSize: 16.0,
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            const Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.grey,
                ),
                SizedBox(
                  width: 20.0,
                ),
                Text(
                  'humblebeginner@gmail.com',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16.0,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            const Text(
              'Favourite Quotes',
              style: TextStyle(
                color: Colors.amber,
                fontSize: 16.0,
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: quotes.map((quote) {
                return Text(
                  '${quote.text} - ${quote.author}',
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 18.0,
                  ),
                );
              }).toList(),
            ),
            const SizedBox(
              height: 10.0,
            ),
            const SizedBox(
              height: 20.0,
            ),
            const Text(
              'Points',
              style: TextStyle(
                color: Colors.amber,
                fontSize: 16.0,
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Text(
              '$point',
              style: const TextStyle(
                color: Colors.grey,
                fontSize: 24.0,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Row(children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    point += 1;
                  });
                },
                child: const Text('Increase'),
              ),
              const SizedBox(
                width: 20.0,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    point -= 1;
                  });
                },
                child: const Text('Decrease'),
              ),
              const SizedBox(
                width: 20.0,
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    point = 0;
                  });
                },
                icon: const Icon(
                  Icons.restart_alt,
                  color: Colors.amber,
                  size: 30.0,
                ),
              ),
            ]),
          ],
        ),
      ),
      backgroundColor: Colors.grey[900],
    );
  }
}
