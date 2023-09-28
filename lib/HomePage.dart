import 'package:flutter/material.dart';
import 'package:quick_mart/customWidget/logo_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  int pageIndex = 0;
  Color customColor = const Color(0xFF21D4B4);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: 0,
            showUnselectedLabels: true,
            unselectedItemColor: Colors.grey,
            selectedItemColor: Colors.black,
            items: [
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/Home.png',
                  color: customColor,
                  height: 36,
                  width: 34,
                ),
                label: "Home",
              ),
              BottomNavigationBarItem(
                  label: "Categories",
                  icon: Image.asset(
                    'assets/Category.png',
                    height: 36,
                    width: 34,
                  )),
              BottomNavigationBarItem(
                  label: "My Cart",
                  icon: Image.asset(
                    'assets/Shoppingcart.png',
                    height: 36,
                    width: 34,
                  )),
              BottomNavigationBarItem(
                  label: "Wishlist",
                  icon: Image.asset(
                    'assets/Heart.png',
                    height: 36,
                    width: 34,
                  )),
              BottomNavigationBarItem(
                  label: "Profile",
                  icon: Image.asset(
                    'assets/Profile.png',
                    height: 36,
                    width: 34,
                  )),
            ]),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 10),
                  appBar(),
                  const SizedBox(
                    height: 30,
                  ),
                  bannerWidget(),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
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
                      categoryWidget('assets/Electronics.png', "Electronics"),
                      categoryWidget('assets/Fashion.png', "Fashion"),
                      categoryWidget('assets/Furniture.png', "Furniture"),
                      categoryWidget('assets/Industrial.png', "Industrial"),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      latestProductWidget('assets/Shoe.png', "Nike air jordan retro fa...", "\$126.00", "\$186.00",
                          'assets/ColorsShoe.png', "All 5 Colors"),
                      latestProductWidget('assets/Spectacles.png', "Classic new black glas...", "\$8.50", "\$10.00",
                          'assets/ColorsSpecs.png', "All 7 Colors"),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      latestProductWidget('assets/EarPhone.png', "Boat BaseHead Earpho...", "\$126.00", "\$186.00",
                          'assets/ColorsSpecs.png', "All 8 Colors"),
                      latestProductWidget('assets/HandBag.png', "Gucci Leather brown han...", "\$126.00", "\$186.00",
                          'assets/ColorsShoe.png', "All 5 Colors"),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ));
  }

  Stack bannerWidget() {
    return Stack(
      children: [
        Image.asset(
          'assets/Headphone.png',
          height: 180,
          fit: BoxFit.fitWidth,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 80, left: 18),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.black,
                ),
                child: const Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Text(
                    "30% OFF",
                    style: TextStyle(color: Colors.white, fontSize: 10),
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                "On Headphones",
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),
              const SizedBox(
                height: 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
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
        )
      ],
    );
  }

  Row appBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        logoWidget(),
        Row(
          children: [
            Image.asset(
              'assets/Search.png',
              width: 40,
              height: 26,
            ),
            const SizedBox(
              width: 10,
            ),
            Image.asset(
              'assets/ProfileImage.png',
              width: 40,
              height: 40,
            ),
          ],
        ),
      ],
    );
  }

  Widget latestProductWidget(String img, String title, String price, String mrp, String colorImg, String colors) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Stack(
          children: [
            Image.asset(
              img,
              width: 180,
              height: 150,
            ),
            Positioned(
              right: 12,
              top: 12,
              child: Image.asset(
                'assets/Wishlist.png',
                width: 25,
                height: 25,
              ),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              colorImg,
              width: 75,
              height: 30,
            ),
            const SizedBox(
              width: 50.0,
            ),
            Text(
              colors,
              style: const TextStyle(
                color: Colors.black54,
                fontSize: 10,
                decoration: TextDecoration.underline,
              ),
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 150,
              height: 50,
              child: RichText(
                textAlign: TextAlign.left,
                text: TextSpan(
                  text: title,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                        text: price,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        )),
                  ],
                ),
              ),
            ),
            Text(
              mrp,
              style: const TextStyle(
                color: Colors.black26,
                fontSize: 15,
                decoration: TextDecoration.lineThrough, // Apply strikethrough
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget categoryWidget(String img, String title) {
    return Container(
      width: 85,
      height: 70,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), border: Border.all(color: Colors.black12)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            img,
            width: 30,
            height: 30,
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            title,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 10,
            ),
          )
        ],
      ),
    );
  }
}
