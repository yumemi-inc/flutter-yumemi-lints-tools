// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'analysis_options_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$analysisOptionsServiceHash() =>
    r'372e84ea1980e10830eb42cb45e2e6ba30164218';

/// See also [analysisOptionsService].
@ProviderFor(analysisOptionsService)
final analysisOptionsServiceProvider =
    AutoDisposeProvider<AnalysisOptionsService>.internal(
      analysisOptionsService,
      name: r'analysisOptionsServiceProvider',
      debugGetCreateSourceHash:
          const bool.fromEnvironment('dart.vm.product')
              ? null
              : _$analysisOptionsServiceHash,
      dependencies: <ProviderOrFamily>[outputDirProvider],
      allTransitiveDependencies: <ProviderOrFamily>{
        outputDirProvider,
        ...?outputDirProvider.allTransitiveDependencies,
      },
    );

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef AnalysisOptionsServiceRef =
    AutoDisposeProviderRef<AnalysisOptionsService>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
