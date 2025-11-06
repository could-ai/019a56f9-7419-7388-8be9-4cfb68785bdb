import 'package:flutter/material.dart';
import '../models/status_model.dart';
import '../widgets/status_item.dart';

class StatusTab extends StatelessWidget {
  const StatusTab({super.key});

  @override
  Widget build(BuildContext context) {
    final List<StatusModel> recentStatuses = [
      StatusModel(
        name: 'Sarah Smith',
        time: '30 minutes ago',
        avatarColor: Colors.purple,
        isSeen: false,
      ),
      StatusModel(
        name: 'Alex Johnson',
        time: '1 hour ago',
        avatarColor: Colors.orange,
        isSeen: true,
      ),
      StatusModel(
        name: 'Emily Brown',
        time: '2 hours ago',
        avatarColor: Colors.red,
        isSeen: false,
      ),
    ];

    final List<StatusModel> viewedStatuses = [
      StatusModel(
        name: 'John Doe',
        time: 'Today, 10:30 AM',
        avatarColor: Colors.blue,
        isSeen: true,
      ),
      StatusModel(
        name: 'Mom',
        time: 'Today, 9:15 AM',
        avatarColor: Colors.pink,
        isSeen: true,
      ),
    ];

    return ListView(
      children: [
        ListTile(
          leading: Stack(
            children: [
              CircleAvatar(
                radius: 27,
                backgroundColor: Colors.grey[300],
                child: const Icon(Icons.person, size: 30, color: Colors.grey),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  padding: const EdgeInsets.all(2),
                  decoration: const BoxDecoration(
                    color: Color(0xFF25D366),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.add,
                    size: 18,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          title: const Text(
            'My status',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 16,
            ),
          ),
          subtitle: const Text(
            'Tap to add status update',
            style: TextStyle(color: Colors.grey),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Text(
            'Recent updates',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 13,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        ...recentStatuses.map((status) => StatusItem(status: status)),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Text(
            'Viewed updates',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 13,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        ...viewedStatuses.map((status) => StatusItem(status: status)),
      ],
    );
  }
}
