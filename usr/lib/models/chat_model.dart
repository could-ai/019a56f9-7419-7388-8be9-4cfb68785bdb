import 'package:flutter/material.dart';

class ChatModel {
  final String name;
  final String message;
  final String time;
  final int unreadCount;
  final Color avatarColor;
  final bool isGroup;

  ChatModel({
    required this.name,
    required this.message,
    required this.time,
    required this.unreadCount,
    required this.avatarColor,
    this.isGroup = false,
  });
}
