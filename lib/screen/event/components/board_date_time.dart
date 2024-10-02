import 'dart:async';
import 'package:application_gia_pha/constants.dart';
import 'package:application_gia_pha/screen/event/components/column_date_time.dart';
import 'package:flutter/material.dart';

class BoardDateTime extends StatefulWidget {
  const BoardDateTime({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _BoardDateTimeState createState() => _BoardDateTimeState();
}

class _BoardDateTimeState extends State<BoardDateTime> {
  late Timer _timer;
  String _yearCanChi = '';
  String _monthCanChi = '';
  String _dayCanChi = '';
  String _hourCanChi = '';

  final List<String> _heavenlyStems = [
    'Giáp',
    'Ất',
    'Bính',
    'Đinh',
    'Mậu',
    'Kỷ',
    'Canh',
    'Tân',
    'Nhâm',
    'Quý'
  ];
  final List<String> _earthlyBranches = [
    'Tý',
    'Sửu',
    'Dần',
    'Mão',
    'Thìn',
    'Tỵ',
    'Ngọ',
    'Mùi',
    'Thân',
    'Dậu',
    'Tuất',
    'Hợi'
  ];

  @override
  void initState() {
    super.initState();
    _updateCanChi(); // Cập nhật lần đầu khi khởi tạo
    _timer = Timer.periodic(const Duration(seconds: 1), (Timer t) {
      _updateCanChi(); // Cập nhật theo thời gian thực mỗi giây
    });
  }

  @override
  void dispose() {
    _timer.cancel(); // Hủy Timer khi không còn sử dụng
    super.dispose();
  }

  void _updateCanChi() {
    DateTime now = DateTime.now();
    setState(() {
      _yearCanChi = getCanChi(now, 'Năm');
      _monthCanChi = getCanChi(now, 'Tháng');
      _dayCanChi = getCanChi(now, 'Ngày');
      _hourCanChi = getCanChi(now, 'Giờ');
    });
  }

  String getCanChi(DateTime dateTime, String type) {
    int year = dateTime.year;
    int month = dateTime.month;
    int day = dateTime.day;
    int hour = dateTime.hour;

    int stemIndex, branchIndex;

    switch (type) {
      case 'Năm':
        stemIndex = (year - 1900) % 10;
        branchIndex = (year - 1900) % 12;
        break;
      case 'Tháng':
        stemIndex = (month + 1) % 10;
        branchIndex = (month + 1) % 12;
        break;
      case 'Ngày':
        stemIndex = (day + 1) % 10;
        branchIndex = (day + 1) % 12;
        break;
      case 'Giờ':
        stemIndex = (hour ~/ 2 + 1) % 10;
        branchIndex = (hour ~/ 2) % 12;
        break;
      default:
        stemIndex = 0;
        branchIndex = 0;
    }

    return '${_heavenlyStems[stemIndex]} ${_earthlyBranches[branchIndex]}';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: kPrimaryLightColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ColumnDateTime(
            timeLabel: 'Giờ',
            timeValue: '${DateTime.now().hour}:${DateTime.now().minute}',
            canChi: _hourCanChi,
          ),
          ColumnDateTime(
            timeLabel: 'Ngày',
            timeValue: DateTime.now().day.toString(),
            canChi: _dayCanChi,
          ),
          ColumnDateTime(
            timeLabel: 'Tháng',
            timeValue: DateTime.now().month.toString(),
            canChi: _monthCanChi,
          ),
          ColumnDateTime(
            timeLabel: 'Năm',
            timeValue: DateTime.now().year.toString(),
            canChi: _yearCanChi,
          ),
        ],
      ),
    );
  }
}
