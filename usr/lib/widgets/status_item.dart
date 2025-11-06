import 'package:flutter/material.dart';
import '../models/status_model.dart';

class StatusItem extends StatelessWidget {
  final StatusModel status;

  const StatusItem({super.key, required this.status});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        padding: const EdgeInsets.all(2),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: status.isSeen ? Colors.grey : const Color(0xFF25D366),
            width: 2.5,
          ),
        ),
        child: CircleAvatar(
          radius: 25,
          backgroundColor: status.avatarColor,
          child: Text(
            status.name[0].toUpperCase(),
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
      title: Text(
        status.name,
        style: const TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 16,
        ),
      ),
      subtitle: Text(
        status.time,
        style: TextStyle(
          color: Colors.grey[600],
          fontSize: 14,
        ),
      ),
      onTap: () {},
    );
  }
}
