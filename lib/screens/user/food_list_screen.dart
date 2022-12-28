import 'package:flutter/material.dart';
import 'package:restaurants/constants/constants.dart';

class ScreenFoodList extends StatefulWidget {
  int indexList;
  ScreenFoodList({
    super.key,
    required this.indexList,
  });

  @override
  State<ScreenFoodList> createState() => _ScreenFoodListState();
}

class _ScreenFoodListState extends State<ScreenFoodList> {
  int _counter = 0;

  void incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return Stack(
            children: [
              ListTile(
                title: Text(Constants
                    .res[widget.indexList].foodList[index]!.foodName
                    .toString()
                    .toUpperCase()),
                subtitle: Text(Constants
                    .res[widget.indexList].foodList[index]!.foodPrice
                    .toString()),
                leading: CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage(Constants
                      .res[widget.indexList].foodList[index]!.foodImage),
                ),
              ),
              Positioned(
                right: 10,
                top: 25,
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        incrementCounter();
                        print(_counter);
                      },
                      child: Container(
                        height: 25,
                        width: 25,
                        color: Colors.teal,
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "${_counter}",
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap: () {
                        decrementCounter();
                      },
                      child: Container(
                        height: 25,
                        width: 25,
                        color: Colors.teal,
                        child: Icon(
                          Icons.remove,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
        itemCount: Constants.res[widget.indexList].foodList.length,
        separatorBuilder: (context, index) {
          return Divider();
        },
      ),
    );
  }
}
