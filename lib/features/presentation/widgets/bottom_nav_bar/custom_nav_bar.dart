import 'package:flutter/material.dart';

class CustomNavBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  const CustomNavBar({
    Key? key,
    required this.currentIndex,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12), topRight: Radius.circular(12)),
        color: Color.fromARGB(255, 255, 255, 255),
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(80, 0, 0, 0),
            blurRadius: 30,
            spreadRadius: 2,
          ),
        ],
      ),
      height: MediaQuery.of(context).size.height * 0.1,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CustomNavBarItem(
              circleItem: false,
              icon: Icons.auto_awesome_mosaic,
              label: 'Лента',
              isSelected: currentIndex == 0,
              onTap: () => onTap(0),
            ),
            CustomNavBarItem(
              circleItem: false,
              icon: Icons.favorite,
              label: 'Избранное',
              isSelected: currentIndex == 1,
              onTap: () => onTap(1),
            ),
            CustomNavBarItem(
              circleItem: true,
              icon: Icons.favorite,
              isSelected: currentIndex == 5,
            ),
            CustomNavBarItem(
              circleItem: false,
              icon: Icons.person,
              label: 'Профиль',
              isSelected: currentIndex == 2,
              onTap: () => onTap(2),
            ),
            CustomNavBarDropdown(
              icon: Icons.shopping_cart,
              label: 'Корзина',
              isSelected: currentIndex == 3 || currentIndex == 4,
              onTap: (index) => onTap(index),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomNavBarItem extends StatelessWidget {
  final IconData? icon;
  final String? label;
  final bool circleItem;
  final bool isSelected;
  final VoidCallback? onTap;

  const CustomNavBarItem({
    Key? key,
    this.icon,
    this.label,
    required this.isSelected,
    this.onTap,
    required this.circleItem,
  }) : super(key: key);

  Widget createitem(icon, label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          icon,
          color: isSelected ? Colors.red : Colors.grey,
        ),
        Text(
          label,
          style: TextStyle(
            color: isSelected ? Colors.red : Colors.grey,
          ),
        )
      ],
    );
  }

  Widget createCircleItem() {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(80, 0, 0, 0),
            blurRadius: 15,
            spreadRadius: 2,
          )
        ],
        shape: BoxShape.circle,
        color: const Color.fromARGB(255, 247, 32, 85),
      ),
      child: Icon(
        Icons.window_rounded,
        color: Colors.white,
        size: 30,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: circleItem ? createCircleItem() : createitem(icon, label),
    );
  }
}

class CustomNavBarDropdown extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool isSelected;
  final ValueChanged<int> onTap;

  const CustomNavBarDropdown({
    Key? key,
    required this.icon,
    required this.label,
    required this.isSelected,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(100),
      ),
      child: Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              color: isSelected ? Colors.red : Colors.grey,
            ),
            Text(
              label,
              style: TextStyle(
                color: isSelected ? Colors.red : Colors.grey,
              ),
            ),
          ],
        ),
      ),
      position: PopupMenuPosition.over,
      offset: Offset(10, -140),
      onSelected: (value) {
        onTap(value);
      },
      constraints: BoxConstraints(maxWidth: 80),
      color: Color.fromARGB(255, 255, 255, 255),
      itemBuilder: (context) {
        return [
          PopupMenuItem(
            value: 3,
            child: Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromARGB(255, 245, 245, 246)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.fastfood,
                    size: 30,
                  ),
                  Text(
                    'Еда',
                    style: TextStyle(fontSize: 12),
                  )
                ],
              ),
            ),
          ),
          PopupMenuItem(
            value: 4,
            child: Stack(
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromARGB(255, 245, 245, 246),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.add_shopping_cart,
                        size: 30,
                      ),
                      Text(
                        'Товары',
                        style: TextStyle(fontSize: 12),
                      )
                    ],
                  ),
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.red,
                    ),
                    child: Text(
                      '1',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ];
      },
    );
  }
}
