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
              (v) => (v as List<dynamic>).map((e) => e as String).toList()),
          details: $checkedConvert('deprecatedDetails', (v) => v as String),
          state: $checkedConvert(
              'state',
              (v) => const _StateJsonConverter()
                  .fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
      fieldKeyMap: const {'details': 'deprecatedDetails'},
    );

Map<String, dynamic> _$$_RuleToJson(_$_Rule instance) => <String, dynamic>{
      'name': instance.name,
      'categories': instance.categories,
      'deprecatedDetails': instance.details,
      'state': const _StateJsonConverter().toJson(instance.state),
    };
