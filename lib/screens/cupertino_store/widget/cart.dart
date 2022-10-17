import 'package:flutter/cupertino.dart';

import '../../../utils/global.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  late TextEditingController _nameController;
  late TextEditingController _emailController;
  late TextEditingController _locationController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _nameController = TextEditingController(text: 'Name');
    _emailController = TextEditingController(text: 'Email');
    _locationController = TextEditingController(text: 'Location');
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Column(
        children: [
          Container(
            height: 100,
            alignment: Alignment.bottomLeft,
            decoration: const BoxDecoration(
              color: Color(0xFFF9F9F9),
            ),
            child: const Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                "Shopping Cart",
                style: TextStyle(
                  fontSize: 25,
                  color: CupertinoColors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: SizedBox(
              child: CupertinoTextField(
                controller: _nameController,
                style: const TextStyle(color: CupertinoColors.inactiveGray),
                prefix: const Icon(
                  CupertinoIcons.person,
                  color: CupertinoColors.inactiveGray,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: SizedBox(
              child: CupertinoTextField(
                controller: _emailController,
                style: const TextStyle(color: CupertinoColors.inactiveGray),
                prefix: const Icon(
                  CupertinoIcons.mail,
                  color: CupertinoColors.inactiveGray,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: SizedBox(
              child: CupertinoTextField(
                controller: _locationController,
                style: const TextStyle(color: CupertinoColors.inactiveGray),
                prefix: const Icon(
                  CupertinoIcons.location_solid,
                  color: CupertinoColors.inactiveGray,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: const [
                Icon(CupertinoIcons.time),
                SizedBox(
                  width: 10,
                ),
                Text("Delivery Time"),
              ],
            ),
          ),
          SizedBox(
            height: 180,
            child: CupertinoDatePicker(
              initialDateTime: DateTime.now(),
              onDateTimeChanged: (DateTime newDate) {},
              use24hFormat: true,
              minimumYear: 2010,
              maximumYear: 2500,
              minuteInterval: 1,
              mode: CupertinoDatePickerMode.dateAndTime,
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            itemCount: 2,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(
                  left: 16,
                  top: 3,
                  bottom: 8,
                  right: 8,
                ),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(4),
                      child: Image.network(
                        itemlist[index].image,
                        fit: BoxFit.fitHeight,
                        width: 76,
                        height: 76,
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              itemlist[index].name,
                              style: const TextStyle(
                                color: Color.fromRGBO(0, 0, 0, 0.8),
                                fontSize: 18,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            const Padding(padding: EdgeInsets.only(top: 8)),
                            Text(
                              "\$ ${itemlist[index].price}",
                              style: const TextStyle(
                                color: Color(0xFF8E8E93),
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    CupertinoButton(
                      padding: EdgeInsets.zero,
                      onPressed: () {
                        final model = itemlist[index].id;
                      },
                      child: const Icon(
                        CupertinoIcons.plus_circled,
                        semanticLabel: 'Add',
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  children: const [
                    Text(
                      "Shopping 21.00",
                      style: TextStyle(
                        color: CupertinoColors.inactiveGray,
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      "Tax 10.32",
                      style: TextStyle(
                        color: CupertinoColors.inactiveGray,
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      'Total 203.32',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
