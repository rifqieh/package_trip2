import 'package:flutter/material.dart';
import 'package:package_trip/theme.dart';
import 'package:package_trip/widgets/hotel_option.dart';

class HotelPage extends StatelessWidget {
  const HotelPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget buildHeader() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
        ),
        child: Row(
          children: [
            Container(
              height: 50,
              width: 50,
              margin: EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/icon_hotel.png',
                  ),
                ),
              ),
            ),
            Text(
              'Hotels',
              style: whiteTextStyle.copyWith(
                fontSize: 24,
                fontWeight: medium,
              ),
            ),
          ],
        ),
      );
    }

    Widget buildTitle() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Text(
          'Select the hotel you\nwant to stay in',
          style: whiteTextStyle.copyWith(
            fontSize: 24,
            fontWeight: medium,
          ),
        ),
      );
    }

    Widget buildOptions() {
      return Column(
        children: [
          HotelOption(
            title: 'Standout Hotel',
            location: 'Jakarta, Indonesia',
            imageUrl: 'assets/image_hotel1.png',
            price: 500,
            rating: 5,
            isSelected: true,
          ),
          HotelOption(
            title: 'Twins Hotel',
            location: 'Bandung, Indonesia',
            imageUrl: 'assets/image_hotel2.png',
            price: 375,
            rating: 4,
            isSelected: false,
          ),
        ],
      );
    }

    Widget buildButton() {
      return Container(
        height: 55,
        width: double.infinity,
        margin: EdgeInsets.only(top: 40, bottom: defaultMargin),
        child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            backgroundColor: kPurpleColor,
            padding: EdgeInsets.symmetric(horizontal: 18),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Continue to Payment',
                style: whiteTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: semiBold,
                ),
              ),
              Icon(
                Icons.arrow_right_alt,
                color: kWhiteColor,
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        children: [
          buildHeader(),
          buildTitle(),
          buildOptions(),
          buildButton(),
        ],
      ),
    );
  }
}
