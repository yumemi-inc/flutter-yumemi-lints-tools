// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lint_code_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LintCodeDto {

 String get name; String? get sharedName; String? get problemMessage; String? get correctionMessage; Map<String, dynamic>? get state; List<String>? get categories; bool? get hasPublishedDocs; String? get documentation; String? get deprecatedDetails; String? get todo;
/// Create a copy of LintCodeDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LintCodeDtoCopyWith<LintCodeDto> get copyWith => _$LintCodeDtoCopyWithImpl<LintCodeDto>(this as LintCodeDto, _$identity);

  /// Serializes this LintCodeDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LintCodeDto&&(identical(other.name, name) || other.name == name)&&(identical(other.sharedName, sharedName) || other.sharedName == sharedName)&&(identical(other.problemMessage, problemMessage) || other.problemMessage == problemMessage)&&(identical(other.correctionMessage, correctionMessage) || other.correctionMessage == correctionMessage)&&const DeepCollectionEquality().equals(other.state, state)&&const DeepCollectionEquality().equals(other.categories, categories)&&(identical(other.hasPublishedDocs, hasPublishedDocs) || other.hasPublishedDocs == hasPublishedDocs)&&(identical(other.documentation, documentation) || other.documentation == documentation)&&(identical(other.deprecatedDetails, deprecatedDetails) || other.deprecatedDetails == deprecatedDetails)&&(identical(other.todo, todo) || other.todo == todo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,sharedName,problemMessage,correctionMessage,const DeepCollectionEquality().hash(state),const DeepCollectionEquality().hash(categories),hasPublishedDocs,documentation,deprecatedDetails,todo);

@override
String toString() {
  return 'LintCodeDto(name: $name, sharedName: $sharedName, problemMessage: $problemMessage, correctionMessage: $correctionMessage, state: $state, categories: $categories, hasPublishedDocs: $hasPublishedDocs, documentation: $documentation, deprecatedDetails: $deprecatedDetails, todo: $todo)';
}


}

