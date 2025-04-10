// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dart_sdk_release.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DartSdkRelease {

 Version get version;
/// Create a copy of DartSdkRelease
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DartSdkReleaseCopyWith<DartSdkRelease> get copyWith => _$DartSdkReleaseCopyWithImpl<DartSdkRelease>(this as DartSdkRelease, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DartSdkRelease&&(identical(other.version, version) || other.version == version));
}


@override
int get hashCode => Object.hash(runtimeType,version);

@override
String toString() {
  return 'DartSdkRelease(version: $version)';
}


}

/// @nodoc
abstract mixin class $DartSdkReleaseCopyWith<$Res>  {
  factory $DartSdkReleaseCopyWith(DartSdkRelease value, $Res Function(DartSdkRelease) _then) = _$DartSdkReleaseCopyWithImpl;
@useResult
$Res call({
 Version version
});




}
/// @nodoc
class _$DartSdkReleaseCopyWithImpl<$Res>
    implements $DartSdkReleaseCopyWith<$Res> {
  _$DartSdkReleaseCopyWithImpl(this._self, this._then);

  final DartSdkRelease _self;
  final $Res Function(DartSdkRelease) _then;

/// Create a copy of DartSdkRelease
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? version = null,}) {
  return _then(_self.copyWith(
version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as Version,
  ));
}

}


/// @nodoc


class _DartSdkRelease implements DartSdkRelease {
  const _DartSdkRelease({required this.version});
  

@override final  Version version;

/// Create a copy of DartSdkRelease
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DartSdkReleaseCopyWith<_DartSdkRelease> get copyWith => __$DartSdkReleaseCopyWithImpl<_DartSdkRelease>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DartSdkRelease&&(identical(other.version, version) || other.version == version));
}


@override
int get hashCode => Object.hash(runtimeType,version);

@override
String toString() {
  return 'DartSdkRelease(version: $version)';
}


}

/// @nodoc
abstract mixin class _$DartSdkReleaseCopyWith<$Res> implements $DartSdkReleaseCopyWith<$Res> {
  factory _$DartSdkReleaseCopyWith(_DartSdkRelease value, $Res Function(_DartSdkRelease) _then) = __$DartSdkReleaseCopyWithImpl;
@override @useResult
$Res call({
 Version version
});




}
/// @nodoc
class __$DartSdkReleaseCopyWithImpl<$Res>
    implements _$DartSdkReleaseCopyWith<$Res> {
  __$DartSdkReleaseCopyWithImpl(this._self, this._then);

  final _DartSdkRelease _self;
  final $Res Function(_DartSdkRelease) _then;

/// Create a copy of DartSdkRelease
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? version = null,}) {
  return _then(_DartSdkRelease(
version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as Version,
  ));
}


}

// dart format on
