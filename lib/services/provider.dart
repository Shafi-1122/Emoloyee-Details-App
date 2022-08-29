// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_application_edapt_network_connection_learning/services/apis.dart';
import 'package:flutter_application_edapt_network_connection_learning/modelclass/modelclass.dart';

class ProviderClass extends ChangeNotifier {
  FetchDataClass fetchdataclassobject = FetchDataClass();
  late Future<List<Modelclass>> datafromapi =
      fetchdataclassobject.fetchDataFromApi();
  late int currentuser;

  void indexTaker(index) {
    currentuser = index;
    notifyListeners();
    // print(currentuser);
  }

  void updateUserDetails() {
    currentuser++;
    // print(currentuser);
    notifyListeners();
  }
}
