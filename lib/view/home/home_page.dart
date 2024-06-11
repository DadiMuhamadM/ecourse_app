import 'package:ecourse_app/model/data_course.dart';
import 'package:ecourse_app/utils/theme.dart';
import 'package:ecourse_app/view/home/widget/categorys.dart';
import 'package:ecourse_app/view/home/widget/courses.dart';
import 'package:ecourse_app/view/home/widget/sub_tittle.dart';
import 'package:ecourse_app/view/home/widget/suggestions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final List<DataCourse> dummyData = dataCourse();
    return Scaffold(
      backgroundColor: bgColor,
      body: Padding(
        padding: const EdgeInsets.only(
          left: 24,
          right: 24,
          top: 20,
          bottom: 12,
        ),
        child: ListView(
          children: [
            heading(context),
            searchButton(),
            categories(),
            const SubTittle(
              subText: 'Popular Course',
            ),
            SizedBox(
              height: 300,
              child: Courses(
                dummyDataCourse: dummyData,
              ),
            ),
            const SubTittle(
              subText: 'Suggestions for you',
            ),
            const Suggestions(),
            instructors(),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BestInstructors(),
                BestInstructors(),
                BestInstructors(),
                BestInstructors(),
                BestInstructors(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Container instructors() {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SubTittle(subText: 'Our best instructors'),
          Text(
            'see all',
            style: priceTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          )
        ],
      ),
    );
  }

  SingleChildScrollView categories() {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Categorys(
            image: 'assets/finance.png',
            textCategory: 'Finance & Accounting',
          ),
          Categorys(
            image: 'assets/music.png',
            textCategory: 'Music',
          ),
          Categorys(
            image: 'assets/coding.png',
            textCategory: 'Programming',
          ),
          Categorys(
            image: 'assets/design.png',
            textCategory: 'Design',
          ),
          Categorys(
            image: 'assets/health.png',
            textCategory: 'Healty & fitness',
          ),
          Categorys(
            image: 'assets/marketing.png',
            textCategory: 'Marketing',
          ),
        ],
      ),
    );
  }

  Container heading(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: Row(
        children: [
          SizedBox(
            height: 60,
            width: MediaQuery.of(context).size.width / 5 * 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hey Eva Febiola',
                  style: titleTextStyle.copyWith(
                    fontSize: 23,
                    fontWeight: bold,
                  ),
                ),
                Text(
                  'Find a course you want to learn',
                  style: secondTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: regular,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          Image.asset(
            'assets/notif.png',
            height: 30,
          )
        ],
      ),
    );
  }

  Container searchButton() {
    return Container(
      margin: const EdgeInsets.only(bottom: 30),
      height: 38,
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: SizedBox(
              height: 30,
              child: Icon(
                Icons.search,
                color: greyColor,
              ),
            ),
          ),
          Expanded(
            child: TextField(
              style: secondTextStyle.copyWith(
                fontSize: 14,
                color: whiteColor,
              ),
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Search your course',
                hintStyle: secondTextStyle.copyWith(
                  fontSize: 14,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class BestInstructors extends StatelessWidget {
  const BestInstructors({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(
            vertical: 10,
          ),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: primaryColor,
                width: 2,
              ),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                'assets/avatar1.png',
                height: 48,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 5 * 3.6,
                height: MediaQuery.of(context).size.height / 10 * 0.8,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Monique Haley',
                      style: secondTextStyle.copyWith(
                        fontSize: 14,
                        fontWeight: semiBold,
                        color: whiteColor,
                      ),
                    ),
                    Text(
                      'Adobe Certified Instructor & Adobe Certified',
                      overflow: TextOverflow.ellipsis,
                      style: secondTextStyle.copyWith(
                        fontSize: 14,
                        fontWeight: regular,
                        color: greyColor2,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          '49,569 students',
                          style: secondTextStyle.copyWith(
                            fontSize: 12,
                            fontWeight: regular,
                            color: greyColor,
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Image.asset('assets/titik.png'),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          '20 course',
                          style: secondTextStyle.copyWith(
                            fontSize: 12,
                            fontWeight: regular,
                            color: greyColor,
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Image.asset('assets/titik.png'),
                        const SizedBox(
                          width: 8,
                        ),
                        Icon(
                          Icons.star,
                          color: yellowColor,
                          size: 16,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          '4.9',
                          style: secondTextStyle.copyWith(
                            fontSize: 12,
                            fontWeight: regular,
                            color: greyColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
