import 'package:college_management/Common/CustomCard.dart';
import 'package:college_management/Screens/CollegeScreen/CollegeScreen.dart';
import 'package:college_management/Theme/Theme.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // late String? selectedValue;
  String _selectedValue = 'Bachelor of technology';
  List<String> options = [
    'Bachelor of Technology',
    'Bachelor of Architecture',
    'Pharmacy',
    'Law',
    'Management'
  ];

  void _showBottomSheet() {
    Map<String, IconData> optionIcons = {
      'Bachelor of Technology': Iconsax.teacher,
      'Bachelor of Architecture': Icons.architecture,
      'Pharmacy': Icons.local_pharmacy_outlined,
      'Law': Icons.line_weight,
      'Management': Icons.manage_accounts
    };

    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Options',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.cancel_outlined),
                  )
                ],
              ),
              SizedBox(height: 10),
              Divider(),
              for (String option in options)
                RadioListTile(
                  value: option,
                  groupValue: _selectedValue,
                  onChanged: (value) {
                    setState(() {
                      _selectedValue = value as String;
                    });
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CollegeScreen()));
                  },
                  title: Text(
                    option,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  secondary: Icon(
                    optionIcons[option], // Retrieve icon for the option
                  ),
                  controlAffinity: ListTileControlAffinity.trailing,
                ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(25, 25, 25, 25),
              decoration: BoxDecoration(
                color: MyTheme.primaryColor,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Find your own way",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            "Search in 600 colleges around!",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      IconButton(
                        icon: const Icon(Icons.notifications),
                        onPressed: () {},
                        color: Colors.white,
                        iconSize: 30,
                      )
                    ],
                  ),
                  const SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Container(
                          height: 55,
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Row(
                            children: [
                              Icon(Icons.search,
                                  color: Colors.black.withOpacity(0.5)),
                              const SizedBox(width: 10),
                              Expanded(
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText:
                                        "Search for Colleges, schools....",
                                    hintStyle: TextStyle(
                                      color: Colors.black.withOpacity(0.3),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        padding: const EdgeInsets.all(10),
                        child: const Icon(
                          Icons.mic,
                          size: 30,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),

            //---------------card Part--------------------//
            Column(
              children: [
                CustomCard(
                  title: "Top Colleges",
                  description:
                      "Search through thousands of accredited colleges and universities online to find the right one for you.  Apply in 3 min, and connect with your future.",
                  imageAsset: "assets/images/graduate.jpg",
                  onTap: () {
                    _showBottomSheet();
                  },
                ),
                SizedBox(
                  height: 15,
                ),
                CustomCard(
                  title: "Top Schools",
                  description:
                      "Searching for the best school for you just got easier! With our Advanced School Search, you can easily filter out the schools that are fit for you.",
                  imageAsset: "assets/images/kids.jpg",
                  onTap: () {
                    _showBottomSheet();
                  },
                ),
                SizedBox(
                  height: 13,
                ),
                CustomCard(
                  title: "Exams",
                  description:
                      "Find an end to end information about the exams that are happening in India",
                  imageAsset: "assets/images/exam.jpg",
                  onTap: () {
                    _showBottomSheet();
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
