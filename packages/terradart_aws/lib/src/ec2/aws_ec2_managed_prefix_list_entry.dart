// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ec2_managed_prefix_list_entry`.
const Set<String> _awsEc2ManagedPrefixListEntrySensitive = <String>{};

/// Factory wrapper for `aws_ec2_managed_prefix_list_entry`.
final class AwsEc2ManagedPrefixListEntry extends Resource {
  static const String tfType = 'aws_ec2_managed_prefix_list_entry';

  AwsEc2ManagedPrefixListEntry({
    required super.localName,
    required TfArg<String> cidr,
    TfArg<String>? description,
    required TfArg<String> prefixListId,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cidr': cidr,
           if (description != null) 'description': description,
           'prefix_list_id': prefixListId,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEc2ManagedPrefixListEntrySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
