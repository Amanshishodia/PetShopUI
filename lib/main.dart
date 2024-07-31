import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

import 'package:pet_shop/app_styles.dart';
import 'package:pet_shop/cart_page.dart';

import 'package:pet_shop/pet_detail.dart';
import 'package:pet_shop/size_config.dart';
import 'package:pet_shop/user_profile.dart';
import 'package:pet_shop/util/pet_data.dart';

import 'package:flutter/services.dart';

void main() {
  // Ensure that widget binding is initialized
  WidgetsFlutterBinding.ensureInitialized();

  // Set the app to full-screen mode
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;
  final List<Widget> _pages = [
    const HomeScreen(),
    const CartPage(),
    const UserPage(),
  ];

  void _onTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // routeInformationParser: MyAppRoute().router.routeInformationParser,
        // routerDelegate: MyAppRoute().router.routerDelegate,
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: _pages[_selectedIndex],
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.white,
            items: [
              BottomNavigationBarItem(
                icon: _selectedIndex == 0
                    ? SvgPicture.asset('assets/home_selected.svg')
                    : SvgPicture.asset('assets/home_unselected.svg'),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: _selectedIndex == 1
                    ? SvgPicture.asset('assets/cart_selected.svg')
                    : SvgPicture.asset('assets/cart_unselected.svg'),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: _selectedIndex == 2
                    ? SvgPicture.asset('assets/profile_selected.svg')
                    : SvgPicture.asset('assets/profile_unselected.svg'),
                label: '',
              ),
            ],
            currentIndex: _selectedIndex,
            onTap: _onTap,
          ),
        ));
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    List<Pet> dogs_details = [
      Pet(
        name: "Marly",
        imagePath: "assets/images/dog_marly.png",
        location: "New York, USA",
        age: "2 years",
        color: "Brown",
        weight: "15 kg",
        description: "A friendly dog.",
        photoAlbum: [
          "assets/images/dog_marly01.png",
          "assets/images/dog_marly02.png",
          "assets/images/dog_marly03.png",
        ],
      ),
      Pet(
        name: "walt",
        imagePath: "assets/images/dog_walt.png",
        location: "New York, USA",
        age: "5 years",
        color: "White",
        weight: "15 kg",
        description: "A friendly dog.",
        photoAlbum: [
          "assets/images/dog_marly01.png",
          "assets/images/dog_marly02.png",
          "assets/images/dog_marly03.png",
        ],
      ),
      Pet(
        name: "cocoa",
        imagePath: "assets/images/dog_cocoa.png",
        location: "New York, USA",
        age: "3 years",
        color: "Brown",
        weight: "15 kg",
        description: "A friendly dog.",
        photoAlbum: [
          "assets/images/dog_marly01.png",
          "assets/images/dog_marly02.png",
          "assets/images/dog_marly03.png",
        ],
      ),

      // Add more dogs_details here
    ];
    List<Pet> cat_details = [
      Pet(
        name: "Alyx",
        imagePath: "assets/images/cat_alyx.png",
        location: "Texus, USA",
        age: "1 years",
        color: "Brown",
        weight: "15 kg",
        description: "A friendly dog.",
        photoAlbum: [
          "assets/images/dog_marly01.png",
          "assets/images/dog_marly02.png",
          "assets/images/dog_marly03.png",
        ],
      ),
      Pet(
        name: "Brook",
        imagePath: "assets/images/cat_brook.png",
        location: "New York, USA",
        age: "5 years",
        color: "White",
        weight: "15 kg",
        description: "A friendly dog.",
        photoAlbum: [
          "assets/images/dog_marly01.png",
          "assets/images/dog_marly02.png",
          "assets/images/dog_marly03.png",
        ],
      ),
      Pet(
        name: "Marly",
        imagePath: "assets/images/cat_marly.png",
        location: "New York, USA",
        age: "3 years",
        color: "Brown",
        weight: "15 kg",
        description: "A friendly dog.",
        photoAlbum: [
          "assets/images/dog_marly01.png",
          "assets/images/dog_marly02.png",
          "assets/images/dog_marly03.png",
        ],
      ),

      // Add more dogs_details here
    ];

    List<String> dogs = [
      'dog_marly.png',
      'dog_cocoa.png',
      'dog_walt.png',
    ];
    List<String> cats = [
      'cat_alyx.png',
      'cat_brook.png',
      'cat_marly.png',
    ];
    List<String> dogsName = [
      'Marly',
      'Cocoa',
      'Walt',
    ];

    List<String> catsName = [
      'Alyx',
      'Brook',
      'Marly',
    ];
    return SafeArea(
      child: ListView(
        children: [
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: kPaddingHorizontal,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/nav_icon.svg',
                  width: 18,
                ),
                const CircleAvatar(
                  radius: 20,
                  backgroundColor: kRed,
                  backgroundImage: NetworkImage(
                    'https://cdn3d.iconscout.com/3d/premium/thumb/boy-avatar-6299533-5187865.png',
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 19,
          ),
          SizedBox(
            height: 200,
            child: Stack(
              children: [
                Positioned(
                  left: 10,
                  top: 0,
                  right: 10,
                  bottom: 0,
                  child: Image.asset(
                    'assets/images/welcome_message.png',
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  left: SizeConfig.blockSizeHorizontal! * 38,
                  top: 0,
                  bottom: 0,
                  right: 0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hello',
                            style: kSourceSansProLight.copyWith(
                              fontSize: SizeConfig.blockSizeHorizontal! * 5.5,
                              color: kBlack,
                            ),
                          ),
                          const SizedBox(
                            width: 6,
                          ),
                          Text(
                            'Osama',
                            style: kSourceSansProMedium.copyWith(
                              fontSize: SizeConfig.blockSizeHorizontal! * 5.5,
                              color: kBlack,
                            ),
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Text(
                            '👋',
                            style: kSourceSansProMedium.copyWith(
                              fontSize: SizeConfig.blockSizeHorizontal! * 3.5,
                              color: kBlack,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Ready for an amazing and lucky experience 🐈 🐕',
                        style: kSourceSansProregular.copyWith(
                          fontSize: SizeConfig.blockSizeHorizontal! * 3.5,
                          color: kBlack,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 30,
            padding: const EdgeInsets.symmetric(horizontal: kPaddingHorizontal),
            child: Row(
              children: [
                Text(
                  'Dogs',
                  style: kSourceSansProBold.copyWith(
                    fontSize: SizeConfig.blockSizeHorizontal! * 6,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  '🐕',
                  style: kSourceSansProBold.copyWith(
                    fontSize: SizeConfig.blockSizeHorizontal! * 3,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          SizedBox(
            height: 169,
            child: ListView.builder(
              itemCount: dogs.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PetDetails(
                          name: dogs_details[index].name,
                          imagePath: dogs_details[index].imagePath,
                          location: dogs_details[index].location,
                          age: dogs_details[index].age,
                          color: dogs_details[index].color,
                          weight: dogs_details[index].weight,
                          description: dogs_details[index].description,
                          photoAlbum: dogs_details[index].photoAlbum,
                        ),
                      ),
                    );
                  },
                  child: Container(
                    height: 169,
                    width: 150,
                    margin: EdgeInsets.only(
                      left: index == 0 ? 30 : 15,
                      right: index == dogs.length - 1 ? 30 : 0,
                    ),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(kBorderRadiusList),
                      color: kWhite,
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 14,
                            offset: const Offset(0, 3),
                            color: kBoxShadowColor.withOpacity(
                              0.18,
                            ))
                      ],
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 80,
                          width: 150,
                          child: ClipRRect(
                            borderRadius:
                                BorderRadius.circular(kBorderRadiusList),
                            child: Image.asset(
                              'assets/images/${dogs[index]}',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: SizeConfig.blockSizeVertical! * 2,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.5),
                                color: kLightOrange,
                              ),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 7,
                              ),
                              child: const Center(
                                child: Text('Banana'),
                              ),
                            ),
                            const Icon(
                              Icons.favorite_outline,
                              color: kRed,
                              size: 16,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Row(
                          children: [
                            Text(
                              dogsName[index],
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: kSourceSansProBold.copyWith(
                                fontSize: SizeConfig.blockSizeHorizontal! * 3,
                                color: kGrey,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        Row(
                          children: [
                            Text(
                              '17 jun 2021',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: kSourceSansProregular.copyWith(
                                fontSize: SizeConfig.blockSizeHorizontal! * 2,
                                color: kLightGrey,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            height: 30,
            padding: const EdgeInsets.symmetric(horizontal: kPaddingHorizontal),
            child: Row(
              children: [
                Text(
                  'Cats',
                  style: kSourceSansProBold.copyWith(
                    fontSize: SizeConfig.blockSizeHorizontal! * 6,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  '🐈',
                  style: kSourceSansProBold.copyWith(
                    fontSize: SizeConfig.blockSizeHorizontal! * 3,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          SizedBox(
            height: 169,
            child: ListView.builder(
              itemCount: cats.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PetDetails(
                          name: cat_details[index].name,
                          imagePath: cat_details[index].imagePath,
                          location: cat_details[index].location,
                          age: cat_details[index].age,
                          color: cat_details[index].color,
                          weight: cat_details[index].weight,
                          description: cat_details[index].description,
                          photoAlbum: cat_details[index].photoAlbum,
                        ),
                      ),
                    );
                  },
                  child: Container(
                    height: 169,
                    width: 150,
                    margin: EdgeInsets.only(
                      left: index == 0 ? 30 : 15,
                      right: index == cats.length - 1 ? 30 : 0,
                    ),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(kBorderRadiusList),
                      color: kWhite,
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 14,
                            offset: const Offset(0, 3),
                            color: kBoxShadowColor.withOpacity(
                              0.18,
                            ))
                      ],
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 80,
                          width: 150,
                          child: ClipRRect(
                            borderRadius:
                                BorderRadius.circular(kBorderRadiusList),
                            child: Image.asset(
                              'assets/images/${cats[index]}',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: SizeConfig.blockSizeVertical! * 2,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.5),
                                color: kLightOrange,
                              ),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 7,
                              ),
                              child: const Center(
                                child: Text(
                                  'Cherry',
                                  style: TextStyle(),
                                ),
                              ),
                            ),
                            const Icon(
                              Icons.favorite_outline,
                              color: kRed,
                              size: 16,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Row(
                          children: [
                            Text(
                              catsName[index],
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: kSourceSansProBold.copyWith(
                                fontSize: SizeConfig.blockSizeHorizontal! * 3,
                                color: kGrey,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        Row(
                          children: [
                            Text(
                              '17 jun 2021',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: kSourceSansProregular.copyWith(
                                fontSize: SizeConfig.blockSizeHorizontal! * 2,
                                color: kLightGrey,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
