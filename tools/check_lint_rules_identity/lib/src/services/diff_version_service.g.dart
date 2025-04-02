// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'diff_version_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$diffVersionServiceHash() =>
    r'd7ed3e5c866f076eb24a551696eda8f09a405cb0';

/// See also [diffVersionService].
@ProviderFor(diffVersionService)
final diffVersionServiceProvider =
    AutoDisposeProvider<DiffVersionService>.internal(
      diffVersionService,
      name: r'diffVersionServiceProvider',
      debugGetCreateSourceHash:
          const bool.fromEnvironment('dart.vm.product')
              ? null
              : _$diffVersionServiceHash,
      dependencies: <ProviderOrFamily>[versionPathsFileProvider],
      allTransitiveDependencies: <ProviderOrFamily>{
        versionPathsFileProvider,
        ...?versionPathsFileProvider.allTransitiveDependencies,
      },
    );

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef DiffVersionServiceRef = AutoDisposeProviderRef<DiffVersionService>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
