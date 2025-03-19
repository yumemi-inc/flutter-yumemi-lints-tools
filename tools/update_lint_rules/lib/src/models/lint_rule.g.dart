// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'lint_rule.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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
    );

Map<String, dynamic> _$$_RuleToJson(_$_Rule instance) => <String, dynamic>{
      'name': instance.name,
      'categories': instance.categories,
      'deprecatedDetails': instance.details,
      'state':
          _$JsonConverterToJson<Map<String, dynamic>, Map<RuleState, Since>>(
              instance.state, const _StateJsonConverter().toJson),
    };

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
