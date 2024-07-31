import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MoodyPage extends StatefulWidget {
  MoodyPage({super.key});

  @override
  State<MoodyPage> createState() => _MoodyPageState();
}

class _MoodyPageState extends State<MoodyPage> {
  PageController controller = PageController(keepPage: true);

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 8,
        leadingWidth: 80,
        toolbarHeight: 90,
        leading: Padding(
          padding: const EdgeInsets.only(top: 46, left: 28),
          child: Image.asset('assets/icons/Moody_icons/logo.png'),
        ),
        title: const Padding(
          padding: EdgeInsets.only(
            top: 46,
          ),
          child: Text(
            'Moody',
            style: TextStyle(
              fontFamily: 'Kefa',
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 46, right: 28),
            child: badges.Badge(
              position: badges.BadgePosition.topEnd(top: -2, end: 2),
              badgeContent: const Text(
                '',
                style: TextStyle(color: Colors.white, fontSize: 1),
              ),
              child: const ImageIcon(
                  AssetImage('assets/icons/Moody_icons/Icon.png')),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 90,
        child: BottomNavigationBar(
            onTap: (value) {
              currentIndex = value;
              setState(() {});
            },
            landscapeLayout: BottomNavigationBarLandscapeLayout.spread,
            currentIndex: currentIndex,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            selectedItemColor: const Color(0xFF027A48),
            type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(
                icon:
                    ImageIcon(AssetImage('assets/icons/Moody_icons/home.png')),
                label: '',
                activeIcon: Column(
                  children: [
                    ImageIcon(AssetImage('assets/icons/Moody_icons/home.png')),
                    SizedBox(
                      height: 5,
                    ),
                    Icon(
                      Icons.circle,
                      size: 8,
                    )
                  ],
                ),
              ),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                      AssetImage('assets/icons/Moody_icons/grid.png')),
                  label: '',
                  activeIcon: Column(
                    children: [
                      ImageIcon(
                          AssetImage('assets/icons/Moody_icons/grid.png')),
                      SizedBox(
                        height: 5,
                      ),
                      Icon(
                        Icons.circle,
                        size: 8,
                      )
                    ],
                  )),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                      AssetImage('assets/icons/Moody_icons/calendar.png')),
                  label: '',
                  activeIcon: Column(
                    children: [
                      ImageIcon(
                          AssetImage('assets/icons/Moody_icons/calendar.png')),
                      SizedBox(
                        height: 5,
                      ),
                      Icon(
                        Icons.circle,
                        size: 8,
                      )
                    ],
                  )),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                      AssetImage('assets/icons/Moody_icons/person.png')),
                  label: '',
                  activeIcon: Column(
                    children: [
                      ImageIcon(
                          AssetImage('assets/icons/Moody_icons/person.png')),
                      SizedBox(
                        height: 5,
                      ),
                      Icon(
                        Icons.circle,
                        size: 8,
                      )
                    ],
                  )),
            ]),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 35),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    'Hello, ',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    'Sara Rose',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'How are you feeling today ?',
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Image(
                        image:
                            AssetImage('assets/icons/Moody_icons/love10.png'),
                        width: 60,
                        height: 60,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Love',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Image(
                        image:
                            AssetImage('assets/icons/Moody_icons/cool10.png'),
                        width: 60,
                        height: 60,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Cool',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Image(
                        image:
                            AssetImage('assets/icons/Moody_icons/happy8.png'),
                        width: 60,
                        height: 60,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Happy',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Image(
                        image: AssetImage('assets/icons/Moody_icons/sad12.png'),
                        width: 60,
                        height: 60,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Sad',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Feature',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Spacer(),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'See more',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF027A48),
                      ),
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    weight: 400,
                    size: 14,
                    color: Color(0xFF027A48),
                  )
                ],
              ),
              SizedBox(
                height: 168,
                child: PageView.builder(
                  controller: controller,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFECFDF3),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(24),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 170,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Positive vibes',
                                    style: TextStyle(
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                      color: Color(0xFF344054),
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                    'Boost your mood with positive vibes',
                                    style: TextStyle(
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Spacer(),
                                  Row(
                                    children: [
                                      ImageIcon(
                                        AssetImage(
                                            'assets/icons/Moody_icons/_Play button.png'),
                                        size: 24,
                                        color: Color(0xFF32d583),
                                      ),
                                      Text(
                                        '10 mins',
                                        style: TextStyle(
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14,
                                          color: Color(0xFF344054),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 30),
                              child: SizedBox(
                                width: 90,
                                height: 100,
                                child: Image.asset(
                                  'assets/icons/Moody_icons/Walking the Dog.png',
                                  fit: BoxFit.fill,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Center(
                child: SmoothPageIndicator(
                  controller: controller,
                  count: 3,
                  effect: const WormEffect(
                    dotColor: Color(0xFFD9D9D9),
                    activeDotColor: Color(0xFF98A2B3),
                    dotHeight: 6,
                    dotWidth: 6,
                    type: WormType.thinUnderground,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Exercise',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Spacer(),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'See more',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF027A48),
                      ),
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    weight: 400,
                    size: 14,
                    color: Color(0xFF027A48),
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Container(
                    width: 151,
                    height: 56,
                    decoration: BoxDecoration(
                      color: Color(0xFFF9F5FF),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Row(
                        children: [
                          Image.asset(
                              'assets/icons/Moody_icons/Relaxation.png'),
                          SizedBox(
                            width: 12,
                          ),
                          Text(
                            'Relaxation',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Spacer(),
                  Container(
                    height: 56,
                    width: 151,
                    decoration: BoxDecoration(
                      color: Color(0xFFFDF2FA),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Row(
                        children: [
                          Image.asset(
                              'assets/icons/Moody_icons/Meditation.png'),
                          SizedBox(
                            width: 12,
                          ),
                          Text(
                            'Medetation',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  Container(
                    width: 151,
                    height: 56,
                    decoration: BoxDecoration(
                      color: Color(0xFFFFFAF5),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Row(
                        children: [
                          Image.asset('assets/icons/Moody_icons/Breathing.png'),
                          SizedBox(
                            width: 12,
                          ),
                          Text(
                            'Breathing',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Spacer(),
                  Container(
                    height: 56,
                    width: 151,
                    decoration: BoxDecoration(
                      color: Color(0xFFF0F9FF),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Row(
                        children: [
                          Image.asset('assets/icons/Moody_icons/Yoga.png'),
                          SizedBox(
                            width: 12,
                          ),
                          Text(
                            'Yoga',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
