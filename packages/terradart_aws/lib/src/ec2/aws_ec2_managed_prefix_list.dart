// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ec2_managed_prefix_list`.
const Set<String> _awsEc2ManagedPrefixListSensitive = <String>{};

/// Typed helper for the `entry` block of
/// `aws_ec2_managed_prefix_list` (derived from provider schema).
@immutable
final class Ec2ManagedPrefixListEntry {
  const Ec2ManagedPrefixListEntry({required this.cidr, this.description});

  final TfArg<String> cidr;

  final TfArg<String>? description;

  Map<String, Object?> encode() => {
    'cidr': cidr.toTfJson(),
    if (description != null) 'description': description!.toTfJson(),
  };
}

/// Factory wrapper for `aws_ec2_managed_prefix_list`.
final class AwsEc2ManagedPrefixList extends Resource {
  static const String tfType = 'aws_ec2_managed_prefix_list';

  AwsEc2ManagedPrefixList({
    required super.localName,
    required TfArg<String> addressFamily,
    required TfArg<num> maxEntries,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<Ec2ManagedPrefixListEntry>? entry,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'address_family': addressFamily,
           'max_entries': maxEntries,
           'name': name,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (entry != null)
             'entry': TfArg.literal([for (final e in entry) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEc2ManagedPrefixListSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `owner_id` attribute.
  TfRef<String> get ownerId => TfRef.attribute<String>(this, 'owner_id');

  /// Reference to `version` attribute.
  TfRef<num> get version => TfRef.attribute<num>(this, 'version');
}
