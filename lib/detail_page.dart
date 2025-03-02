import 'dart:ui';
import 'package:wannawatch/watch.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final Watch watch;
  const DetailPage({super.key, required this.watch});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(watch.name),
        titleTextStyle: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w900,
          fontFamily: 'Montserrat',
          color: Color.fromARGB(255, 255, 255, 255),
        ),
        backgroundColor: Color.fromARGB(255, 181, 90, 90),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height / 3,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(watch.image),
                fit: BoxFit.cover,
              ),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
              child: Center(child: Image.asset(watch.image, width: 130)),
            ),
          ),

          // Judul
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Text(
                watch.name,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w900,
                  fontFamily: 'Montserrat',
                ),
              ),
            ),
          ),

          // Info
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              watchInfo(watch.rate.toString(), 'Rating'),
              watchInfo(watch.episodes.toString(), 'Episodes'),
              watchInfo(watch.language.toString(), 'Language'),
            ],
          ),

          // Deskripsi
          const Padding(
            padding: EdgeInsets.only(
              left: 20,
              right: 20,
              top: 24,
              bottom: 8
            ),
            child: Text(
              'Description',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                fontFamily: 'Open Sans',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
              bottom: 24
            ),
            child: watchDesc(watch.synopsis),
          ),
        ],
      ),
    );
  }
}

Widget watchDesc(String description) {
  return  Column(
    children: [
      Text(
        description,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w400,
          fontFamily: 'Open Sans',
        ),
      ),
    ],
  );
}

Widget watchInfo(String value, String info) {
  return Column(
    children: [
      Text(
        value,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          fontFamily: 'Open Sans',
        ),
      ),
      Text(
        info,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          fontFamily: 'Open Sans',
        ),
      ),
    ],
  );
}
