import 'dart:convert';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class MainAPICall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'Main API',
      apiUrl:
          'https://admin.creditcardfees.ca/api/businesses?populate=additionalInformation,businessAddress,listOfCreditCardFees,categories,logo&sort=id:desc',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
    );
  }

  static dynamic dataPull(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      );
}

class ProfileAPICall {
  static Future<ApiCallResponse> call({
    int? bizId,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Profile API',
      apiUrl:
          'https://admin.creditcardfees.ca/api/businesses/${bizId}?populate=*',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
    );
  }

  static dynamic bizData(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      );
}

class BizNameSearchCall {
  static Future<ApiCallResponse> call({
    String? bizName = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Biz Name Search',
      apiUrl:
          'https://admin.creditcardfees.ca/api/businesses?populate=*&filters%5Bname%5D%5B%24contains%5D=${bizName}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
    );
  }

  static dynamic bizSearchData(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      );
}

class FilterCategoryCall {
  static Future<ApiCallResponse> call({
    String? categoryName = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Filter Category',
      apiUrl:
          'https://admin.creditcardfees.ca/api/businesses?filters%5Bcategories%5D%5Bname%5D%5B%24eq%5D=${categoryName}&populate=additionalInformation,businessAddress,listOfCreditCardFees,categories,logo&sort=id:desc',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
    );
  }

  static dynamic filterCatsData(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      );
}

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
