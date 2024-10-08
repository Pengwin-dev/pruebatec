import 'package:flutter/material.dart';
import '/pages/nextpage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      showDialog(
        context: context,
        builder: (context) => const CustomDialog(),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      // appBar: AppBar(
      //   title: const Text('Prueba Tecnica'),
      //   elevation: 0.0,
      //   centerTitle: true,
      // ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/background.png'),
                fit: BoxFit.cover, // Adjust the fit as needed
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/logoWersus2.png'),
                const Text('Wersus TSP',
                    style: TextStyle(
                        color: Colors.white, fontFamily: 'UniteaSans')),
                const Text('Truck Space Partner',
                    style: TextStyle(color: Colors.white)),
                Image.asset(
                  'assets/logoWersus.png',
                  height: 300,
                  width: 300,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CustomDialog extends StatelessWidget {
  const CustomDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          content: const Text(
              'Ensure you drive safely and follow all traffic regulations. Avoid using this app while driving, as it can cause a serious accident.'),
        ),
        AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          title: null,
          actions: [
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const NextPage(),
                  ),
                );
              },
              child: const Center(
                  child: Text('START', style: TextStyle(color: Colors.black))),
            )
          ],
        ),
      ],
    );
  }
}
