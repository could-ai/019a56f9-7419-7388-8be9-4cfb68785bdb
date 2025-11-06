import 'package:flutter/material.dart';

class StatusModel {
  final String name;
  final String time;
  final Color avatarColor;
  final bool isSeen;

  StatusModel({
    required this.name,
    required this.time,
    required this.avatarColor,
    required this.isSeen,
  });
}
