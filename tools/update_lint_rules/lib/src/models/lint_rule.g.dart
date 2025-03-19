// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'lint_rule.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

<<<<<<< HEAD
_Rule _$RuleFromJson(Map<String, dynamic> json) => $checkedCreate(
  '_Rule',
  json,
  ($checkedConvert) {
    final val = _Rule(
      name: $checkedConvert('name', (v) => v as String),
      description: $checkedConvert('description', (v) => v as String),
      categories: $checkedConvert(
        'categories',
        (v) => (v as List<dynamic>).map((e) => e as String).toList(),
      ),
      state: $checkedConvert(
        'state',
        (v) => $enumDecode(_$RuleStateEnumMap, v),
      ),
      incompatibles: $checkedConvert(
        'incompatible',
        (v) => (v as List<dynamic>).map((e) => e as String).toList(),
      ),
      sets: $checkedConvert(
        'sets',
        (v) =>
            (v as List<dynamic>)
                .map((e) => $enumDecode(_$RuleSetEnumMap, e))
                .toList(),
      ),
      fixStatus: $checkedConvert(
        'fixStatus',
        (v) => $enumDecode(_$FixStatusEnumMap, v),
      ),
      details: $checkedConvert('details', (v) => v as String),
      since: $checkedConvert(
        'sinceDartSdk',
        (v) => Since.fromJson(v as String),
      ),
=======
_$_Rule _$$_RuleFromJson(Map<String, dynamic> json) => $checkedCreate(
      r'_$_Rule',
      json,
      ($checkedConvert) {
        final val = _$_Rule(
          name: $checkedConvert('name', (v) => v as String),
          categories: $checkedConvert('categories',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
          details: $checkedConvert('deprecatedDetails', (v) => v as String?),
          state: $checkedConvert(
              'state',
              (v) => _$JsonConverterFromJson<Map<String, dynamic>,
                      Map<RuleState, Since>>(
                  v, const _StateJsonConverter().fromJson)),
        );
        return val;
      },
      fieldKeyMap: const {'details': 'deprecatedDetails'},
>>>>>>> e55ad0c (feat: Change Rule property for yaml)
    );
    return val;
  },
  fieldKeyMap: const {'incompatibles': 'incompatible', 'since': 'sinceDartSdk'},
);

<<<<<<< HEAD
Map<String, dynamic> _$RuleToJson(_Rule instance) => <String, dynamic>{
  'name': instance.name,
  'description': instance.description,
  'categories': instance.categories,
  'state': _$RuleStateEnumMap[instance.state]!,
  'incompatible': instance.incompatibles,
  'sets': instance.sets.map((e) => _$RuleSetEnumMap[e]!).toList(),
  'fixStatus': _$FixStatusEnumMap[instance.fixStatus]!,
  'details': instance.details,
  'sinceDartSdk': instance.since.toJson(),
};
=======
Map<String, dynamic> _$$_RuleToJson(_$_Rule instance) => <String, dynamic>{
      'name': instance.name,
      'categories': instance.categories,
      'deprecatedDetails': instance.details,
      'state':
          _$JsonConverterToJson<Map<String, dynamic>, Map<RuleState, Since>>(
              instance.state, const _StateJsonConverter().toJson),
    };
>>>>>>> e55ad0c (feat: Change Rule property for yaml)

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
