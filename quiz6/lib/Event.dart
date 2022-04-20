import 'package:nb_utils/nb_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

class EventList extends StatefulWidget {
  const EventList({ Key? key }) : super(key: key);

  @override
  State<EventList> createState() => _EventListState();
}

class _EventListState extends State<EventList> {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'setpreuner',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 16,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  4.height,

                    10.height,
                ],
              ).expand(flex:2),
              4.width,
              Container(
                height: 100,
                color: Colors.grey,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 2),
                  child: Image.asset(
                    'assets/img/nextgen.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ).cornerRadiusWithClipRRect(16).expand(flex: 1)
            ],
          ),
          15.height,
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'icastem',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 16,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  5.height,
                ],
              ).expand(flex:2),
              5.width,
              Container(
                height: 100,
                color: Colors.grey,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 2),
                  child: Image.asset(
                    'assets/img/nextgen.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ).cornerRadiusWithClipRRect(16).expand(flex: 1)
            ],
          ),
        ]),
    );
  }
}
