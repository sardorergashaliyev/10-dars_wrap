import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(8),
              child: Text('Cards'),
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                ),
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 180,
                    width: 180,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 178, 197, 213),
                        border: Border.all(
                            color: const Color.fromARGB(255, 171, 188, 203))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(bottom: 45),
                          child: Icon(
                            Icons.photo,
                            color: Color.fromARGB(255, 136, 143, 149),
                            size: 30,
                          ),
                        ),
                        Container(
                          height: 50,
                          width: 200,
                          color: const Color.fromARGB(255, 255, 255, 255),
                          child: const Center(
                              child: Text(
                            'Product name',
                            style: TextStyle(
                                color: Color.fromARGB(255, 119, 133, 145),
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                          )),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
