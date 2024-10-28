import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UTS',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: ''),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/bg.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Harlem',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w600,
                  color: Colors.white, // Ganti warna teks jika perlu
                ),
              ),
              const Text(
                'Tuesday, January 10, 2019',
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.white), // Ganti warna teks jika perlu
              ),
              const SizedBox(height: 20),
              TemperatureDisplay(temperature: 15),
              const SizedBox(height: 20),
              const Text(
                '------------',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w300,
                  color: Colors.white, // Ganti warna teks jika perlu
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Cloudy',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: Colors.white, // Ganti warna teks jika perlu
                ),
              ),
              const SizedBox(height: 12),
              Text(
                '25°c / 28°c',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.white, // Ganti warna teks jika perlu
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TemperatureDisplay extends StatelessWidget {
  final int temperature;

  TemperatureDisplay({required this.temperature});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: '$temperature',
            style: const TextStyle(
              fontSize: 90,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
          const TextSpan(
            text: ' °C',
            style: TextStyle(
              fontSize: 24, // Ukuran lebih kecil untuk 'C'
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}
