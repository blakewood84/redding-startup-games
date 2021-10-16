import 'package:flutter/cupertino.dart';
import 'package:test/constants/constants.dart';

class CommunityProvider extends ChangeNotifier {
  final List<Map<String, dynamic>> data = communitiesData;
}