import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_info.freezed.dart';
part 'auth_info.g.dart';

@freezed
class AuthData with _$AuthData {
  factory AuthData({
    required String? username,
    required String? accessToken,
    required String? refreshToken,

    // @JsonKey(name: 'refresh') required String? tokenRefresh,
    // required AuthInfo? authInfo,
  }) = _AuthData;

  factory AuthData.fromJson(Map<String, dynamic> json) => _$AuthDataFromJson(json);
}

// @freezed
// class AuthInfo with _$AuthInfo {
//   factory AuthInfo({
//     required int? phone,
//     required String? name,
//     required int? statusId,
//   }) = _AuthInfo;

//   factory AuthInfo.fromJson(Map<String, dynamic> json) => _$AuthInfoFromJson(json);
// }
