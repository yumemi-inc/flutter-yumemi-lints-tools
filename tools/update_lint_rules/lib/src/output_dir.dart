import 'package:file/file.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'output_dir.g.dart';

@Riverpod(dependencies: [])
external Directory outputDir(Ref ref);
