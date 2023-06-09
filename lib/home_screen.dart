import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:thai_food/item_screen.dart';
//import 'package:flutter/src/widgets/container.dart';
//import 'package:flutter/src/widgets/framework.dart';

class HomeScreen extends StatelessWidget {
  List IconPhoto = [
    "icon_thai-food.png",
    "icon_world-food.png",
    "icon_beer.png",
    "icon_macaron.png",
    "icon_ice-cream.png",
    "icon_vegan.png",
    "icon_cake.png",
    "icon_soft-drink.png",
    "icon_liquor.png",
  ];

  List Titles = [
    "mango Sticky Rice",
    "massaman Curry",
    "pad Thai",
    "panang Curry",
    "som Tam.jpeg",
    "tom Kha",
    "laab",
    "tom kha gai",
    "tom yam kung",
    "phat Kaphrao",
  ];

  List TitlesImages = [
    "mango_Sticky_Rice.jpeg",
    "massaman_Curry.jpeg",
    "pad_Thai.jpeg",
    "panang_Curry.jpeg",
    "som_Tam.jpeg",
    "tom_Kha.jpeg",
    "laab.jpeg",
    "tom-kha-gai.jpeg",
    "tom-yam-kung.jpeg",
    "phat_Kaphrao.jpeg",
  ];
  List DrinkImages = [
    "coconut_water.jpg",
    "nom_yen.jpg",
    "chao_kuai.jpg",
    "cha_yen.jpg",
    "krating_daeng.jpg",
    "nam_manao.jpg",
    "nam_oy.jpg"
  ];
  List Drink = [
    "coconut water",
    "nom yen",
    "chao kuai",
    "cha yen",
    "krating daeng",
    "nam manao",
    "nam oy"
  ];

  List DescriptionDrink = [
    "Local Thai Drink",
    "Thai Pink Milk Tea",
    "Grass Jelly Drink",
    "Thai Iced Tea",
    "Thai Red Bull",
    "Lime Juice",
    "SugarCane Juice"
  ];

  final ItemTitle = TextStyle(
      fontWeight: FontWeight.bold, color: Colors.black87, fontSize: 15);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          top: 40,
          left: 10,
          right: 10,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.sort,
                    size: 40,
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.black87,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child:
                        Icon(Icons.shopping_bag_outlined, color: Colors.white),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding:
                    EdgeInsets.only(top: 10, left: 40, bottom: 10, right: 40),
                child: Text(
                  "THAI 🇹🇭 FOOD & DRINK",
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 28,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  "Discover the best of dishes and drinks in Thailand",
                  style: TextStyle(color: Colors.black54, fontSize: 17),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 60,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: IconPhoto.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                      height: 85,
                      width: 85,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 4,
                              spreadRadius: 2,
                              color: Colors.black54),
                        ],
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Image.asset(
                          IconPhoto[index],
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                height: 260,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: TitlesImages.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Stack(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 30),
                            child: Container(
                              margin: EdgeInsets.symmetric(
                                horizontal: 10,
                              ),
                              height: 250,
                              width: 190,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(30),
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 4,
                                      spreadRadius: 2,
                                      color: Colors.black12),
                                ],
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(9.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      Titles[index],
                                      style: ItemTitle,
                                    ),
                                    SizedBox(height: 7),
                                    Text(
                                      "Thai Food authentic",
                                      style: TextStyle(
                                          color: Colors.black54, fontSize: 15),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("\$3.50"),
                                        Container(
                                          height: 30,
                                          width: 30,
                                          decoration: BoxDecoration(
                                            color: Colors.black12,
                                            borderRadius:
                                                BorderRadius.circular(30),
                                          ),
                                          child: Icon(
                                            Icons.favorite_border,
                                            size: 20,
                                            color: Colors.black54,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 35,
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ItemScreen(),
                                  ),
                                );
                              },
                              child: CircleAvatar(
                                radius: 75,
                                backgroundColor: Colors.white,
                                child: ClipOval(
                                  child: Image.asset(
                                      "assets/${TitlesImages[index]}",
                                      fit: BoxFit.contain,
                                      width: 180,
                                      height: 196),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 113,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: DrinkImages.length,
                  itemBuilder: (context, index) {
                    return Stack(
                      alignment: Alignment.centerLeft,
                      children: [
                        Container(
                          margin:
                              EdgeInsets.only(left: 30, top: 10, bottom: 10),
                          child: Container(
                            height: 120,
                            width: MediaQuery.of(context).size.width / 1.17,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 4,
                                    spreadRadius: 2),
                              ],
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(40),
                                bottomLeft: Radius.circular(40),
                                topRight: Radius.circular(40),
                                bottomRight: Radius.circular(40),
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(left: 15.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    Drink[index],
                                    style: ItemTitle,
                                  ),
                                  Text(
                                    DescriptionDrink[index],
                                    style: TextStyle(
                                        color: Colors.black45, fontSize: 15),
                                  ),
                                  Text(
                                    "\$ 1.50",
                                    style: TextStyle(
                                        color: Colors.black45,
                                        fontWeight: FontWeight.w800),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          child: Padding(
                            padding: EdgeInsets.only(left: 15.0),
                            child: CircleAvatar(
                              radius: 45,
                              backgroundColor: Colors.amber,
                              child: ClipOval(
                                child: Image.asset(
                                  "assets/${DrinkImages[index]}",
                                  fit: BoxFit.cover,
                                  width: 135,
                                  height: 130,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.all(20),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.black87,
          borderRadius: BorderRadius.circular(20),
        ),
        child: GNav(
          activeColor: Colors.white,
          gap: 5,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          padding: EdgeInsets.all(10),
          style: GnavStyle.google,
          haptic: true,
          color: Colors.white70,
          tabBackgroundColor: Colors.black54,
          tabBorderRadius: 20,
          tabs: [
            GButton(
              icon: CupertinoIcons.home,
              text: "Home",
            ),
            GButton(
              icon: Icons.favorite_border,
              text: "Wishlist",
            ),
            GButton(
              icon: Icons.chat_bubble_outline_rounded,
              text: "Chat",
            ),
            GButton(
              icon: Icons.person_outline_outlined,
              text: "Profile",
            ),
          ],
        ),
      ),
    );
  }
}
