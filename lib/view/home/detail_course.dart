import 'package:ecourse_app/model/data_course.dart';
import 'package:ecourse_app/utils/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DetailCoursePage extends StatelessWidget {
  const DetailCoursePage({super.key, required this.dataDetailCourse});

  final DataCourse dataDetailCourse;

  @override
  Widget build(BuildContext context) {
    // final List<DataCourse> dummyData = dataCourse();
    return Scaffold(
      backgroundColor: bgColor,
      bottomNavigationBar: bottomBar(context),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: bgColor,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: whiteColor,
          ),
        ),
        title: Text(
          'Course Detail',
          style: secondaryTextStyle,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
              vertical: 16,
            ),
            child: Image.asset('assets/save.png'),
          ),
        ],
      ),
      body: SafeArea(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            headerImage(),
            SizedBox(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 20,
                ),
                child: Column(
                  children: [
                    detailCourses(context),
                    expantionCourseContent(),
                    expantionCourseContent(),
                    expantionCourseContent(),
                    expantionCourseContent(),
                    expantionCourseContent(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container expantionCourseContent() {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(12),
        ),
      ),
      child: ExpansionTile(
        title: Text(
          'Rhythm Is the Key to Speaking Proactively',
          style: secondTextStyle.copyWith(
            fontSize: 14,
            fontWeight: semiBold,
            color: textDescriptionColor,
          ),
        ),
        subtitle: Text(
          '5 Lectures • 40 min',
          style: secondTextStyle.copyWith(
            fontSize: 12,
            fontWeight: regular,
            color: greyColor,
          ),
        ),
        children: const [
          ListTileCourseContent(),
          ListTileCourseContent(),
          ListTileCourseContent(),
          ListTileCourseContent(),
          ListTileCourseContent(),
        ],
      ),
    );
  }

  Container detailCourses(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 20,
        top: 10,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          nameCourse(context),
          const SizedBox(
            height: 12,
          ),
          moreInformation(),
          const SizedBox(
            height: 20,
          ),
          instructors(),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 1,
            width: double.infinity,
            color: greyColor.withOpacity(0.2),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'Course description',
            style: secondTextStyle.copyWith(
              fontSize: 16,
              fontWeight: bold,
              color: wtColor,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            dataDetailCourse.description,
            style: secondTextStyle.copyWith(
              fontSize: 14,
              fontWeight: regular,
              color: textDescriptionColor,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'Course content',
            style: secondTextStyle.copyWith(
              fontSize: 16,
              fontWeight: bold,
              color: wtColor,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            children: [
              Text(
                '27 sections • 92 lectures • 12h 39m total length',
                style: secondTextStyle.copyWith(
                  fontSize: 12,
                  fontWeight: regular,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  BottomAppBar bottomBar(BuildContext context) {
    return BottomAppBar(
      color: bgColor,
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 4,
            ),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(
                Radius.circular(12),
              ),
              color: primaryColor,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Price',
                  style: secondTextStyle.copyWith(
                    fontSize: 12,
                  ),
                ),
                Text(
                  dataDetailCourse.price,
                  style: secondTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: bold,
                    color: wtColor,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          GestureDetector(
            onTap: () {},
            child: Container(
              height: 52,
              width: MediaQuery.of(context).size.width / 10 * 6.7,
              decoration: BoxDecoration(
                color: yellowColor,
                borderRadius: const BorderRadius.all(
                  Radius.circular(16),
                ),
              ),
              child: Center(
                child: Text(
                  'Buy Now',
                  style: secondTextStyle.copyWith(
                    color: bgColor,
                    fontSize: 16,
                    fontWeight: bold,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Row instructors() {
    return Row(
      children: [
        Image.asset(
          'assets/avatar1.png',
          height: 40,
        ),
        const SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              dataDetailCourse.instructor,
              style: secondTextStyle.copyWith(
                fontSize: 18,
                fontWeight: bold,
                color: whiteColor,
              ),
            ),
            Text(
              'Experience : 5+ years',
              style: secondTextStyle.copyWith(
                fontSize: 12,
                fontWeight: semiBold,
              ),
            ),
          ],
        ),
        const Spacer(),
        Text(
          '1k+ Enroll',
          style: secondTextStyle.copyWith(
            fontSize: 12,
            fontWeight: semiBold,
          ),
        ),
      ],
    );
  }

  Row moreInformation() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Icon(
              Icons.access_time_filled,
              size: 18,
              color: greyColor,
            ),
            const SizedBox(
              width: 8,
            ),
            Text(
              dataDetailCourse.time,
              style: secondTextStyle.copyWith(
                fontSize: 14,
                fontWeight: regular,
              ),
            ),
          ],
        ),
        Row(
          children: [
            Icon(
              Icons.people,
              size: 18,
              color: greyColor,
            ),
            const SizedBox(
              width: 8,
            ),
            Text(
              '2,568 students',
              style: secondTextStyle.copyWith(
                fontSize: 14,
                fontWeight: regular,
              ),
            ),
          ],
        ),
        Row(
          children: [
            Icon(
              Icons.star,
              size: 18,
              color: greyColor,
            ),
            const SizedBox(
              width: 8,
            ),
            Text(
              dataDetailCourse.rating,
              style: secondTextStyle.copyWith(
                fontSize: 14,
                fontWeight: regular,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Row nameCourse(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width / 10 * 6,
          child: Text(
            dataDetailCourse.name,
            style: titleTextStyle.copyWith(
              fontSize: 19,
              fontWeight: bold,
            ),
          ),
        ),
        const Spacer(),
        Text(
          dataDetailCourse.price,
          style: priceTextStyle.copyWith(
            fontSize: 18,
            fontWeight: bold,
          ),
        ),
      ],
    );
  }

  Column headerImage() {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(
            vertical: 20,
          ),
          height: 285,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                dataDetailCourse.image,
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          height: 5,
          width: 50,
          color: greyColor.withOpacity(0.4),
        ),
      ],
    );
  }
}

class ListTileCourseContent extends StatelessWidget {
  const ListTileCourseContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 10,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '01',
                style: secondTextStyle.copyWith(
                  color: yellowColor,
                  fontSize: 23,
                  fontWeight: bold,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 10 * 5.5,
                    child: Text(
                      'The Power of Inflectionst',
                      style: secondTextStyle.copyWith(
                        fontSize: 14,
                        fontWeight: regular,
                        color: greyColor,
                      ),
                    ),
                  ),
                  Text(
                    '06:32',
                    style: secondTextStyle.copyWith(
                      fontSize: 12,
                      fontWeight: regular,
                      color: greyColor,
                    ),
                  ),
                ],
              ),
              Container(
                height: 32,
                width: 32,
                decoration: BoxDecoration(
                  color: yellowColor,
                  shape: BoxShape.circle,
                ),
                child: const Center(
                  child: Icon(
                    Icons.play_arrow,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
