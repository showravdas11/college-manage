import 'dart:ffi';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:college_management/Theme/Theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';

class CollegeDetailScreen extends StatefulWidget {
  const CollegeDetailScreen({super.key});

  @override
  State<CollegeDetailScreen> createState() => _CollegeDetailScreenState();
}

class _CollegeDetailScreenState extends State<CollegeDetailScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  List<String> itemImage = [
    "assets/images/img1.jpg",
    "assets/images/img2.jpg",
    "assets/images/img3.jpg",
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 4,
        backgroundColor: MyTheme.primaryColor,
        leading: Container(
          margin: EdgeInsets.only(left: 10),
          child: CircleAvatar(
            backgroundColor: Colors.white,
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                )),
          ),
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 10),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.bookmark_border,
                    color: Colors.black,
                  )),
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/ghjk.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "GHJK Engineering college",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Felis consectetur nulla pharetra praesent hendrerit vulputate viverra. Pellentesque aliquam tempus faucibus est.",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 7, vertical: 5),
                  decoration: BoxDecoration(
                      color: Color(0xFF27C200),
                      borderRadius: BorderRadius.circular(6)),
                  child: Column(
                    children: [
                      Text(
                        "4.3",
                        style: TextStyle(color: Colors.white),
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            child: TabBar(controller: _tabController, tabs: [
              Tab(
                text: "About College",
              ),
              Tab(
                text: "Hostel facility",
              ),
              Tab(
                text: "Q&A",
              ),
              Tab(
                text: "Events",
              ),
            ]),
          ),
          Container(
            width: double.maxFinite,
            height: 300,
            child: TabBarView(controller: _tabController, children: [
              SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Description",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Neque accumsan, scelerisque eget lectus ullamcorper a placerat. Porta cras at pretium varius purus cursus. Morbi justo commodo habitant morbi quis pharetra posuere mauris. Morbi sit risus, diam amet volutpat quis. Nisl pellentesque nec facilisis ultrices.",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Loaction",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 250,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage("assets/images/map.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Student Review",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w700),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: 50,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/student1.jpg"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    width: 50,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                          10), // Adjust the radius as needed
                                      image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/student1.jpg"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    width: 50,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                          10), // Adjust the radius as needed
                                      image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/student1.jpg"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    width: 50,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                          10), // Adjust the radius as needed
                                      image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/student1.jpg"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                width: 80,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(
                                      10), // Adjust the radius as needed
                                ),
                                child: Center(child: Text("12+")),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Card(
                            elevation: 4,
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                              padding: EdgeInsets.all(15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Arun sai",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nec sed lorem nunc varius rutrum eget dolor, quis. Nulla sit magna suscipit tellus malesuada in facilisis a.",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.grey),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: MyTheme.primaryColor,
                            foregroundColor: Colors.white,
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 16),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            elevation: 5,
                          ),
                          child: Text("Apply Now"),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 4),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.grey,
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(5)),
                              child: Row(
                                children: [
                                  Icon(Icons.bed),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "4",
                                  ),
                                ],
                              )),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 4),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.grey,
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(5)),
                              child: Row(
                                children: [
                                  Icon(Icons.bed),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "3",
                                  ),
                                ],
                              )),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 4),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.grey,
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(5)),
                              child: Row(
                                children: [
                                  Icon(Icons.bed),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "2",
                                  ),
                                ],
                              )),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 4),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.grey,
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(5)),
                              child: Row(
                                children: [
                                  Icon(Icons.bed),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "1",
                                  ),
                                ],
                              )),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Column(
                        children: [
                          Container(
                            height: 200,
                            child: CarouselSlider(
                              items: [
                                for (int i = 0; i < itemImage.length; i++)
                                  Container(
                                    height: 50,
                                    alignment: Alignment.center,
                                    margin: EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 30),
                                    decoration: BoxDecoration(
                                      // color: itemImage[i],
                                      image: DecorationImage(
                                        image: AssetImage(itemImage[i]),
                                        fit: BoxFit.cover,
                                      ),

                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.grey,
                                            spreadRadius: 2,
                                            blurRadius: 8)
                                      ],
                                    ),
                                  ),
                              ],
                              options: CarouselOptions(
                                  onPageChanged: (index, reason) {
                                    setState(() {
                                      currentIndex = index;
                                    });
                                  },
                                  autoPlay: true,
                                  padEnds: false),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              for (int i = 0; i < itemImage.length; i++)
                                Container(
                                  height: 13,
                                  width: 13,
                                  margin: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      color: currentIndex == i
                                          ? MyTheme.primaryColor
                                          : Colors.black,
                                      shape: BoxShape.circle),
                                )
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "GHJK Engineering Hostel",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                      "assets/images/location.png",
                                      width: 18,
                                      height: 18,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "Lorem ipsum dolor sit amet, consectetur ",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.grey),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Neque accumsan, scelerisque eget lectus ullamcorper a placerat. Porta cras at pretium varius purus cursus. Morbi justo commodo habitant morbi quis pharetra posuere mauris. Morbi sit risus, diam amet volutpat quis. Nisl pellentesque nec facilisis ultrices.",
                                  style: TextStyle(color: Colors.grey),
                                )
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 7, vertical: 5),
                            decoration: BoxDecoration(
                                color: Color(0xFF27C200),
                                borderRadius: BorderRadius.circular(6)),
                            child: Row(
                              children: [
                                Text(
                                  "4.3",
                                  style: TextStyle(color: Colors.white),
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Facilities",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w700),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Image.asset(
                                "assets/images/university.png",
                                width: 26,
                                height: 26,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text("College in 400mtrs")
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Image.asset(
                                "assets/images/bath.png",
                                width: 26,
                                height: 26,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text("Bathrooms : 2")
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: MyTheme.primaryColor,
                            foregroundColor: Colors.white,
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 16),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            elevation: 5,
                          ),
                          child: Text("Apply Now"),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Text("fsdfsdfsfdfdffsdf"),
              Text("fsdfwfwffwaewfergeagasgagag"),
            ]),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
