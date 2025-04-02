// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'lint_code_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LintCodeDto _$$_LintCodeDtoFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_LintCodeDto',
      json,
      ($checkedConvert) {
        final val = _$_LintCodeDto(
          name: $checkedConvert('name', (v) => v as String),
          sharedName: $checkedConvert('sharedName', (v) => v as String?),
          problemMessage:
              $checkedConvert('problemMessage', (v) => v as String?),
          correctionMessage:
              $checkedConvert('correctionMessage', (v) => v as String?),
          state: $checkedConvert('state', (v) => v as Map<String, dynamic>?),
          categories: $checkedConvert('categories',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
          hasPublishedDocs:
              $checkedConvert('hasPublishedDocs', (v) => v as bool?),
          documentation: $checkedConvert('documentation', (v) => v as String?),
          deprecatedDetails:
              $checkedConvert('deprecatedDetails', (v) => v as String?),
          todo: $checkedConvert('todo', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_LintCodeDtoToJson(_$_LintCodeDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'sharedName': instance.sharedName,
      'problemMessage': instance.problemMessage,
      'correctionMessage': instance.correctionMessage,
      'state': instance.state,
      'categories': instance.categories,
      'hasPublishedDocs': instance.hasPublishedDocs,
      'documentation': instance.documentation,
      'deprecatedDetails': instance.deprecatedDetails,
      'todo': instance.todo,
    };
