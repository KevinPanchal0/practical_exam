import 'package:flutter/material.dart';
import './utils/my_cards.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:const Text('Products'),
      ),
      body: const SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
              MyCards(
                image1: 'assets/samsung1.png',
                title: 'Samsung',
                itemImages: [
                  'assets/samsung2.png',
                  'assets/samsung3.png',
                  'assets/samsung4.png',
                  'assets/samsung5.png',
                  'assets/samsung6.png',
                  'assets/samsung7.png',
              ],
              ),
              SizedBox(height: 30,),
              MyCards(
                itemImages: [
                  'assets/iphone2.jpg',
                  'assets/iphone3.jpg',
                  'assets/iphone4.jpg',
                  'assets/iphone5.jpg',
                  'assets/iphone6.jpg',
                ],
                image1: 'assets/iphone1.jpg',
                title: 'Iphone',
              ),
              SizedBox(height: 30,),
          ],
        ),
      ),
    );
  }
}
