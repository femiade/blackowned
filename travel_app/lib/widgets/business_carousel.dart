import 'package:flutter/material.dart';
import 'package:travel_app/models/business_model.dart';

class BusinessCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext contet) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Top Businesses',
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5,
                ),
              ),
              GestureDetector(
                onTap: () => print('See All'),
                child: Text("See All",
                    style: TextStyle(
                      color: Colors.red[300],
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1.0,
                    )),
              ),
            ],
          ),
        ),
        Container(
            height: 300.0,
            color: Colors.grey,
            child: ListView.builder(
                // Connect to the backend here
                scrollDirection: Axis.horizontal,
                itemCount: businesses.length,
                itemBuilder: (BuildContext context, int index) {
                  Business business = businesses[index];
                  return Container(
                      margin: EdgeInsets.all(10.0),
                      width: 210.0,
                      color: Colors.red,
                      child: Stack(
                        children: <Widget>[
                          Container(
                            height: 120.0,
                            width: 200.0,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  '${business.activities.length} activities',
                                  style: TextStyle(
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 1.2,
                                  ),
                                ),
                                Text(business.description),
                              ],
                            ),
                          )
                        ],
                      ));
                }))
      ],
    );
  }
}
