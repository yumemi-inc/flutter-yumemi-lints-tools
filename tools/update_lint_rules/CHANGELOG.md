# Changelog

Follow the [Keep a Changelog] format.

## 4.1.0 - 2025-05-29

### Added

- Output `formatter` section in `analysis_options.yaml` for Dart 3.8.0 or later. ( `trailing_commas: preserve` )

## 4.0.0 - 2025-04-22

### Changed

- Migrated source of [rules.json] to [message.yaml].
  - Also removed from [yumemi-inc/flutter-yumemi-lints]  since the value of `incompatibles` does not exist in `message.yaml`.
  - [Status] in `Lint rules` has been reflected and status or maturity level has been activated.

## 3.1.0 - 2025-01-27

### Added

- Add `specify_nonobvious_local_variable_types` to the deprecated rules.

### Improved

- Update reason for 'always_specify_types' to include additional conflicting rules.

## 3.0.0 - 2025-01-21

### Changed

- Update version string parsing logic to handle new format in rules.json where sinceDartSdk field changed from "major.minor.patch" (e.g. "2.2.0") to "major.minor" format (e.g. "2.2").

## 2.0.0 - 2024-08-15

### Changed

- Remove "group" and change to output "categories".

## 1.0.0 - 2023-09-04

- Initial version.

<!-- Links -->

[Keep a Changelog]: https://keepachangelog.com

[rules.json]: https://github.com/dart-lang/sdk/blob/ae6da8b926f208bf87d2e11375be5c611c27ee1b/pkg/linter/tool/machine/rules.json

[message.yaml]: https://github.com/dart-lang/sdk/blob/ae6da8b926f208bf87d2e11375be5c611c27ee1b/pkg/linter/messages.yaml

[Status]: https://dart.dev/tools/linter-rules#status

[yumemi-inc/flutter-yumemi-lints]: https://github.com/yumemi-inc/flutter-yumemi-lints
