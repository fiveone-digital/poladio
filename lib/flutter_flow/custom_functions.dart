import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';

dynamic getOwnerEmptyJson() {
  return {
    "name": "",
    "email": "",
    "pan": "",
    "pan_image": null,
    "aadhar_image": null,
    "photo_image": null
  };
}

String? dateFormatFromString(String? date) {
  final DateFormat formatter = DateFormat("yyyy-MM-dd");
  return formatter.format(DateTime.parse(date!));
}

String? dateformate(DateTime? date) {
  final DateFormat formatter = DateFormat("yyyy-MM-dd");
  return formatter.format(date ?? DateTime.now());
}

String? getDropdownItemById(
  int? id,
  List<dynamic>? data,
) {
  try {
    if (id != null && (data != null && data is List)) {
      final String? name = (data.firstWhere((e) => e['id'] == id)['name']);
      print("ID is $id");
      return name;
    }
  } catch (e) {
    return null;
  }

  return null;
}

int? getDropdownItemId(
  String? value,
  List<dynamic>? data,
) {
  try {
    if (value != null && (data != null)) {
      final int? id = (data.firstWhere((e) => e['name'] == value)['id']);
      print("ID is $id");
      return id;
    }
  } catch (e) {
    return null;
  }

  return null;
}

List<String> getDropdownItems(List<dynamic>? data) {
  final List<String> dropdownList = [];
  if (data != null && data is List) {
    for (dynamic item in data) {
      dropdownList.add(item['name']);
    }
  }
  return dropdownList;
}

List<String> getDropdownItemsWithAll(List<dynamic>? data) {
  final List<String> dropdownList = [];
  if (data != null && data is List) {
    for (dynamic item in data) {
      dropdownList.add(item['name']);
    }
  }
  dropdownList.insert(0, 'All');
  return dropdownList;
}

dynamic getOwnerEmptyDocJson() {
  FFUploadedFile pan = new FFUploadedFile();
  FFUploadedFile aadharImage = new FFUploadedFile();
  FFUploadedFile photoImage = new FFUploadedFile();
  return {
    "pan_image": pan,
    "aadhar_image": aadharImage,
    "photo_image": photoImage
  };
}

String? humanDateFormat(String? date) {
  final DateFormat formatter = DateFormat("yMMMd");
  return formatter.format(DateTime.parse(date!));
}

int? indexPlusOne(int? index) {
  if (index != null) {
    return index + 1;
  }
}
