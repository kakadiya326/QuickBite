import 'package:flutter/material.dart';
import 'package:quickbite/widget/widget_support.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  int a = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          margin: EdgeInsets.only(left: 20.0, top: 50.0, right: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back_ios_new_outlined,
                  color: Colors.black,
                ),
              ),
              Image.asset("images/salad2.png",
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 2.5,
                  fit: BoxFit.fill),
              SizedBox(
                height: 15.0,
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Text(
                        "Mediterranean",
                        style: AppWidget.semiBoldTextFieldStyle(),
                      ),
                      Text(
                        "Chickpea Salad",
                        style: AppWidget.boldTextFieldStyle(),
                      ),
                    ],
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      --a;
                      if (a < 0) {
                        a = 0;
                      }
                      setState(() {});
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(8)),
                      child: Icon(
                        Icons.remove,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Text(
                    a.toString(),
                    style: AppWidget.semiBoldTextFieldStyle(),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  GestureDetector(
                    onTap: () {
                      ++a;

                      setState(() {});
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(8)),
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                "Name is Kakadiya Chiranj and this just peace of demo text to add details in Menu Item Name is Kakadiya Chiranj and this just peace of demo text to add details in Menu Item Name is Kakadiya Chiranj and this just peace of demo text to add details in Menu Item Name is Kakadiya Chiranj and this just peace of demo text to add details in Menu Item Name is Kakadiya Chiranj and this just peace of demo text to add details in Menu Item Name is Kakadiya Chiranj and this just peace of demo text to add details in Menu ItemName is Kakadiya Chiranj and this just peace of demo text to add details in Menu ItemName is Kakadiya Chiranj and this just peace of demo text to add details in Menu ItemName is Kakadiya Chiranj and this just peace of demo text to add details in Menu ItemName is Kakadiya Chiranj and this just peace of demo text to add details in Menu ItemName is Kakadiya Chiranj and this just peace of demo text to add details in Menu ItemName is Kakadiya Chiranj and this just peace of demo text to add details in Menu Item",
                style: AppWidget.LigthTextFieldStyle(),
                maxLines: 3,
              ),
              SizedBox(
                height: 30.0,
              ),
              Row(
                children: [
                  Text(
                    "Delivery Time ",
                    style: AppWidget.semiBoldTextFieldStyle(),
                  ),
                  SizedBox(
                    width: 25.0,
                  ),
                  Icon(
                    Icons.alarm,
                    color: Colors.black54,
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Text(
                    "30 min",
                    style: AppWidget.semiBoldTextFieldStyle(),
                  ),
                ],
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(bottom: 40.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Total Price",
                          style: AppWidget.semiBoldTextFieldStyle(),
                        ),
                        Text(
                          "\$28",
                          style: AppWidget.boldTextFieldStyle(),
                        )
                      ],
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 2,
                      padding: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "Add to cart",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Poppins',
                                fontSize: 18.0),
                          ),
                          SizedBox(
                            width: 30.0,
                          ),
                          Container(
                            child: Icon(
                              Icons.shopping_cart_outlined,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}
