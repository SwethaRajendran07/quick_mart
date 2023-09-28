import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  int pageIndex = 0;
  Color customColor = Color(0xFF21D4B4);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'assets/q.png',
                        width: 40,
                        height: 40,
                      ),
                      Text(
                        "uickMart",
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Image.asset(
                        'assets/Search.png',
                        width: 40,
                        height: 40,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Image.asset(
                        'assets/ProfileImage.png',
                        width: 40,
                        height: 40,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Stack(
                children: [
                  Container(
                    child: Image.asset(
                      'assets/Headphone.png',
                      width: 600,
                      height: 160,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 80, left: 18),
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.black,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Text(
                                "30% OFF",
                                style: TextStyle(color: Colors.white, fontSize: 10),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "On Headphones",
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Exclusive Sales",
                                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 22.0),
                                child: Image.asset(
                                  'assets/ProgressIndicators.png',
                                  width: 50,
                                  height: 20,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Categories",
                    style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "SEE ALL",
                    style: TextStyle(color: customColor, fontSize: 10, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 85,
                    height: 70,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), border: Border.all(color: Colors.black12)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/Electronics.png',
                          width: 30,
                          height: 30,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Electronics",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 10,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 85,
                    height: 70,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), border: Border.all(color: Colors.black12)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/Fashion.png',
                          width: 30,
                          height: 30,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Fashion",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 10,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 85,
                    height: 70,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), border: Border.all(color: Colors.black12)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/Furniture.png',
                          width: 30,
                          height: 30,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Furniture",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 10,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 85,
                    height: 70,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), border: Border.all(color: Colors.black12)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/Industrial.png',
                          width: 30,
                          height: 30,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Industrial",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 10,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Latest Products",
                    style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "SEE ALL",
                    style: TextStyle(color: customColor, fontSize: 10, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Stack(
                    children: [
                      Container(
                        // width: 180,
                        // height: 150,
                        // decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              'assets/Shoe.png',
                              width: 175,
                              height: 130,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image.asset(
                                  'assets/ColorsShoe.png',
                                  width: 75,
                                  height: 30,
                                ),
                                Text(
                                  "All 5 Colors",
                                  style: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 10,
                                    decoration: TextDecoration.underline,
                                  ),
                                )
                              ],
                            ),
                            Text(
                              "Nike air jordan retro fa...",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                              ),
                            ),
                            Text(
                              "\$126.00",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                              ),
                            ),
                            Text(
                              "\$186.00",
                              style: TextStyle(
                                color: Colors.black26,
                                fontSize: 15,
                                decoration: TextDecoration.lineThrough, // Apply strikethrough
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 130.0, top: 3),
                        child: Container(
                          child: Image.asset(
                            'assets/Wishlist.png',
                            width: 25,
                            height: 25,
                          ),
                        ),
                      )
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              'assets/Spectacles.png',
                              width: 175,
                              height: 130,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image.asset(
                                  'assets/ColorsSpecs.png',
                                  width: 75,
                                  height: 30,
                                ),
                                Text(
                                  "All 7 Colors",
                                  style: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 10,
                                    decoration: TextDecoration.underline,
                                  ),
                                )
                              ],
                            ),
                            Text(
                              "Classic new black glas...",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                              ),
                            ),
                            Text(
                              "\$8.50",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                              ),
                            ),
                            Text(
                              "\$10.00",
                              style: TextStyle(
                                color: Colors.black26,
                                fontSize: 15,
                                decoration: TextDecoration.lineThrough, // Apply strikethrough
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 130.0, top: 3),
                        child: Container(
                          child: Image.asset(
                            'assets/Wishlist.png',
                            width: 25,
                            height: 25,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Stack(children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/EarPhone.png',
                            width: 175,
                            height: 130,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(
                                'assets/ColorsSpecs.png',
                                width: 75,
                                height: 30,
                              ),
                              Text(
                                "All 8 Colors",
                                style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 10,
                                  decoration: TextDecoration.underline,
                                ),
                              )
                            ],
                          ),
                          Text(
                            "Boat BaseHead Earpho...",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          Text(
                            "\$126.00",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          Text(
                            "\$186.00",
                            style: TextStyle(
                              color: Colors.black26,
                              fontSize: 15,
                              decoration: TextDecoration.lineThrough, // Apply strikethrough
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 130.0, top: 3),
                      child: Container(
                        child: Image.asset(
                          'assets/Wishlist.png',
                          width: 25,
                          height: 25,
                        ),
                      ),
                    ),
                  ]),
                  Stack(
                    children: [
                      Container(
                        // width: 180,
                        // height: 150,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              'assets/HandBag.png',
                              width: 175,
                              height: 130,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image.asset(
                                  'assets/ColorsShoe.png',
                                  width: 75,
                                  height: 30,
                                ),
                                Text(
                                  "All 5 Colors",
                                  style: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 10,
                                    decoration: TextDecoration.underline,
                                  ),
                                )
                              ],
                            ),
                            Text(
                              "Gucci Leather brown han...",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                              ),
                            ),
                            Text(
                              "\$126.00",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                              ),
                            ),
                            Text(
                              "\$186.00",
                              style: TextStyle(
                                color: Colors.black26,
                                fontSize: 15,
                                decoration: TextDecoration.lineThrough, // Apply strikethrough
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 130.0, top: 3),
                        child: Container(
                          child: Image.asset(
                            'assets/Wishlist.png',
                            width: 25,
                            height: 25,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 100,
              ),
              Container(
                height: 100,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              pageIndex = 1;
                            });
                          },
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/Home.png',
                                color: pageIndex == 1 ? Colors.teal[400] : Colors.grey,
                                width: 40,
                                height: 40,
                              ),
                              Text("Home")
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              pageIndex = 2;
                            });
                          },
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/Category.png',
                                color: pageIndex == 2 ? customColor : Colors.grey,
                                width: 40,
                                height: 40,
                              ),
                              Text("Category")
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              pageIndex = 3;
                            });
                          },
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/Shoppingcart.png',
                                color: pageIndex == 3 ? customColor : Colors.grey,
                                width: 40,
                                height: 40,
                              ),
                              Text("My Cart")
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              pageIndex = 4;
                            });
                          },
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/Heart.png',
                                color: pageIndex == 4 ? customColor : Colors.grey,
                                width: 40,
                                height: 40,
                              ),
                              Text("Wishlist")
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              pageIndex = 5;
                            });
                          },
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/Profile.png',
                                color: pageIndex == 5 ? customColor : Colors.grey,
                                width: 40,
                                height: 40,
                              ),
                              Text("Profile")
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Center(
                      child: Image.asset(
                        'assets/HomeIndicator.png',
                        width: 200,
                        // height: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   currentIndex: pageIndex,
      //   onTap: (index) {
      //     setState(() {
      //       pageIndex = index;
      //     });
      //   },
      //   items: [
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         Icons.home,
      //         color: pageIndex == 0 ? Colors.teal[400] : Colors.grey,
      //       ),
      //       label: 'Home',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         Icons.category,
      //         color: pageIndex == 1 ? Colors.teal[400] : Colors.grey,
      //       ),
      //       label: 'Category',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         Icons.shopping_cart,
      //         color: pageIndex == 2 ? Colors.teal[400] : Colors.grey,
      //       ),
      //       label: 'My Cart',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         Icons.favorite,
      //         color: pageIndex == 3 ? Colors.teal[400] : Colors.grey,
      //       ),
      //       label: 'Wishlist',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         Icons.person,
      //         color: pageIndex == 4 ? Colors.teal[400] : Colors.grey,
      //       ),
      //       label: 'Profile',
      //     ),
      //   ],
      // )),
    ));
  }
}
