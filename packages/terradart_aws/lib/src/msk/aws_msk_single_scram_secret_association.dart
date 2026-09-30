// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_msk_single_scram_secret_association`.
const Set<String> _awsMskSingleScramSecretAssociationSensitive = <String>{};

/// Factory wrapper for `aws_msk_single_scram_secret_association`.
final class AwsMskSingleScramSecretAssociation extends Resource {
  static const String tfType = 'aws_msk_single_scram_secret_association';

  AwsMskSingleScramSecretAssociation({
    required super.localName,
    required TfArg<String> clusterArn,
    TfArg<String>? region,
    required TfArg<String> secretArn,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cluster_arn': clusterArn,
           'region': ?region,
           'secret_arn': secretArn,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsMskSingleScramSecretAssociationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsMskSingleScramSecretAssociation>`.
  RefTo<AwsMskSingleScramSecretAssociation> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `cluster_arn` attribute.
  TfRef<String> get clusterArnRef =>
      TfRef.attribute<String>(this, 'cluster_arn');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `secret_arn` attribute.
  TfRef<String> get secretArnRef => TfRef.attribute<String>(this, 'secret_arn');
}
