import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pub_semver/pub_semver.dart';

part 'dart_sdk_release.freezed.dart';

@freezed
abstract class DartSdkRelease with _$DartSdkRelease {
  const factory DartSdkRelease({required Version version}) = _DartSdkRelease;
}
