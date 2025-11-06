import 'package:flutter/material.dart';

enum CallType {
  incomingVoice,
  outgoingVoice,
  missedVoice,
  incomingVideo,
  outgoingVideo,
}

class CallModel {
  final String name;
  final String time;
  final CallType callType;
  final Color avatarColor;

  CallModel({
    required this.name,
    required this.time,
    required this.callType,
    required this.avatarColor,
  });

  IconData get callIcon {
    switch (callType) {
      case CallType.incomingVoice:
        return Icons.call_received;
      case CallType.outgoingVoice:
        return Icons.call_made;
      case CallType.missedVoice:
        return Icons.call_missed;
      case CallType.incomingVideo:
        return Icons.videocam;
      case CallType.outgoingVideo:
        return Icons.videocam;
    }
  }

  Color get iconColor {
    switch (callType) {
      case CallType.missedVoice:
        return Colors.red;
      default:
        return const Color(0xFF075E54);
    }
  }
}
