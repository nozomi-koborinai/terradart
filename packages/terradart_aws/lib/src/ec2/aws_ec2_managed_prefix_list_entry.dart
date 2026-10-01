// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ec2_managed_prefix_list_entry`.
const Set<String> _awsEc2ManagedPrefixListEntrySensitive = <String>{};

/// Factory wrapper for `aws_ec2_managed_prefix_list_entry`.
final class AwsEc2ManagedPrefixListEntry extends Resource {
  static const String tfType = 'aws_ec2_managed_prefix_list_entry';

  AwsEc2ManagedPrefixListEntry(
    super.localName, {
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
           'description': ?description,
           'prefix_list_id': prefixListId,
           'region': ?region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEc2ManagedPrefixListEntrySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsEc2ManagedPrefixListEntry>`.
  RefTo<AwsEc2ManagedPrefixListEntry> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `cidr` attribute.
  TfRef<String> get cidr => TfRef.attribute<String>(this, 'cidr');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `prefix_list_id` attribute.
  TfRef<String> get prefixListId =>
      TfRef.attribute<String>(this, 'prefix_list_id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
