// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_msk_scram_secret_association`.
const Set<String> _awsMskScramSecretAssociationSensitive = <String>{};

/// Factory wrapper for `aws_msk_scram_secret_association`.
final class AwsMskScramSecretAssociation extends Resource {
  static const String tfType = 'aws_msk_scram_secret_association';

  AwsMskScramSecretAssociation({
    required super.localName,
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
           if (region != null) 'region': region,
           'secret_arn_list': secretArnList,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsMskScramSecretAssociationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
