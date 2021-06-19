import 'package:flutter/material.dart';
import 'package:package_trip/theme.dart';
import 'package:package_trip/widgets/trip_option.dart';

class TripPage extends StatelessWidget {
  const TripPage({Key? key}) : super(key: key);

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
                    'assets/icon_trip.png',
                  ),
                ),
              ),
            ),
            Text(
              'Trip',
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
          'Whom You are Planning\nTo Travel With?',
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
          TripOption(
            title: 'Solo Trip',
            subtitle: 'Suitable for you need a calm situation',
          ),
          TripOption(
            title: 'Family Trip',
            subtitle: 'Suitable for Make Perfect Memory',
            isSelected: true,
          ),
          TripOption(
            title: 'Couples Trip',
            subtitle: 'Suitable for spending time with loved ones',
          ),
          TripOption(
            title: 'Company Trip',
            subtitle: 'Suitable for refreshing your office mind',
          ),
        ],
      );
    }

    Widget buildButton() {
      return Container(
        height: 55,
        width: double.infinity,
        margin: EdgeInsets.only(bottom: defaultMargin),
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
                'Continue to Hotels',
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
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildHeader(),
            buildTitle(),
            buildOptions(),
            Spacer(),
            buildButton(),
          ],
        ),
      ),
    );
  }
}
