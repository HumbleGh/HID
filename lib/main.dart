import 'package:flutter/material.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.grey[850],
        centerTitle: true,
        title: const Text(
          'Title here',
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
              )
            ]),
          ],
        ),
      ),
      backgroundColor: Colors.grey[900],
    );
  }
}
