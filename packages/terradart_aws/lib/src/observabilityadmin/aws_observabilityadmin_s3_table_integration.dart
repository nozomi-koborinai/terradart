// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_observabilityadmin_s3_table_integration`.
const Set<String> _awsObservabilityadminS3TableIntegrationSensitive =
    <String>{};

/// Typed helper for the `encryption` block of
/// `aws_observabilityadmin_s3_table_integration` (derived from provider schema).
@immutable
final class ObservabilityadminS3TableIntegrationEncryption {
  const ObservabilityadminS3TableIntegrationEncryption({
    this.kmsKeyArn,
    required this.sseAlgorithm,
  });

  final TfArg<String>? kmsKeyArn;

  final TfArg<String> sseAlgorithm;

  Map<String, Object?> encode() => {
    if (kmsKeyArn != null) 'kms_key_arn': kmsKeyArn!.toTfJson(),
    'sse_algorithm': sseAlgorithm.toTfJson(),
  };
}

/// Factory wrapper for `aws_observabilityadmin_s3_table_integration`.
final class AwsObservabilityadminS3TableIntegration extends Resource {
  static const String tfType = 'aws_observabilityadmin_s3_table_integration';

  AwsObservabilityadminS3TableIntegration({
    required super.localName,
    TfArg<String>? region,
    required TfArg<String> roleArn,
    TfArg<Map<String, String>>? tags,
    List<ObservabilityadminS3TableIntegrationEncryption>? encryption,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           'role_arn': roleArn,
           if (tags != null) 'tags': tags,
           if (encryption != null)
             'encryption': TfArg.literal([
               for (final e in encryption) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsObservabilityadminS3TableIntegrationSensitive;

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `destination_table_bucket_arn` attribute.
  TfRef<String> get destinationTableBucketArn =>
      TfRef.attribute<String>(this, 'destination_table_bucket_arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}
