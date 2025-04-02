import 'package:freezed_annotation/freezed_annotation.dart';

part 'lint_code_dto.freezed.dart';
part 'lint_code_dto.g.dart';

@freezed
sealed class LintCodeDto with _$LintCodeDto {
  factory LintCodeDto({
    required String name,
    required String? sharedName,
    required String? problemMessage,
    required String? correctionMessage,
    required Map<String, dynamic>? state,
    required List<String>? categories,
    required bool? hasPublishedDocs,
    required String? documentation,
    required String? deprecatedDetails,
    required String? todo,
  }) = _LintCodeDto;

  const LintCodeDto._();

  factory LintCodeDto.fromJson(Map<String, dynamic> json) =>
      _$LintCodeDtoFromJson(json);

  bool canConvertToRule() =>
      deprecatedDetails != null && categories != null && state != null;
}
