// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'flutter_sdk_release.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FlutterSdkRelease {

 FlutterChannel get channel;@_VersionJsonConverter() Version get version;@_VersionJsonConverter()@JsonKey(name: 'dart_sdk_version') Version get dartSdkVersion;
/// Create a copy of FlutterSdkRelease
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FlutterSdkReleaseCopyWith<FlutterSdkRelease> get copyWith => _$FlutterSdkReleaseCopyWithImpl<FlutterSdkRelease>(this as FlutterSdkRelease, _$identity);

  /// Serializes this FlutterSdkRelease to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FlutterSdkRelease&&(identical(other.channel, channel) || other.channel == channel)&&(identical(other.version, version) || other.version == version)&&(identical(other.dartSdkVersion, dartSdkVersion) || other.dartSdkVersion == dartSdkVersion));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,channel,version,dartSdkVersion);

@override
String toString() {
  return 'FlutterSdkRelease(channel: $channel, version: $version, dartSdkVersion: $dartSdkVersion)';
}


}

/// @nodoc
abstract mixin class $FlutterSdkReleaseCopyWith<$Res>  {
  factory $FlutterSdkReleaseCopyWith(FlutterSdkRelease value, $Res Function(FlutterSdkRelease) _then) = _$FlutterSdkReleaseCopyWithImpl;
@useResult
$Res call({
 FlutterChannel channel,@_VersionJsonConverter() Version version,@_VersionJsonConverter()@JsonKey(name: 'dart_sdk_version') Version dartSdkVersion
});




}
/// @nodoc
class _$FlutterSdkReleaseCopyWithImpl<$Res>
    implements $FlutterSdkReleaseCopyWith<$Res> {
  _$FlutterSdkReleaseCopyWithImpl(this._self, this._then);

  final FlutterSdkRelease _self;
  final $Res Function(FlutterSdkRelease) _then;

/// Create a copy of FlutterSdkRelease
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? channel = null,Object? version = null,Object? dartSdkVersion = null,}) {
  return _then(_self.copyWith(
channel: null == channel ? _self.channel : channel // ignore: cast_nullable_to_non_nullable
as FlutterChannel,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as Version,dartSdkVersion: null == dartSdkVersion ? _self.dartSdkVersion : dartSdkVersion // ignore: cast_nullable_to_non_nullable
as Version,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _FlutterSdkRelease implements FlutterSdkRelease {
  const _FlutterSdkRelease({required this.channel, @_VersionJsonConverter() required this.version, @_VersionJsonConverter()@JsonKey(name: 'dart_sdk_version') required this.dartSdkVersion});
  factory _FlutterSdkRelease.fromJson(Map<String, dynamic> json) => _$FlutterSdkReleaseFromJson(json);

@override final  FlutterChannel channel;
@override@_VersionJsonConverter() final  Version version;
@override@_VersionJsonConverter()@JsonKey(name: 'dart_sdk_version') final  Version dartSdkVersion;

/// Create a copy of FlutterSdkRelease
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FlutterSdkReleaseCopyWith<_FlutterSdkRelease> get copyWith => __$FlutterSdkReleaseCopyWithImpl<_FlutterSdkRelease>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FlutterSdkReleaseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FlutterSdkRelease&&(identical(other.channel, channel) || other.channel == channel)&&(identical(other.version, version) || other.version == version)&&(identical(other.dartSdkVersion, dartSdkVersion) || other.dartSdkVersion == dartSdkVersion));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,channel,version,dartSdkVersion);

@override
String toString() {
  return 'FlutterSdkRelease(channel: $channel, version: $version, dartSdkVersion: $dartSdkVersion)';
}


}

/// @nodoc
abstract mixin class _$FlutterSdkReleaseCopyWith<$Res> implements $FlutterSdkReleaseCopyWith<$Res> {
  factory _$FlutterSdkReleaseCopyWith(_FlutterSdkRelease value, $Res Function(_FlutterSdkRelease) _then) = __$FlutterSdkReleaseCopyWithImpl;
@override @useResult
$Res call({
 FlutterChannel channel,@_VersionJsonConverter() Version version,@_VersionJsonConverter()@JsonKey(name: 'dart_sdk_version') Version dartSdkVersion
});




}
/// @nodoc
class __$FlutterSdkReleaseCopyWithImpl<$Res>
    implements _$FlutterSdkReleaseCopyWith<$Res> {
  __$FlutterSdkReleaseCopyWithImpl(this._self, this._then);

  final _FlutterSdkRelease _self;
  final $Res Function(_FlutterSdkRelease) _then;

/// Create a copy of FlutterSdkRelease
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? channel = null,Object? version = null,Object? dartSdkVersion = null,}) {
  return _then(_FlutterSdkRelease(
channel: null == channel ? _self.channel : channel // ignore: cast_nullable_to_non_nullable
as FlutterChannel,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as Version,dartSdkVersion: null == dartSdkVersion ? _self.dartSdkVersion : dartSdkVersion // ignore: cast_nullable_to_non_nullable
as Version,
  ));
}


}

// dart format on
