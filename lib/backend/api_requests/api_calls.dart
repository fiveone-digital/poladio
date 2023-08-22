import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Poladio APIs Group Code

class PoladioAPIsGroup {
  static String baseUrl = 'https://uat.poladio.com/api';
  static Map<String, String> headers = {
    'Accept': 'application/json',
  };
  static LoginCall loginCall = LoginCall();
  static BookingListCall bookingListCall = BookingListCall();
  static PaymentListCall paymentListCall = PaymentListCall();
  static DashboardCall dashboardCall = DashboardCall();
  static ProspectCall prospectCall = ProspectCall();
  static BookingCreateCall bookingCreateCall = BookingCreateCall();
}

class LoginCall {
  Future<ApiCallResponse> call({
    String? email = '',
    String? password = '',
  }) {
    final body = '''
{
  "email": "${email}",
  "password": "${password}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Login',
      apiUrl: '${PoladioAPIsGroup.baseUrl}/auth/login',
      callType: ApiCallType.POST,
      headers: {
        ...PoladioAPIsGroup.headers,
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic token(dynamic response) => getJsonField(
        response,
        r'''$.token''',
      );
  dynamic name(dynamic response) => getJsonField(
        response,
        r'''$.data.name''',
      );
  dynamic companyName(dynamic response) => getJsonField(
        response,
        r'''$.data.company.name''',
      );
  dynamic logo(dynamic response) => getJsonField(
        response,
        r'''$.data.company.nav_logo''',
      );
  dynamic email(dynamic response) => getJsonField(
        response,
        r'''$.data.email''',
      );
}

class BookingListCall {
  Future<ApiCallResponse> call({
    String? token = '',
    int? id,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'BookingList',
      apiUrl: '${PoladioAPIsGroup.baseUrl}/projects/${id}/booking',
      callType: ApiCallType.GET,
      headers: {
        ...PoladioAPIsGroup.headers,
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      );
  dynamic demand(dynamic response) => getJsonField(
        response,
        r'''$.data[:].payment_demands''',
      );
  dynamic project(dynamic response) => getJsonField(
        response,
        r'''$.data[:].project''',
        true,
      );
  dynamic name(dynamic response) => getJsonField(
        response,
        r'''$.data[:].owner.name''',
        true,
      );
  dynamic email(dynamic response) => getJsonField(
        response,
        r'''$.data[:].owner.email''',
        true,
      );
  dynamic wing(dynamic response) => getJsonField(
        response,
        r'''$.data[:].unit.wing''',
        true,
      );
  dynamic unitNo(dynamic response) => getJsonField(
        response,
        r'''$.data[:].unit.number''',
        true,
      );
  dynamic phone(dynamic response) => getJsonField(
        response,
        r'''$.data[:].mobile''',
        true,
      );
}

class PaymentListCall {
  Future<ApiCallResponse> call({
    String? token = '',
    int? id,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'PaymentList',
      apiUrl: '${PoladioAPIsGroup.baseUrl}/projects/${id}/payment',
      callType: ApiCallType.GET,
      headers: {
        ...PoladioAPIsGroup.headers,
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      );
}

class DashboardCall {
  Future<ApiCallResponse> call({
    String? token = '',
    int? id,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Dashboard',
      apiUrl: '${PoladioAPIsGroup.baseUrl}/projects/${id}/dashboard',
      callType: ApiCallType.GET,
      headers: {
        ...PoladioAPIsGroup.headers,
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic outstanding(dynamic response) => getJsonField(
        response,
        r'''$.data.outstanding''',
      );
  dynamic received(dynamic response) => getJsonField(
        response,
        r'''$.data.received''',
      );
  dynamic total(dynamic response) => getJsonField(
        response,
        r'''$.data.total''',
      );
  dynamic thisMonth(dynamic response) => getJsonField(
        response,
        r'''$.data.thisMonthPayments''',
      );
  dynamic thisWeek(dynamic response) => getJsonField(
        response,
        r'''$.data.thisWeekPayments''',
      );
  dynamic followUps(dynamic response) => getJsonField(
        response,
        r'''$.data.followups''',
        true,
      );
  dynamic prospectId(dynamic response) => getJsonField(
        response,
        r'''$.data.recent_prospects[:].id''',
        true,
      );
  dynamic prospectName(dynamic response) => getJsonField(
        response,
        r'''$.data.recent_prospects[:].booking_name''',
        true,
      );
  dynamic prospectBhk(dynamic response) => getJsonField(
        response,
        r'''$.data.recent_prospects[:].interested_in''',
        true,
      );
  dynamic prospectBudget(dynamic response) => getJsonField(
        response,
        r'''$.data.recent_prospects[:].budget''',
        true,
      );
  dynamic prospectDate(dynamic response) => getJsonField(
        response,
        r'''$.data.recent_prospects[:].date''',
        true,
      );
  dynamic recentProspects(dynamic response) => getJsonField(
        response,
        r'''$.data.recent_prospects''',
        true,
      );
}

class ProspectCall {
  Future<ApiCallResponse> call({
    String? token = '',
    int? id,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Prospect',
      apiUrl: '${PoladioAPIsGroup.baseUrl}/projects/${id}/prospect',
      callType: ApiCallType.GET,
      headers: {
        ...PoladioAPIsGroup.headers,
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      );
  dynamic name(dynamic response) => getJsonField(
        response,
        r'''$.data[:].booking_name''',
        true,
      );
  dynamic srno(dynamic response) => getJsonField(
        response,
        r'''$.data[:].sr_no''',
        true,
      );
  dynamic date(dynamic response) => getJsonField(
        response,
        r'''$.data[:].date''',
        true,
      );
  dynamic address(dynamic response) => getJsonField(
        response,
        r'''$.data[:].residential_address''',
        true,
      );
  dynamic phone(dynamic response) => getJsonField(
        response,
        r'''$.data[:].mobile''',
        true,
      );
  dynamic email(dynamic response) => getJsonField(
        response,
        r'''$.data[:].email''',
        true,
      );
  dynamic bhk(dynamic response) => getJsonField(
        response,
        r'''$.data[:].interested_in''',
        true,
      );
  dynamic budget(dynamic response) => getJsonField(
        response,
        r'''$.data[:].budget''',
        true,
      );
  dynamic locPref(dynamic response) => getJsonField(
        response,
        r'''$.data[:].location_preferred''',
        true,
      );
  dynamic source(dynamic response) => getJsonField(
        response,
        r'''$.data[:].source''',
        true,
      );
  dynamic reason(dynamic response) => getJsonField(
        response,
        r'''$.data[:].reason_for_purchase''',
        true,
      );
}

class BookingCreateCall {
  Future<ApiCallResponse> call({
    int? id,
    String? token = '',
    dynamic? ownersJson,
    int? unitId,
    int? paymentSchemeId,
    int? mobile,
    int? bookingAmount,
    String? bookingDate = '',
    int? agreementValue,
    String? mode = '',
    String? address = '',
    String? paymentTerms = '',
  }) {
    final owners = _serializeJson(ownersJson, true);
    final body = '''
{
  "id": "${id}",
  "token": "${token}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Booking Create',
      apiUrl: '${PoladioAPIsGroup.baseUrl}/projects/${id}/booking',
      callType: ApiCallType.POST,
      headers: {
        ...PoladioAPIsGroup.headers,
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

/// End Poladio APIs Group Code

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
