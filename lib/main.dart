import 'package:flutter/material.dart';

void main() {
  runApp(const MyGetWellApp());
}

class MyGetWellApp extends StatelessWidget {
  const MyGetWellApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GetWell Customer App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('GetWell'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Icon(
              Icons.health_and_safety,
              size: 100,
              color: Colors.blue,
            ),
            const SizedBox(height: 20),
            const Text(
              'Welcome to GetWell',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Your Health, Our Priority',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 40),
            ElevatedButton.icon(
              onPressed: () {
                // TODO: Navigate to services
              },
              icon: const Icon(Icons.medical_services),
              label: const Text('Browse Services'),
            ),
          ],
        ),
      ),
    );
  }
}
