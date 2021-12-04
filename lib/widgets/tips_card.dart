import 'package:flutter/material.dart';

import '../theme.dart';

class TipsCard extends StatelessWidget {
  final String name;
  final String imgUrl;
  final int tgl;
  final String bulan;
  const TipsCard({
    Key? key,
    required this.name,
    required this.imgUrl,
    required this.bulan,
    required this.tgl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 16),
          width: 80,
          height: 80,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                imgUrl,
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 4,
              ),
              Text(
                name,
                style: blackTextStyle.copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                'Updated $tgl $bulan',
                style: greyTextStyle.copyWith(
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
        ),
        Image.asset(
          'assets/Icon_right.png',
          width: 24,
          height: 24,
        ),
      ],
    );
  }
}
