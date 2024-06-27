import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CountdownTimer extends StatefulWidget {
  final DateTime endDate;

  CountdownTimer({required this.endDate});

  @override
  _CountdownTimerState createState() => _CountdownTimerState();
}

class _CountdownTimerState extends State<CountdownTimer> {
  DateTime _endDate = DateTime.now();
  Duration _duration = Duration();

  @override
  void initState() {
    super.initState();
    _endDate = DateTime.now().add(Duration(days: 2));
  }

  @override
  Widget build(BuildContext context) {
    if (_endDate.isBefore(DateTime.now())) {
      return Text('Countdown timer has ended.');
    }

    _duration = _endDate.difference(DateTime.now());

    if (_duration.inDays < 0) {
      return Text('Countdown timer has ended.');
    }

    return Text(
      '${_formatDuration(_duration)}',
      style: TextStyle(
        color: Color.fromRGBO(255, 255, 255, 1),
        fontSize: 26,
        fontWeight: FontWeight.w600
      )
    );
  }

  String _formatDuration(Duration duration) {
    final days = duration.inDays;
    final hours = duration.inHours % 24;
    final minutes = duration.inMinutes % 60;
    final secs = duration.inSeconds % 60;

    return '${days}:${hours}:${minutes}:${secs}';
  }
}
