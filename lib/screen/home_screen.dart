import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  Widget singalProducts() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 5),
        height: 200,
        width: 140,
        decoration: BoxDecoration(
          color: Color(0xffe3f0ef),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Image.asset(
                  'assets/water-supply.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Filtered Water',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Per Bottle/200rs',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.only(left: 15),
                          height: 30,
                          decoration: BoxDecoration(
                            border: Border.all(color: Color(0xff441c1c)),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                  child: Text(
                                'Bottle',
                                style: TextStyle(fontSize: 7),
                              )),
                              Center(
                                child: Icon(
                                  Icons.arrow_drop_down,
                                  size: 20,
                                  color: Colors.black,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 5),
                      Expanded(
                        child: Container(
                          height: 30,
                          decoration: BoxDecoration(
                            border: Border.all(color: Color(0xff441c1c)),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.remove,
                                size: 15,
                                color: Colors.brown,
                              ),
                              Text(
                                '1',
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.brown,
                                    fontWeight: FontWeight.bold),
                              ),
                              Icon(
                                Icons.add,
                                size: 15,
                                color: Colors.brown,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      drawer: Drawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          'Home',
          style: TextStyle(
            color: Colors.black,
            fontSize: 17,
          ),
        ),
        actions: [
          CircleAvatar(
            radius: 12,
            backgroundColor: Color(0xff441c1c),
            child: Icon(
              Icons.search,
              size: 15,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: CircleAvatar(
              radius: 12,
              backgroundColor: Color(0xff441c1c),
              child: Icon(
                Icons.shop,
                size: 15,
                color: Colors.white,
              ),
            ),
          ),
        ],
        backgroundColor: Color(0xfffff4ec),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: ListView(
          children: [
            Container(
              height: 150,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4dMtn0Pjqhb2Vscr4xvh0gt2aexJpKbcNpw&s',
                  ),
                ),
                color: Colors.red,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      child: Column(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(right: 200, bottom: 10),
                            child: Container(
                              height: 40,
                              width: 80,
                              decoration: BoxDecoration(
                                color: Color(0xff441c1c),
                                borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(50),
                                  bottomLeft: Radius.circular(50),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  '50%',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.white,
                                    shadows: [
                                      BoxShadow(
                                        color: Color(0xff441c1c),
                                        blurRadius: 10,
                                        offset: Offset(3, 3),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Text(
                            '30% OFF',
                            style: TextStyle(
                              fontSize: 30,
                              color: Color(0xff441c1c),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                              'Get service with 30% discount',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Available Services'),
                  Text(
                    'View all',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  singalProducts(),
                  singalProducts(),
                  singalProducts(),
                  singalProducts(),
                  singalProducts(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Upcomming Services'),
                  Text(
                    'View all',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  singalProducts(),
                  singalProducts(),
                  singalProducts(),
                  singalProducts(),
                  singalProducts(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
