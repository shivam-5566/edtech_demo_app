import 'dart:core';

import 'package:demo_app/utils/constant.dart';
import 'package:flutter/material.dart';

class CustomSubjects extends StatefulWidget {
  final String title;
  final String scheduleTime;
  final String image;
  final Color color;
  const CustomSubjects(
      {super.key,
      required this.title,
      required this.scheduleTime,
      required this.image,
      required this.color});

  @override
  State<CustomSubjects> createState() => _CustomSubjectsState();
}

class _CustomSubjectsState extends State<CustomSubjects> {
  int rangeValue = 53;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 125,
      padding: EdgeInsets.only(top: 20.0, bottom: 4.0, left: 22, right: 6.0),
      margin: EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        color: widget.color,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6.0),
                    color: AppColors.lowWhite),
                child: Center(child: Image.asset(widget.image,fit: BoxFit.fill,),),
              ),
              SizedBox(
                width: 18.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title,
                    style: TextStyle(
                        color: AppColors.brightWhite,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    widget.scheduleTime,
                    style: TextStyle(
                        color: AppColors.brightWhite,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              )
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Slider(
                  label: 'Select Value',
                  activeColor: AppColors.brightWhite,
                  inactiveColor: AppColors.lowWhite,
                  value: rangeValue.toDouble(),
                  min: 0,
                  max: 100,
                  onChanged: (value) {
                    setState(() {
                      rangeValue = value.toInt();
                    });
                  },
                ),
              ),
              Text(
                "${rangeValue.toString()}%",
                style: TextStyle(color: AppColors.brightWhite),
              ),
            ],
          )
        ],
      ),
    );
  }
}
