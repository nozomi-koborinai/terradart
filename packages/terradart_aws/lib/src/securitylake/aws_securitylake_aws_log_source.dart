// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_securitylake_aws_log_source`.
const Set<String> _awsSecuritylakeAwsLogSourceSensitive = <String>{};

/// Typed helper for the `source` block of
/// `aws_securitylake_aws_log_source` (derived from provider schema).
@immutable
final class SecuritylakeAwsLogSourceSource {
  const SecuritylakeAwsLogSourceSource({
    this.accounts,
    required this.regions,
    required this.sourceName,
    this.sourceVersion,
  });

  final TfArg<List<Object?>>? accounts;

  final TfArg<List<Object?>> regions;

  final TfArg<String> sourceName;

  final TfArg<String>? sourceVersion;

  Map<String, Object?> encode() => {
    if (accounts != null) 'accounts': accounts!.toTfJson(),
    'regions': regions.toTfJson(),
    'source_name': sourceName.toTfJson(),
    if (sourceVersion != null) 'source_version': sourceVersion!.toTfJson(),
  };
}

/// Factory wrapper for `aws_securitylake_aws_log_source`.
final class AwsSecuritylakeAwsLogSource extends Resource {
  static const String tfType = 'aws_securitylake_aws_log_source';

  AwsSecuritylakeAwsLogSource({
    required super.localName,
    TfArg<String>? region,
    List<SecuritylakeAwsLogSourceSource>? source,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           if (source != null)
             'source': TfArg.literal([for (final e in source) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSecuritylakeAwsLogSourceSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
