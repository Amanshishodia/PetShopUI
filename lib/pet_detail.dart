import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'size_config.dart';
import 'app_styles.dart';

class PetDetails extends StatelessWidget {
  final String name;
  final String imagePath;
  final String location;
  final String age;
  final String color;
  final String weight;
  final String description;
  final List<String> photoAlbum;
  const PetDetails(
      {super.key,
      required this.age,
      required this.imagePath,
      required this.location,
      required this.color,
      required this.weight,
      required this.description,
      required this.photoAlbum,
      required this.name});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: kWhite,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          debugPrint('Add to cart button pressed!');
        },
        label: Text(
          'Add to cart',
          style: kSourceSansProSemibold.copyWith(
            color: kBoxShadowColor,
            fontSize: SizeConfig.blockSizeHorizontal! * 4,
          ),
        ),
        icon: SvgPicture.asset(
          'assets/add_to_cart_icon.svg',
        ),
        backgroundColor: kGrey,
        extendedPadding: const EdgeInsets.symmetric(
          vertical: 18,
          horizontal: kPaddingHorizontal,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: SizeConfig.blockSizeVertical! * 50,
              child: Stack(
                children: [
                  Image.asset(
                    imagePath,
                    height: SizeConfig.blockSizeVertical! * 60,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 40,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(42),
                          topRight: Radius.circular(42),
                        ),
                        color: kWhite,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: SizeConfig.blockSizeVertical! * 8,
                        left: SizeConfig.blockSizeHorizontal! * 8,
                      ),
                      child: GestureDetector(
                        onTap: () {
                          debugPrint('Tapped');
                        },
                        child: SvgPicture.asset(
                          'assets/arrow_left_icon.svg',
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: kPaddingHorizontal,
              ),
              transform: Matrix4.translationValues(0, -12, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        name,
                        style: kSourceSansProBold.copyWith(
                          fontSize: SizeConfig.blockSizeHorizontal! * 6,
                          color: kGrey,
                        ),
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Row(
                        children: [
                          SvgPicture.asset(
                            'assets/pin_point_icon.svg',
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Text(
                            location,
                            style: kSourceSansProregular.copyWith(
                              fontSize: SizeConfig.blockSizeHorizontal! * 4,
                              color: kLighterGrey,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      debugPrint('Favorite Button Tapped');
                    },
                    child: SvgPicture.asset(
                      'assets/favorite_icon.svg',
                      width: 30,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: kPaddingHorizontal,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: kPaddingHorizontal,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: kLighterOrange,
                    ),
                    width: SizeConfig.blockSizeHorizontal! * 25,
                    child: Column(
                      children: [
                        Text(
                          age,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: kSourceSansProBold.copyWith(
                            fontSize: SizeConfig.blockSizeHorizontal! * 4,
                            color: kDarkOrange,
                          ),
                        ),
                        Text(
                          'Age',
                          style: kSourceSansProregular.copyWith(
                            fontSize: SizeConfig.blockSizeHorizontal! * 3,
                            color: kLighterGrey,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: kLighterOrange,
                    ),
                    width: SizeConfig.blockSizeHorizontal! * 25,
                    child: Column(
                      children: [
                        Text(
                          color,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: kSourceSansProBold.copyWith(
                            fontSize: SizeConfig.blockSizeHorizontal! * 4,
                            color: kDarkOrange,
                          ),
                        ),
                        Text(
                          'Color',
                          style: kSourceSansProregular.copyWith(
                            fontSize: SizeConfig.blockSizeHorizontal! * 3,
                            color: kLighterGrey,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: kLighterOrange,
                    ),
                    width: SizeConfig.blockSizeHorizontal! * 25,
                    child: Column(
                      children: [
                        Text(
                          weight,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: kSourceSansProBold.copyWith(
                            fontSize: SizeConfig.blockSizeHorizontal! * 4,
                            color: kDarkOrange,
                          ),
                        ),
                        Text(
                          'Weight',
                          style: kSourceSansProregular.copyWith(
                            fontSize: SizeConfig.blockSizeHorizontal! * 3,
                            color: kLighterGrey,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: kPaddingHorizontal,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: kPaddingHorizontal),
              child: Text(
               description ,
                style: kSourceSansProregular.copyWith(
                  color: kLighterGrey,
                  fontSize: SizeConfig.blockSizeHorizontal! * 3.5,
                ),
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: kPaddingHorizontal),
              child: Text(
                'A cute Puppy',
                style: kSourceSansProSemibold.copyWith(
                  color: kGrey,
                  fontSize: SizeConfig.blockSizeHorizontal! * 3.5,
                ),
              ),
            ),
            const SizedBox(
              height: kPaddingHorizontal,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: kPaddingHorizontal,
              ),
              child: Text(
                'Photo Album',
                style: kSourceSansProregular.copyWith(
                  color: kLighterGrey,
                  fontSize: SizeConfig.blockSizeHorizontal! * 3.5,
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: kPaddingHorizontal,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 55,
                    width: SizeConfig.blockSizeHorizontal! * 25,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          'assets/images/dog_marly01.png',
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 55,
                    width: SizeConfig.blockSizeHorizontal! * 25,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        6,
                      ),
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          'assets/images/dog_marly02.png',
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 55,
                    width: SizeConfig.blockSizeHorizontal! * 25,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          'assets/images/dog_marly03.png',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 60,
            ),
          ],
        ),
      ),
    );
  }
}
