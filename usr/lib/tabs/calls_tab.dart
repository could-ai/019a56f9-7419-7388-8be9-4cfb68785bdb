import 'package:flutter/material.dart';
import '../models/call_model.dart';
import '../widgets/call_item.dart';

class CallsTab extends StatelessWidget {
  const CallsTab({super.key});

  @override
  Widget build(BuildContext context) {
    final List<CallModel> calls = [
      CallModel(
        name: 'Sarah Smith',
        time: 'Today, 2:30 PM',
        callType: CallType.outgoingVideo,
        avatarColor: Colors.purple,
      ),
      CallModel(
        name: 'John Doe',
        time: 'Today, 11:45 AM',
        callType: CallType.incomingVoice,
        avatarColor: Colors.blue,
      ),
      CallModel(
        name: 'Alex Johnson',
        time: 'Yesterday, 8:20 PM',
        callType: CallType.missedVoice,
        avatarColor: Colors.orange,
      ),
      CallModel(
        name: 'Emily Brown',
        time: 'Yesterday, 3:15 PM',
        callType: CallType.outgoingVoice,
        avatarColor: Colors.red,
      ),
      CallModel(
        name: 'Mom',
        time: '12/25/2024',
        callType: CallType.incomingVideo,
        avatarColor: Colors.pink,
      ),
      CallModel(
        name: 'Work Team',
        time: '12/24/2024',
        callType: CallType.missedVoice,
        avatarColor: Colors.teal,
      ),
    ];

    return ListView.builder(
      itemCount: calls.length,
      itemBuilder: (context, index) {
        return CallItem(call: calls[index]);
      },
    );
  }
}
