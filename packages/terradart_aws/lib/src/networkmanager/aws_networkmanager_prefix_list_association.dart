// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_networkmanager_prefix_list_association`.
const Set<String> _awsNetworkmanagerPrefixListAssociationSensitive = <String>{};

/// Factory wrapper for `aws_networkmanager_prefix_list_association`.
final class AwsNetworkmanagerPrefixListAssociation extends Resource {
  static const String tfType = 'aws_networkmanager_prefix_list_association';

  AwsNetworkmanagerPrefixListAssociation({
    required super.localName,
    required TfArg<String> coreNetworkId,
    required TfArg<String> prefixListAlias,
    required TfArg<String> prefixListArn,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'core_network_id': coreNetworkId,
           'prefix_list_alias': prefixListAlias,
           'prefix_list_arn': prefixListArn,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsNetworkmanagerPrefixListAssociationSensitive;
}
