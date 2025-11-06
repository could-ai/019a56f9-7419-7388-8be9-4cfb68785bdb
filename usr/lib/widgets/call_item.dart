import 'package:flutter/material.dart';
import '../models/call_model.dart';

class CallItem extends StatelessWidget {
  final CallModel call;

  const CallItem({super.key, required this.call});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 27,
        backgroundColor: call.avatarColor,
        child: Text(
          call.name[0].toUpperCase(),
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      title: Text(
        call.name,
        style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 16,
          color: call.callType == CallType.missedVoice
              ? Colors.red
              : Colors.black,
        ),
      ),
      subtitle: Row(
        children: [
          Icon(
            call.callIcon,
            size: 16,
            color: call.iconColor,
          ),
          const SizedBox(width: 4),
          Text(
            call.time,
            style: TextStyle(
              color: Colors.grey[600],
              fontSize: 14,
            ),
          ),
        ],
      ),
      trailing: Icon(
        call.callType == CallType.incomingVideo ||
                call.callType == CallType.outgoingVideo
            ? Icons.videocam
            : Icons.call,
        color: const Color(0xFF075E54),
      ),
      onTap: () {},
    );
  }
}
