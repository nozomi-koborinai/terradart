// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/aws_iam_role.dart' show AwsIamRole;
import '../kms/aws_kms_key.dart' show AwsKmsKey;

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

  final RefTo<AwsKmsKey>? kmsKeyArn;

  final ObservabilityadminS3TableIntegrationSseAlgorithm sseAlgorithm;

  @internal
  Map<String, Object?> encode() => {
    'kms_key_arn': ?kmsKeyArn?.encodeAs('arn').toTfJson(),
    'sse_algorithm': sseAlgorithm.toTfJson(),
  };
}

/// `sse_algorithm` — derived from the provider schema description.
extension type const ObservabilityadminS3TableIntegrationSseAlgorithm._(
  TfArg<String> _
) implements TfArg<String> {
  ObservabilityadminS3TableIntegrationSseAlgorithm.variable(String name)
    : this._(TfArg.variable(name));
  ObservabilityadminS3TableIntegrationSseAlgorithm.expression(String template)
    : this._(TfArg.expression(template));
  const ObservabilityadminS3TableIntegrationSseAlgorithm.arg(TfArg<String> arg)
    : this._(arg);

  static const awsKms = ObservabilityadminS3TableIntegrationSseAlgorithm._(
    TfArgLiteral('aws:kms'),
  );
  static const aes256 = ObservabilityadminS3TableIntegrationSseAlgorithm._(
    TfArgLiteral('AES256'),
  );

  static const List<ObservabilityadminS3TableIntegrationSseAlgorithm> values = [
    awsKms,
    aes256,
  ];
}

/// Factory wrapper for `aws_observabilityadmin_s3_table_integration`.
final class AwsObservabilityadminS3TableIntegration extends Resource {
  static const String tfType = 'aws_observabilityadmin_s3_table_integration';

  AwsObservabilityadminS3TableIntegration(
    super.localName, {
    TfArg<String>? region,
    required RefTo<AwsIamRole> roleArn,
    TfArg<Map<String, String>>? tags,
    List<ObservabilityadminS3TableIntegrationEncryption>? encryption,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'region': ?region,
           'role_arn': roleArn.encodeAs('arn'),
           'tags': ?tags,
           if (encryption != null)
             'encryption': TfArg.literal([
               for (final e in encryption) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsObservabilityadminS3TableIntegrationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsObservabilityadminS3TableIntegration>`.
  RefTo<AwsObservabilityadminS3TableIntegration> get ref => RefTo.of(this);

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `destination_table_bucket_arn` attribute.
  TfRef<String> get destinationTableBucketArn =>
      TfRef.attribute<String>(this, 'destination_table_bucket_arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `role_arn` attribute.
  TfRef<String> get roleArn => TfRef.attribute<String>(this, 'role_arn');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
