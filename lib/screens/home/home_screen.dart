import 'package:flutter/material.dart';
import 'package:task/data/user.dart';
import 'package:task/palette.dart';

import 'components/custom_animated_bottom_bar.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavigationBar(),
      body: Column(
        children: [
          Expanded(flex: 2, child: SizedBox.shrink()),
          Expanded(
            flex: 3,
            child: Stack(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Container(
                              width: 180,
                              height: 180,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                border: Border.all(color: Colors.white, width: 6),
                                image: DecorationImage(
                                  image: ExactAssetImage(
                                    'assets/images/boy2.jpg',
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const SizedBox(height: 16),
                            Text(
                              'Uddesh Rajoriya',
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                            const SizedBox(height: 8),
                            const Text('Gwalior, India'),
                            const SizedBox(height: 8),
                            Text.rich(
                              TextSpan(
                                text: 'Religion: ',
                                children: [
                                  TextSpan(
                                    text: 'Hindu',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText2
                                        ?.copyWith(color: Palette.pink900, fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 16),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                                child: const Text(
                                  'My Visitors',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            )
                          ],
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: girlsList.length,
                          physics: PageScrollPhysics(parent: BouncingScrollPhysics()),
                          itemBuilder: (_, index) {
                            final girl = girlsList[index];
                            return Container(
                              height: MediaQuery.of(context).size.height * .55,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 180,
                                    height: 180,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      border: Border.all(color: Colors.white, width: 6),
                                      image: DecorationImage(
                                        image: ExactAssetImage(
                                          girl.image,
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 16),
                                  Text(
                                    girl.name,
                                    style: Theme.of(context).textTheme.bodyText1,
                                  ),
                                  const SizedBox(height: 8),
                                  Text('${girl.state}, ${girl.country}'),
                                  const SizedBox(height: 8),
                                  Text.rich(
                                    TextSpan(
                                      text: 'Religion: ',
                                      children: [
                                        TextSpan(
                                          text: girl.religion,
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText2
                                              ?.copyWith(color: Palette.pink900, fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 16),
                                  Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Palette.pink500,
                                          borderRadius: BorderRadius.circular(15),
                                        ),
                                        child: Icon(
                                          Icons.headset_rounded,
                                          color: Colors.white,
                                        ),
                                        width: 40,
                                        height: 40,
                                      ),
                                      const SizedBox(width: 4),
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Palette.pink500,
                                          borderRadius: BorderRadius.circular(15),
                                        ),
                                        child: Icon(
                                          Icons.message,
                                          color: Colors.white,
                                        ),
                                        width: 40,
                                        height: 40,
                                      ),
                                      SizedBox(width: 4),
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Palette.pink500,
                                          borderRadius: BorderRadius.circular(15),
                                        ),
                                        child: Icon(
                                          Icons.arrow_downward_rounded,
                                          color: Colors.white,
                                        ),
                                        width: 40,
                                        height: 40,
                                      ),
                                    ],
                                  ),
                                  // SizedBox(height: 120),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  left: MediaQuery.of(context).size.width * .40,
                  top: MediaQuery.of(context).size.width * .25,
                  child: Image.asset(
                    'assets/images/pink_heart.png',
                    width: 70,
                    height: 70,
                  ),
                ),
                Positioned(
                  left: MediaQuery.of(context).size.width * .46,
                  top: MediaQuery.of(context).size.width * .31,
                  child: Center(
                      child: Text(
                    '70%',
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  )),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CustomBottomNavigationBar extends StatefulWidget {
  CustomBottomNavigationBar({
    Key? key,
  }) : super(key: key);

  @override
  _CustomBottomNavigationBarState createState() => _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _currentIndex = 0;
  Color _inactiveColor = Palette.grey300;

  @override
  Widget build(BuildContext context) {
    return CustomAnimatedBottomBar(
      containerHeight: 70,
      backgroundColor: Colors.white,
      selectedIndex: _currentIndex,
      showElevation: true,
      itemCornerRadius: 24,
      curve: Curves.easeIn,
      onItemSelected: (index) => setState(() => _currentIndex = index),
      items: <BottomNavyBarItem>[
        BottomNavyBarItem(
          icon: Icon(Icons.home_outlined),
          title: Text('Home'),
          activeColor: Palette.pink900,
          inactiveColor: _inactiveColor,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: Icon(Icons.people),
          title: Text('Users'),
          activeColor: Palette.pink900,
          inactiveColor: _inactiveColor,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: Icon(Icons.message),
          title: Text(
            'Messages ',
          ),
          activeColor: Palette.pink900,
          inactiveColor: _inactiveColor,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: Container(
            width: 32,
            height: 32,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              image: DecorationImage(
                image: ExactAssetImage(
                  'assets/images/boy2.jpg',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          title: Text('Profile'),
          activeColor: Palette.pink900,
          inactiveColor: _inactiveColor,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
