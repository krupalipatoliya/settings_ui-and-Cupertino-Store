import 'package:flutter/cupertino.dart';
import 'package:outcaster/screens/cupertino_store/widget/cart.dart';
import 'package:outcaster/screens/cupertino_store/widget/products.dart';
import 'package:outcaster/screens/cupertino_store/widget/srarch.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController pageController = PageController();

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Column(
        children: [
          SizedBox(
            height: 780,
            child: PageView(
              controller: pageController,
              onPageChanged: (val) {
                setState(() {
                  index = val;
                });
              },
              children: const [
                MyItemList(),
                Search(),
                Cart(),
              ],
            ),
          ),
          const Spacer(),
          CupertinoTabBar(
            backgroundColor: const Color(0xFFF9F9F9),
            currentIndex: index,
            onTap: (val) {
              setState(() {
                pageController.animateToPage(val,
                    duration: const Duration(microseconds: 200),
                    curve: Curves.easeInBack);
              });
            },
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.home),
                label: 'Products',
              ),
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.search),
                label: 'Search',
              ),
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.shopping_cart),
                label: 'Cart',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
