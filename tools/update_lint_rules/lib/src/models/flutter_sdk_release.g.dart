// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'flutter_sdk_release.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FlutterSdkRelease _$FlutterSdkReleaseFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      '_FlutterSdkRelease',
      json,
      ($checkedConvert) {
        final val = _FlutterSdkRelease(
          channel: $checkedConvert(
            'channel',
            (v) => $enumDecode(_$FlutterChannelEnumMap, v),
          ),
          version: $checkedConvert(
            'version',
            (v) => const _VersionJsonConverter().fromJson(v as String),
          ),
          dartSdkVersion: $checkedConvert(
            'dart_sdk_version',
            (v) => const _VersionJsonConverter().fromJson(v as String),
          ),
        );
        return val;
      },
      fieldKeyMap: const {'dartSdkVersion': 'dart_sdk_version'},
    );

Map<String, dynamic> _$FlutterSdkReleaseToJson(_FlutterSdkRelease instance) =>
    <String, dynamic>{
      'channel': _$FlutterChannelEnumMap[instance.channel]!,
      'version': const _VersionJsonConverter().toJson(instance.version),
      'dart_sdk_version': const _VersionJsonConverter().toJson(
        instance.dartSdkVersion,
      ),
    };

const _$FlutterChannelEnumMap = {
  FlutterChannel.dev: 'dev',
  FlutterChannel.beta: 'beta',
  FlutterChannel.stable: 'stable',
};
