// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_s3files_file_systems`.
const Set<String> _awsS3filesFileSystemsSensitive = <String>{};

/// Typed helper for the `file_systems` block of
/// `aws_s3files_file_systems` (derived from provider schema).
@immutable
final class DataS3filesFileSystemsFileSystems {
  const DataS3filesFileSystemsFileSystems();

  Map<String, Object?> encode() => {};
}

/// Factory wrapper for `aws_s3files_file_systems`.
final class DataAwsS3filesFileSystems extends Data {
  static const String tfType = 'aws_s3files_file_systems';

  DataAwsS3filesFileSystems({
    required super.localName,
    TfArg<String>? region,
    List<DataS3filesFileSystemsFileSystems>? fileSystems,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           if (fileSystems != null)
             'file_systems': TfArg.literal([
               for (final e in fileSystems) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsS3filesFileSystemsSensitive;
}
