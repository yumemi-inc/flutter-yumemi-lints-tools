// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recommended_rule_severity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RecommendedRuleSeverity {

 Rule get rule; String get reason; SeverityLevel get severityLevel;
/// Create a copy of RecommendedRuleSeverity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RecommendedRuleSeverityCopyWith<RecommendedRuleSeverity> get copyWith => _$RecommendedRuleSeverityCopyWithImpl<RecommendedRuleSeverity>(this as RecommendedRuleSeverity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RecommendedRuleSeverity&&(identical(other.rule, rule) || other.rule == rule)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.severityLevel, severityLevel) || other.severityLevel == severityLevel));
}


@override
int get hashCode => Object.hash(runtimeType,rule,reason,severityLevel);

@override
String toString() {
  return 'RecommendedRuleSeverity(rule: $rule, reason: $reason, severityLevel: $severityLevel)';
}


}

/// @nodoc
abstract mixin class $RecommendedRuleSeverityCopyWith<$Res>  {
  factory $RecommendedRuleSeverityCopyWith(RecommendedRuleSeverity value, $Res Function(RecommendedRuleSeverity) _then) = _$RecommendedRuleSeverityCopyWithImpl;
@useResult
$Res call({
 Rule rule, String reason, SeverityLevel severityLevel
});


$RuleCopyWith<$Res> get rule;

}
/// @nodoc
class _$RecommendedRuleSeverityCopyWithImpl<$Res>
    implements $RecommendedRuleSeverityCopyWith<$Res> {
  _$RecommendedRuleSeverityCopyWithImpl(this._self, this._then);

  final RecommendedRuleSeverity _self;
  final $Res Function(RecommendedRuleSeverity) _then;

/// Create a copy of RecommendedRuleSeverity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? rule = null,Object? reason = null,Object? severityLevel = null,}) {
  return _then(_self.copyWith(
rule: null == rule ? _self.rule : rule // ignore: cast_nullable_to_non_nullable
as Rule,reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,severityLevel: null == severityLevel ? _self.severityLevel : severityLevel // ignore: cast_nullable_to_non_nullable
as SeverityLevel,
  ));
}
/// Create a copy of RecommendedRuleSeverity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RuleCopyWith<$Res> get rule {
  
  return $RuleCopyWith<$Res>(_self.rule, (value) {
    return _then(_self.copyWith(rule: value));
  });
}
}


/// @nodoc


class RecommendedRuleSeverityDart implements RecommendedRuleSeverity {
  const RecommendedRuleSeverityDart({required this.rule, required this.reason, required this.severityLevel});
  

@override final  Rule rule;
@override final  String reason;
@override final  SeverityLevel severityLevel;

/// Create a copy of RecommendedRuleSeverity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RecommendedRuleSeverityDartCopyWith<RecommendedRuleSeverityDart> get copyWith => _$RecommendedRuleSeverityDartCopyWithImpl<RecommendedRuleSeverityDart>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RecommendedRuleSeverityDart&&(identical(other.rule, rule) || other.rule == rule)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.severityLevel, severityLevel) || other.severityLevel == severityLevel));
}


@override
int get hashCode => Object.hash(runtimeType,rule,reason,severityLevel);

@override
String toString() {
  return 'RecommendedRuleSeverity.dart(rule: $rule, reason: $reason, severityLevel: $severityLevel)';
}


}

/// @nodoc
abstract mixin class $RecommendedRuleSeverityDartCopyWith<$Res> implements $RecommendedRuleSeverityCopyWith<$Res> {
  factory $RecommendedRuleSeverityDartCopyWith(RecommendedRuleSeverityDart value, $Res Function(RecommendedRuleSeverityDart) _then) = _$RecommendedRuleSeverityDartCopyWithImpl;
@override @useResult
$Res call({
 Rule rule, String reason, SeverityLevel severityLevel
});


@override $RuleCopyWith<$Res> get rule;

}
/// @nodoc
class _$RecommendedRuleSeverityDartCopyWithImpl<$Res>
    implements $RecommendedRuleSeverityDartCopyWith<$Res> {
  _$RecommendedRuleSeverityDartCopyWithImpl(this._self, this._then);

  final RecommendedRuleSeverityDart _self;
  final $Res Function(RecommendedRuleSeverityDart) _then;

/// Create a copy of RecommendedRuleSeverity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? rule = null,Object? reason = null,Object? severityLevel = null,}) {
  return _then(RecommendedRuleSeverityDart(
rule: null == rule ? _self.rule : rule // ignore: cast_nullable_to_non_nullable
as Rule,reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,severityLevel: null == severityLevel ? _self.severityLevel : severityLevel // ignore: cast_nullable_to_non_nullable
as SeverityLevel,
  ));
}

/// Create a copy of RecommendedRuleSeverity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RuleCopyWith<$Res> get rule {
  
  return $RuleCopyWith<$Res>(_self.rule, (value) {
    return _then(_self.copyWith(rule: value));
  });
}
}

/// @nodoc


class RecommendedRuleSeverityFlutter implements RecommendedRuleSeverity {
  const RecommendedRuleSeverityFlutter({required this.rule, required this.reason, required this.severityLevel});
  

@override final  Rule rule;
@override final  String reason;
@override final  SeverityLevel severityLevel;

/// Create a copy of RecommendedRuleSeverity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RecommendedRuleSeverityFlutterCopyWith<RecommendedRuleSeverityFlutter> get copyWith => _$RecommendedRuleSeverityFlutterCopyWithImpl<RecommendedRuleSeverityFlutter>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RecommendedRuleSeverityFlutter&&(identical(other.rule, rule) || other.rule == rule)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.severityLevel, severityLevel) || other.severityLevel == severityLevel));
}


@override
int get hashCode => Object.hash(runtimeType,rule,reason,severityLevel);

@override
String toString() {
  return 'RecommendedRuleSeverity.flutter(rule: $rule, reason: $reason, severityLevel: $severityLevel)';
}


}

/// @nodoc
abstract mixin class $RecommendedRuleSeverityFlutterCopyWith<$Res> implements $RecommendedRuleSeverityCopyWith<$Res> {
  factory $RecommendedRuleSeverityFlutterCopyWith(RecommendedRuleSeverityFlutter value, $Res Function(RecommendedRuleSeverityFlutter) _then) = _$RecommendedRuleSeverityFlutterCopyWithImpl;
@override @useResult
$Res call({
 Rule rule, String reason, SeverityLevel severityLevel
});


@override $RuleCopyWith<$Res> get rule;

}
/// @nodoc
class _$RecommendedRuleSeverityFlutterCopyWithImpl<$Res>
    implements $RecommendedRuleSeverityFlutterCopyWith<$Res> {
  _$RecommendedRuleSeverityFlutterCopyWithImpl(this._self, this._then);

  final RecommendedRuleSeverityFlutter _self;
  final $Res Function(RecommendedRuleSeverityFlutter) _then;

/// Create a copy of RecommendedRuleSeverity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? rule = null,Object? reason = null,Object? severityLevel = null,}) {
  return _then(RecommendedRuleSeverityFlutter(
rule: null == rule ? _self.rule : rule // ignore: cast_nullable_to_non_nullable
as Rule,reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,severityLevel: null == severityLevel ? _self.severityLevel : severityLevel // ignore: cast_nullable_to_non_nullable
as SeverityLevel,
  ));
}

/// Create a copy of RecommendedRuleSeverity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RuleCopyWith<$Res> get rule {
  
  return $RuleCopyWith<$Res>(_self.rule, (value) {
    return _then(_self.copyWith(rule: value));
  });
}
}

// dart format on
