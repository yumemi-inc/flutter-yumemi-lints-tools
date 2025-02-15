# GET_STARTED

The `yumemi_lints_tools` project has a multi-package structure.
Please install the necessary tools before making a contribution.

## 1. Install Dart SDK

[DVM] is Dart version management tool.

1. Install DVM globally.
```shell
brew install blendfactory/tap/dvm
```
2. Execute the following command in the project root.
```shell
dvm use
```
3. Run the command `dvm dart --version` to check the version.

## 2. Install Melos

[Melos] is a tool that optimizes the workflow around managing multi-package repositories.

1. Activate melos globally.
```shell
dvm dart pub global activate melos
```
2. Run the following commands to verify that the dependencies are resolved.
```shell
melos bootstrap
```

## 3. Read README.md

Read the README.md of the respective tool or package.

## Optional

- Activate GitHub Copilot according to [COPILOT.md]

<!-- Links -->
[DVM]: https://github.com/blendfactory/dvm
[Melos]: https://pub.dev/packages/melos
[COPILOT.md]: https://github.com/yumemi-inc/flutter-yumemi-lints/blob/main/docs/COPILOT.md
