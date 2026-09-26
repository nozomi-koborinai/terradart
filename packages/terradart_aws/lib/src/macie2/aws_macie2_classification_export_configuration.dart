// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_macie2_classification_export_configuration`.
const Set<String> _awsMacie2ClassificationExportConfigurationSensitive =
    <String>{};

/// Typed helper for the `s3_destination` block of
/// `aws_macie2_classification_export_configuration` (derived from provider schema).
@immutable
final class Macie2ClassificationExportConfigurationS3Destination {
  const Macie2ClassificationExportConfigurationS3Destination({
    required this.bucketName,
    this.keyPrefix,
    required this.kmsKeyArn,
  });

  final TfArg<String> bucketName;

  final TfArg<String>? keyPrefix;

  final TfArg<String> kmsKeyArn;

  Map<String, Object?> encode() => {
    'bucket_name': bucketName.toTfJson(),
    if (keyPrefix != null) 'key_prefix': keyPrefix!.toTfJson(),
    'kms_key_arn': kmsKeyArn.toTfJson(),
  };
}

/// Factory wrapper for `aws_macie2_classification_export_configuration`.
final class AwsMacie2ClassificationExportConfiguration extends Resource {
  static const String tfType = 'aws_macie2_classification_export_configuration';

  AwsMacie2ClassificationExportConfiguration({
    required super.localName,
    TfArg<String>? region,
    required Macie2ClassificationExportConfigurationS3Destination s3Destination,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           's3_destination': TfArg.literal(s3Destination.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsMacie2ClassificationExportConfigurationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
