import 'package:cozy_app/theme.dart';
import 'package:cozy_app/widgets/city_card.dart';
import 'package:cozy_app/widgets/custom_button_navigation_item.dart';
import 'package:cozy_app/widgets/space_card.dart';
import 'package:cozy_app/widgets/tips_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 30,
          ),
          Text(
            'Explore Now',
            style: blackTextStyle.copyWith(
              fontSize: 24,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 2,
          ),
          Text(
            'Mencari kosan yang cozy',
            style: greyTextStyle.copyWith(
              fontSize: 16,
              fontWeight: FontWeight.w300,
            ),
          ),
        ],
      );
    }

    Widget popularCities() {
      return Container(
        margin: const EdgeInsets.only(
          top: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Popular Cities',
              style: blackTextStyle.copyWith(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            SizedBox(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  CityCard(
                    name: 'Jakarta',
                    imgUrl: 'assets/city1.png',
                  ),
                  CityCard(
                    isPopular: true,
                    name: 'Surabaya',
                    imgUrl: 'assets/city2.png',
                  ),
                  CityCard(
                    name: 'Bali',
                    imgUrl: 'assets/city3.png',
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget recommendedSpace() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Recommended Space',
              style: blackTextStyle.copyWith(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const SpaceCard(
              imgurl: 'assets/space1.png',
              name: 'Kuretakeso Hott',
              price: 52,
              space: 'Banding, Indonesia',
            ),
            const SizedBox(
              height: 30,
            ),
            const SpaceCard(
              isPopular: true,
              imgurl: 'assets/space2.png',
              name: 'Kuretakeso Hott',
              price: 52,
              space: 'Banding, Indonesia',
            ),
            const SizedBox(
              height: 30,
            ),
            const SpaceCard(
              imgurl: 'assets/space3.png',
              name: 'Kuretakeso Hott',
              price: 52,
              space: 'Banding, Indonesia',
            ),
            const SizedBox(
              height: 30,
            ),
            const SpaceCard(
              imgurl: 'assets/space3.png',
              name: 'Kuretakeso Hott',
              price: 52,
              space: 'Banding, Indonesia',
            ),
          ],
        ),
      );
    }

    Widget tips() {
      return Container(
        margin: const EdgeInsets.only(
          top: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Tips & Guidance',
              style: blackTextStyle.copyWith(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            const TipsCard(
              name: 'City Guidelines',
              imgUrl: 'assets/tips1.png',
              tgl: 29,
              bulan: 'Apr',
            ),
            const TipsCard(
              name: 'Jakarta Fairship',
              imgUrl: 'assets/tips2.png',
              tgl: 11,
              bulan: 'Dec',
            ),
            const SizedBox(
              height: 100,
            ),
          ],
        ),
      );
    }

    Widget buttonNavigation() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          margin: const EdgeInsets.only(
            left: 24,
            right: 24,
            bottom: 24,
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: 30,
          ),
          width: double.infinity,
          height: 65,
          decoration: BoxDecoration(
            color: cardColor,
            borderRadius: BorderRadius.circular(23),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              ItemButtonNavigation(
                imgUrl: 'assets/Icon_home.png',
                isActive: true,
              ),
              ItemButtonNavigation(
                imgUrl: 'assets/Icon_mail.png',
              ),
              ItemButtonNavigation(
                imgUrl: 'assets/Icon_card.png',
              ),
              ItemButtonNavigation(
                imgUrl: 'assets/Icon_love.png',
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: Stack(
          children: [
            ListView(
              padding: const EdgeInsets.symmetric(
                horizontal: 24,
              ),
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    title(),
                    popularCities(),
                    recommendedSpace(),
                    tips(),
                  ],
                ),
              ],
            ),
            buttonNavigation(),
          ],
        ),
      ),
    );
  }
}
