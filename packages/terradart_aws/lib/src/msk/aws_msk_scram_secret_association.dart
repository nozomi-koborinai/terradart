// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_msk_scram_secret_association`.
const Set<String> _awsMskScramSecretAssociationSensitive = <String>{};

/// Factory wrapper for `aws_msk_scram_secret_association`.
final class AwsMskScramSecretAssociation extends Resource {
  static const String tfType = 'aws_msk_scram_secret_association';

  AwsMskScramSecretAssociation(
    super.localName, {
    required TfArg<String> clusterArn,
    TfArg<String>? region,
    required TfArg<List<String>> secretArnList,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cluster_arn': clusterArn,
           'region': ?region,
           'secret_arn_list': secretArnList,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsMskScramSecretAssociationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsMskScramSecretAssociation>`.
  RefTo<AwsMskScramSecretAssociation> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `cluster_arn` attribute.
  TfRef<String> get clusterArn => TfRef.attribute<String>(this, 'cluster_arn');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `secret_arn_list` attribute.
  TfRef<List<String>> get secretArnList =>
      TfRef.attribute<List<String>>(this, 'secret_arn_list');
}
