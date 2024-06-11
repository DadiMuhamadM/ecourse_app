import 'package:ecourse_app/utils/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: ListView(
          children: [
            headerProfile(context),
            tittleProfile(title: 'Account settings'),
            Container(
              height: 340,
              padding: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 20,
              ),
              margin: const EdgeInsets.only(
                right: 30,
                left: 30,
                bottom: 20,
              ),
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: const BorderRadius.all(
                  Radius.circular(12),
                ),
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ListAccountSetting(
                    image: 'assets/profile_icon.png',
                    text: 'Personal information',
                  ),
                  ListAccountSetting(
                    image: 'assets/credit cards.png',
                    text: 'Payments and payouts',
                  ),
                  ListAccountSetting(
                    image: 'assets/notification.png',
                    text: 'Notifications',
                  ),
                  ListAccountSetting(
                    image: 'assets/linear-book.png',
                    text: 'My all courses',
                  ),
                  ListAccountSetting(
                    image: 'assets/linear-crown.png',
                    text: 'My plan',
                  ),
                  ListAccountSetting(
                    image: 'assets/linear-lock.png',
                    text: 'Change password',
                  ),
                ],
              ),
            ),
            tittleProfile(title: 'Services'),
            Container(
              height: 180,
              padding: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 20,
              ),
              margin: const EdgeInsets.only(
                right: 30,
                left: 30,
                bottom: 20,
              ),
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: const BorderRadius.all(
                  Radius.circular(12),
                ),
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ListAccountSetting(
                    image: 'assets/linear-shield-security.png',
                    text: 'Privacy policy',
                  ),
                  ListAccountSetting(
                    image: 'assets/linear-note.png',
                    text: 'Terms & Conditions',
                  ),
                  ListAccountSetting(
                    image: 'assets/Line-Info.png',
                    text: 'About us',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding tittleProfile({required String title}) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
      ),
      child: Container(
        margin: const EdgeInsets.only(
          bottom: 20,
        ),
        child: Text(
          title,
          style: secondTextStyle.copyWith(
            fontSize: 14,
            fontWeight: semiBold,
          ),
        ),
      ),
    );
  }

  Container headerProfile(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 20,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 30,
      ),
      height: MediaQuery.of(context).size.height / 10 * 1.5,
      decoration: BoxDecoration(
        color: primaryColor,
      ),
      child: Row(
        children: [
          Image.asset('assets/avatar1.png'),
          const SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Christopher White',
                style: titleTextStyle.copyWith(
                  fontSize: 23,
                  fontWeight: medium,
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                'Show Profile',
                style: priceTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: semiBold,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class ListAccountSetting extends StatelessWidget {
  const ListAccountSetting({
    super.key,
    required this.text,
    required this.image,
  });
  final String text;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          image,
          height: 24,
        ),
        const SizedBox(
          width: 16,
        ),
        Text(
          text,
          style: secondTextStyle.copyWith(
            fontSize: 16,
            fontWeight: bold,
            color: whiteColor,
          ),
        ),
        const Spacer(),
        Icon(
          Icons.arrow_forward_ios,
          size: 16,
          color: greyColor,
        ),
      ],
    );
  }
}
