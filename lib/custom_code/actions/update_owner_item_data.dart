// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future updateOwnerItemData(
    int index, String? name, String? email, String? pan) async {
  if (name != null) {
    FFAppState().updateOwnerListAtIndex(
      index,
      (item) {
        (item["name"] = name);
        return item;
      },
    );
  }
  if (email != null) {
    FFAppState().updateOwnerListAtIndex(
      index,
      (item) {
        (item["email"] = email);
        return item;
      },
    );
  }
  if (pan != null) {
    FFAppState().updateOwnerListAtIndex(
      index,
      (item) {
        (item["pan"] = pan);
        return item;
      },
    );
  }
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the button on the right!