/// @nodoc
abstract mixin class $LintCodeDtoCopyWith<$Res>  {
  factory $LintCodeDtoCopyWith(LintCodeDto value, $Res Function(LintCodeDto) _then) = _$LintCodeDtoCopyWithImpl;
@useResult
$Res call({
 String name, String? sharedName, String? problemMessage, String? correctionMessage, Map<String, dynamic>? state, List<String>? categories, bool? hasPublishedDocs, String? documentation, String? deprecatedDetails, String? todo
});




}
/// @nodoc
class _$LintCodeDtoCopyWithImpl<$Res>
    implements $LintCodeDtoCopyWith<$Res> {
  _$LintCodeDtoCopyWithImpl(this._self, this._then);

  final LintCodeDto _self;
  final $Res Function(LintCodeDto) _then;

/// Create a copy of LintCodeDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? sharedName = freezed,Object? problemMessage = freezed,Object? correctionMessage = freezed,Object? state = freezed,Object? categories = freezed,Object? hasPublishedDocs = freezed,Object? documentation = freezed,Object? deprecatedDetails = freezed,Object? todo = freezed,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,sharedName: freezed == sharedName ? _self.sharedName : sharedName // ignore: cast_nullable_to_non_nullable
as String?,problemMessage: freezed == problemMessage ? _self.problemMessage : problemMessage // ignore: cast_nullable_to_non_nullable
as String?,correctionMessage: freezed == correctionMessage ? _self.correctionMessage : correctionMessage // ignore: cast_nullable_to_non_nullable
as String?,state: freezed == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,categories: freezed == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as List<String>?,hasPublishedDocs: freezed == hasPublishedDocs ? _self.hasPublishedDocs : hasPublishedDocs // ignore: cast_nullable_to_non_nullable
as bool?,documentation: freezed == documentation ? _self.documentation : documentation // ignore: cast_nullable_to_non_nullable
as String?,deprecatedDetails: freezed == deprecatedDetails ? _self.deprecatedDetails : deprecatedDetails // ignore: cast_nullable_to_non_nullable
as String?,todo: freezed == todo ? _self.todo : todo // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _LintCodeDto implements LintCodeDto {
   _LintCodeDto({required this.name, required this.sharedName, required this.problemMessage, required this.correctionMessage, required final  Map<String, dynamic>? state, required final  List<String>? categories, required this.hasPublishedDocs, required this.documentation, required this.deprecatedDetails, required this.todo}): _state = state,_categories = categories;
  factory _LintCodeDto.fromJson(Map<String, dynamic> json) => _$LintCodeDtoFromJson(json);

@override final  String name;
@override final  String? sharedName;
@override final  String? problemMessage;
@override final  String? correctionMessage;
 final  Map<String, dynamic>? _state;
@override Map<String, dynamic>? get state {
  final value = _state;
  if (value == null) return null;
  if (_state is EqualUnmodifiableMapView) return _state;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

 final  List<String>? _categories;
@override List<String>? get categories {
  final value = _categories;
  if (value == null) return null;
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  bool? hasPublishedDocs;
@override final  String? documentation;
@override final  String? deprecatedDetails;
@override final  String? todo;

/// Create a copy of LintCodeDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LintCodeDtoCopyWith<_LintCodeDto> get copyWith => __$LintCodeDtoCopyWithImpl<_LintCodeDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LintCodeDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LintCodeDto&&(identical(other.name, name) || other.name == name)&&(identical(other.sharedName, sharedName) || other.sharedName == sharedName)&&(identical(other.problemMessage, problemMessage) || other.problemMessage == problemMessage)&&(identical(other.correctionMessage, correctionMessage) || other.correctionMessage == correctionMessage)&&const DeepCollectionEquality().equals(other._state, _state)&&const DeepCollectionEquality().equals(other._categories, _categories)&&(identical(other.hasPublishedDocs, hasPublishedDocs) || other.hasPublishedDocs == hasPublishedDocs)&&(identical(other.documentation, documentation) || other.documentation == documentation)&&(identical(other.deprecatedDetails, deprecatedDetails) || other.deprecatedDetails == deprecatedDetails)&&(identical(other.todo, todo) || other.todo == todo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,sharedName,problemMessage,correctionMessage,const DeepCollectionEquality().hash(_state),const DeepCollectionEquality().hash(_categories),hasPublishedDocs,documentation,deprecatedDetails,todo);

@override
String toString() {
  return 'LintCodeDto(name: $name, sharedName: $sharedName, problemMessage: $problemMessage, correctionMessage: $correctionMessage, state: $state, categories: $categories, hasPublishedDocs: $hasPublishedDocs, documentation: $documentation, deprecatedDetails: $deprecatedDetails, todo: $todo)';
}


}

/// @nodoc
abstract mixin class _$LintCodeDtoCopyWith<$Res> implements $LintCodeDtoCopyWith<$Res> {
  factory _$LintCodeDtoCopyWith(_LintCodeDto value, $Res Function(_LintCodeDto) _then) = __$LintCodeDtoCopyWithImpl;
@override @useResult
$Res call({
 String name, String? sharedName, String? problemMessage, String? correctionMessage, Map<String, dynamic>? state, List<String>? categories, bool? hasPublishedDocs, String? documentation, String? deprecatedDetails, String? todo
});




}
/// @nodoc
class __$LintCodeDtoCopyWithImpl<$Res>
    implements _$LintCodeDtoCopyWith<$Res> {
  __$LintCodeDtoCopyWithImpl(this._self, this._then);

  final _LintCodeDto _self;
  final $Res Function(_LintCodeDto) _then;

/// Create a copy of LintCodeDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? sharedName = freezed,Object? problemMessage = freezed,Object? correctionMessage = freezed,Object? state = freezed,Object? categories = freezed,Object? hasPublishedDocs = freezed,Object? documentation = freezed,Object? deprecatedDetails = freezed,Object? todo = freezed,}) {
  return _then(_LintCodeDto(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,sharedName: freezed == sharedName ? _self.sharedName : sharedName // ignore: cast_nullable_to_non_nullable
as String?,problemMessage: freezed == problemMessage ? _self.problemMessage : problemMessage // ignore: cast_nullable_to_non_nullable
as String?,correctionMessage: freezed == correctionMessage ? _self.correctionMessage : correctionMessage // ignore: cast_nullable_to_non_nullable
as String?,state: freezed == state ? _self._state : state // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,categories: freezed == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<String>?,hasPublishedDocs: freezed == hasPublishedDocs ? _self.hasPublishedDocs : hasPublishedDocs // ignore: cast_nullable_to_non_nullable
as bool?,documentation: freezed == documentation ? _self.documentation : documentation // ignore: cast_nullable_to_non_nullable
as String?,deprecatedDetails: freezed == deprecatedDetails ? _self.deprecatedDetails : deprecatedDetails // ignore: cast_nullable_to_non_nullable
as String?,todo: freezed == todo ? _self.todo : todo // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
