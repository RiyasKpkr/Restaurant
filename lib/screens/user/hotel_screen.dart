import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:restaurants/constants/constants.dart';
import 'package:restaurants/screens/user/food_list_screen.dart';

class ScreenHotel extends StatefulWidget {
  final String hotelName;
  final String hotelImage;
  final String hotelDiscription;
  int index ;
  List foods;
  // int foodcount;
  ScreenHotel({
    super.key,
    required this.hotelName,
    required this.hotelImage,
    required this.hotelDiscription,
    required this.foods,
    required this.index,
    // required this.foodcount,
  });

  @override
  State<ScreenHotel> createState() => _ScreenHotelState();
}

class _ScreenHotelState extends State<ScreenHotel> {
  String textTime = 'Time';
  String textDate = 'Date';
  TimeOfDay? time;
  DateTime? date;

  timepicker(BuildContext context) async {
    time = await showTimePicker(context: context, initialTime: TimeOfDay.now());
    print(time);
    setState(() {
      if (time == null) {
        textTime = 'time';
      } else {
        textTime = '${time!.hour}:${time!.minute}';
      }
    });
  }

  datePicker(BuildContext context) async {
    date = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime.now(),
        lastDate: DateTime.now().add(Duration(days: 7)));
    print(date);
    setState(() {
      if (date == null) {
        textDate = 'Date';
      } else {
        textDate = DateFormat('yMd', 'en_US').format(date!);
      }
    });
  }

  int _counter = 0;

  void incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void decrimentCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            snap: false,
            pinned: true,
            floating: false,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Text(widget.hotelName,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ) //TextStyle
                  ), //Text
              background: Image.asset(
                widget.hotelImage,
                fit: BoxFit.cover,
              ), //Images.network
            ),
            expandedHeight: 250,
            backgroundColor: Colors.teal,
          ),
          SliverFillRemaining(
            child: SingleChildScrollView(
              physics: const NeverScrollableScrollPhysics(),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.hotelDiscription,
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.blueGrey,
                        wordSpacing: 2,
                        letterSpacing: 1.5,
                      ),
                    ),
                    SizedBox(
                      height: 325,
                    ),
                    Divider(
                      thickness: 1,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'seats'.toUpperCase(),
                          style: TextStyle(
                            fontSize: 25,
                            letterSpacing: 1,
                            color: Colors.blueGrey,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            if (_counter >= 20) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  duration: Duration(milliseconds: 1500),
                                  behavior: SnackBarBehavior.floating,
                                  // padding: EdgeInsets.all(10),
                                  backgroundColor: Colors.red,
                                  content: Text(
                                    'Your maximum seat selected',
                                    style: TextStyle(
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              );
                            } else {
                              incrementCounter();
                            }
                            print(_counter);
                          },
                          child: Container(
                            height: 30,
                            width: 30,
                            // color: Colors.blue,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.teal,
                            ),
                            child: Icon(Icons.add, color: Colors.white),
                          ),
                        ),
                        Text(
                          "$_counter",
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.black87,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            if (_counter == 0) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  duration: Duration(milliseconds: 1500),
                                  behavior: SnackBarBehavior.floating,
                                  // padding: EdgeInsets.all(10),
                                  backgroundColor: Colors.red,
                                  content: Text(
                                    'please select seat',
                                    style: TextStyle(
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              );
                            } else {
                              decrimentCounter();
                              print(_counter);
                            }
                          },
                          child: Container(
                            height: 30,
                            width: 30,
                            // color: Colors.blue,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.teal,
                            ),
                            child: Icon(
                              Icons.remove,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      thickness: 1,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.teal),
                          ),
                          onPressed: () {
                            timepicker(context);
                          },
                          child: Text(textTime),
                        ),
                      ],
                    ),
                    Divider(
                      thickness: 1,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.teal),
                          ),
                          onPressed: () {
                            datePicker(context);
                          },
                          child: Text(textDate),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      // crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        FloatingActionButton(
                          backgroundColor: Colors.teal,
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) {
                                return ScreenFoodList(
                                    // foods:
                                    indexList: widget.index,
                                    //     Constants.res[index].foodList.toList()
                                        );
                              },
                            ));
                          },
                          child: Icon(
                            Icons.arrow_forward,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
