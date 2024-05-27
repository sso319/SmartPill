import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start OpenAI ChatGPT Group Code

class OpenAIChatGPTGroup {
  static String getBaseUrl() => 'https://api.openai.com/v1';
  static Map<String, String> headers = {
    'Content-Type': 'application/json',
  };
  static SendFullPromptCall sendFullPromptCall = SendFullPromptCall();
}

class SendFullPromptCall {
  Future<ApiCallResponse> call({
    String? apiKey = '',
    dynamic promptJson,
  }) async {
    final baseUrl = OpenAIChatGPTGroup.getBaseUrl();

    final prompt = _serializeJson(promptJson);
    final ffApiRequestBody = '''
{
  "model": "gpt-4",
  "messages": $prompt
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Send Full Prompt',
      apiUrl: '$baseUrl/chat/completions',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $apiKey',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  int? createdTimestamp(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.created''',
      ));
  String? role(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.choices[:].message.role''',
      ));
  String? content(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.choices[:].message.content''',
      ));
}

/// End OpenAI ChatGPT Group Code

class GetPillInformationCall {
  static Future<ApiCallResponse> call({
    String? pillName = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getPillInformation',
      apiUrl: 'http://15.165.129.252:8080/api/pill/name/$pillName',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'pillName': pillName,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List? allPill(dynamic response) => getJsonField(
        response,
        r'''$[:]''',
        true,
      ) as List?;
  static List<String>? pillName(dynamic response) => (getJsonField(
        response,
        r'''$[:].pillName''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? pillImage(dynamic response) => (getJsonField(
        response,
        r'''$[:].imagePath''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class GetPillDetailCall {
  static Future<ApiCallResponse> call({
    String? pillName = '',
    String? pillNumber = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getPillDetail',
      apiUrl: 'http://15.165.129.252:8080/api/pill/name/$pillNumber',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'pillNumber': pillNumber,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List? allPill(dynamic response) => getJsonField(
        response,
        r'''$[:]''',
        true,
      ) as List?;
  static List<String>? pillName(dynamic response) => (getJsonField(
        response,
        r'''$[:].pillName''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? pillImage(dynamic response) => (getJsonField(
        response,
        r'''$[:].imagePath''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class CreateProfilesCall {
  static Future<ApiCallResponse> call({
    dynamic userJson,
  }) async {
    final user = _serializeJson(userJson);
    final ffApiRequestBody = user;
    return ApiManager.instance.makeApiCall(
      callName: 'createProfiles',
      apiUrl: 'http://15.165.129.252:8080/api/profiles',
      callType: ApiCallType.PUT,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: true,
      decodeUtf8: true,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static int? userId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.id''',
      ));
}

class GetAllProfilesCall {
  static Future<ApiCallResponse> call({
    String? id = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getAllProfiles',
      apiUrl: 'http://15.165.129.252:8080/api/profiles',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: true,
      alwaysAllowBody: false,
    );
  }

  static List? allProfiles(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
  static List<String>? userNames(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? userId(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class DeleteProfileCall {
  static Future<ApiCallResponse> call({
    String? id = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'deleteProfile',
      apiUrl: 'http://15.165.129.252:8080/api/profiles/$id',
      callType: ApiCallType.DELETE,
      headers: {},
      params: {
        'id': id,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetProfileCall {
  static Future<ApiCallResponse> call({
    int? id,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getProfile',
      apiUrl: 'http://15.165.129.252:8080/api/profiles/$id',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateProfileCall {
  static Future<ApiCallResponse> call({
    String? name = '',
    double? height,
    double? weight,
    String? nickname = '',
  }) async {
    final ffApiRequestBody = '''
{
  "name": "$name",
  "height": $height,
  "weight": $weight,
  "nickname": "$nickname"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'updateProfile',
      apiUrl: 'http://15.165.129.252:8080/api/profiles',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetMedInfoCall {
  static Future<ApiCallResponse> call({
    String? id = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getMedInfo',
      apiUrl: 'http://15.165.129.252:8080/api/profiles/$id/medInfo',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'id': id,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class AddMedInfoCall {
  static Future<ApiCallResponse> call({
    String? id = '',
    dynamic medInfoJson,
  }) async {
    final medInfo = _serializeJson(medInfoJson);
    final ffApiRequestBody = medInfo;
    return ApiManager.instance.makeApiCall(
      callName: 'addMedInfo',
      apiUrl: 'http://15.165.129.252:8080/api/profiles/$id/medInfo',
      callType: ApiCallType.PUT,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: true,
      decodeUtf8: true,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class BookmarkCall {
  static Future<ApiCallResponse> call({
    String? id = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'bookmark',
      apiUrl: 'http://15.165.129.252:8080/api/profiles/$id/bookmarks',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'id': id,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class AddBookmarkCall {
  static Future<ApiCallResponse> call({
    String? id = '',
    String? pillNumber = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'addBookmark',
      apiUrl:
          'http://15.165.129.252:8080/api/profiles/$id/bookmarks/$pillNumber',
      callType: ApiCallType.PUT,
      headers: {},
      params: {
        'id': id,
        'pillNumber': pillNumber,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
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
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
