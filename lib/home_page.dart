import 'package:wannawatch/detail_page.dart';
import 'package:flutter/material.dart';
import 'package:wannawatch/watch.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const List<String> imagePaths = [
    'images/Moving.jpg',
    'images/Jirisan.jpg',
    'images/WTWIF.jpg',
    'images/2521.jpg',
    'images/Samdalri.jpg',
    'images/HometownCCC.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('wannawatch'),
        titleTextStyle: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w900,
          fontFamily: 'Montserrat',
          color: Color.fromARGB(255, 255, 255, 255),
        ),
        backgroundColor: Color.fromARGB(255, 181, 90, 90),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Judul
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  'Recently Watched',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Open Sans',
                  ),
                ),
              ),
              
              // Poster Recently Watched
              SizedBox(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: imagePaths.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Image.asset(
                        imagePaths[index],
                        fit: BoxFit.contain,
                      ),
                    );
                  },
                ),
              ),

              // Text buku
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  'Recommendation',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Open Sans',
                  ),
                ),
              ),

              // List Buku
              ListView.builder(
                itemCount: listWatch.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  final watch = listWatch[index];
                  return GestureDetector(
                    onTap: () {
                      // Pindah Halaman
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailPage(watch: watch),
                        ),
                      );
                    },
                    child: Container(
                      width: double.infinity,
                      height: 90,
                      padding: const EdgeInsets.only(
                        left: 3,
                        right: 3,
                        top: 8,
                        bottom: 8,
                      ),
                      margin: const EdgeInsets.only(bottom: 10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 6,
                            offset: Offset(0, 1),
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          Image.asset(watch.image, width: 64),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                watch.name,
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Open Sans',
                                ),
                              ),
                              Text(
                                watch.genre,
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Open Sans',
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
