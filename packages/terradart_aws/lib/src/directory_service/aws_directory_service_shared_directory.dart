// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_directory_service_shared_directory`.
const Set<String> _awsDirectoryServiceSharedDirectorySensitive = <String>{
  'notes',
};

/// Typed helper for the `target` block of
/// `aws_directory_service_shared_directory` (derived from provider schema).
@immutable
final class DirectoryServiceSharedDirectoryTarget {
  const DirectoryServiceSharedDirectoryTarget({required this.id, this.type});

  final TfArg<String> id;

  final TfArg<String>? type;

  Map<String, Object?> encode() => {
    'id': id.toTfJson(),
    if (type != null) 'type': type!.toTfJson(),
  };
}

/// Factory wrapper for `aws_directory_service_shared_directory`.
final class AwsDirectoryServiceSharedDirectory extends Resource {
  static const String tfType = 'aws_directory_service_shared_directory';

  AwsDirectoryServiceSharedDirectory({
    required super.localName,
    required TfArg<String> directoryId,
    TfArg<String>? method,
    TfArg<String>? notes,
    TfArg<String>? region,
    required DirectoryServiceSharedDirectoryTarget target,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'directory_id': directoryId,
           if (method != null) 'method': method,
           if (notes != null) 'notes': notes,
           if (region != null) 'region': region,
           'target': TfArg.literal(target.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsDirectoryServiceSharedDirectorySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `shared_directory_id` attribute.
  TfRef<String> get sharedDirectoryId =>
      TfRef.attribute<String>(this, 'shared_directory_id');
}
