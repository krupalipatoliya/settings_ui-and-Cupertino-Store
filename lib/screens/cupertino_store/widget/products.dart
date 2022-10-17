import 'package:flutter/cupertino.dart';
import 'package:outcaster/utils/global.dart';

class MyItemList extends StatefulWidget {
  const MyItemList({Key? key}) : super(key: key);

  @override
  State<MyItemList> createState() => _MyItemListState();
}

class _MyItemListState extends State<MyItemList> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 780,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 100,
              alignment: Alignment.bottomLeft,
              decoration: BoxDecoration(
                color: Color(0xFFF9F9F9),
              ),
              child: const Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  "Cupertino Store",
                  style: TextStyle(
                      fontSize: 25,
                      color: CupertinoColors.black,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
            ListView.builder(
              scrollDirection: Axis.vertical,
              physics: const ScrollPhysics(),
              shrinkWrap: true,
              itemCount: itemlist.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(
                    left: 16,
                    top: 8,
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
          ],
        ),
      ),
    );
  }
}
