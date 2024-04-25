import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:college_management/Theme/Theme.dart';

class HostelFacility extends StatefulWidget {
  final List<String> itemImage;

  const HostelFacility({
    Key? key,
    required this.itemImage,
  }) : super(key: key);

  @override
  State<HostelFacility> createState() => _HostelFacilityState();
}

class _HostelFacilityState extends State<HostelFacility> {
  int currentIndex = 0;
  int containerIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      containerIndex = 0;
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                    decoration: BoxDecoration(
                      color: containerIndex == 0
                          ? MyTheme.primaryColor
                          : Colors.transparent,
                      border: Border.all(
                        color: containerIndex == 0
                            ? MyTheme.primaryColor
                            : Colors.grey,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.bed,
                          color:
                              containerIndex == 0 ? Colors.white : Colors.black,
                        ),
                        SizedBox(width: 5),
                        Text(
                          "4",
                          style: TextStyle(
                            color: containerIndex == 0
                                ? Colors.white
                                : Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      containerIndex = 1;
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                    decoration: BoxDecoration(
                      color: containerIndex == 1
                          ? MyTheme.primaryColor
                          : Colors.transparent,
                      border: Border.all(
                        color: containerIndex == 1
                            ? MyTheme.primaryColor
                            : Colors.grey,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.bed,
                          color:
                              containerIndex == 1 ? Colors.white : Colors.black,
                        ),
                        SizedBox(width: 5),
                        Text(
                          "3",
                          style: TextStyle(
                            color: containerIndex == 1
                                ? Colors.white
                                : Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      containerIndex = 2;
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                    decoration: BoxDecoration(
                      color: containerIndex == 2
                          ? MyTheme.primaryColor
                          : Colors.transparent,
                      border: Border.all(
                        color: containerIndex == 2
                            ? MyTheme.primaryColor
                            : Colors.grey,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.bed,
                          color:
                              containerIndex == 2 ? Colors.white : Colors.black,
                        ),
                        SizedBox(width: 5),
                        Text(
                          "2",
                          style: TextStyle(
                            color: containerIndex == 2
                                ? Colors.white
                                : Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      containerIndex = 3;
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                    decoration: BoxDecoration(
                      color: containerIndex == 3
                          ? MyTheme.primaryColor
                          : Colors.transparent,
                      border: Border.all(
                        color: containerIndex == 3
                            ? MyTheme.primaryColor
                            : Colors.grey,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.bed,
                          color:
                              containerIndex == 3 ? Colors.white : Colors.black,
                        ),
                        SizedBox(width: 5),
                        Text(
                          "1",
                          style: TextStyle(
                            color: containerIndex == 3
                                ? Colors.white
                                : Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Column(
              children: [
                Container(
                  height: 200,
                  child: CarouselSlider(
                    items: [
                      for (int i = 0; i < widget.itemImage.length; i++)
                        Container(
                          height: 50,
                          alignment: Alignment.center,
                          margin: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 30),
                          decoration: BoxDecoration(
                            // color: itemImage[i],
                            image: DecorationImage(
                              image: AssetImage(widget.itemImage[i]),
                              fit: BoxFit.cover,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                spreadRadius: 2,
                                blurRadius: 8,
                              )
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
                      padEnds: false,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for (int i = 0; i < widget.itemImage.length; i++)
                      Container(
                        height: 13,
                        width: 13,
                        margin: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: currentIndex == i
                              ? MyTheme.primaryColor
                              : Colors.black,
                          shape: BoxShape.circle,
                        ),
                      )
                  ],
                )
              ],
            ),
            SizedBox(height: 10),
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
                            fontSize: 16, fontWeight: FontWeight.w700),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Image.asset(
                            "assets/images/location.png",
                            width: 18,
                            height: 18,
                          ),
                          SizedBox(width: 5),
                          Text(
                            "Lorem ipsum dolor sit amet, consectetur ",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Colors.grey),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Neque accumsan, scelerisque eget lectus ullamcorper a placerat. Porta cras at pretium varius purus cursus. Morbi justo commodo habitant morbi quis pharetra posuere mauris. Morbi sit risus, diam amet volutpat quis. Nisl pellentesque nec facilisis ultrices.",
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 7, vertical: 5),
                  decoration: BoxDecoration(
                    color: Color(0xFF27C200),
                    borderRadius: BorderRadius.circular(6),
                  ),
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
            SizedBox(height: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Facilities",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Image.asset(
                      "assets/images/university.png",
                      width: 26,
                      height: 26,
                    ),
                    SizedBox(width: 10),
                    Text("College in 400mtrs")
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Image.asset(
                      "assets/images/bath.png",
                      width: 26,
                      height: 26,
                    ),
                    SizedBox(width: 10),
                    Text("Bathrooms : 2")
                  ],
                )
              ],
            ),
            SizedBox(height: 10),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: MyTheme.primaryColor,
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 5,
                ),
                child: Text("Apply Now"),
              ),
            ),
            SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}
