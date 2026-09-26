// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ec2_managed_prefix_list`.
const Set<String> _awsEc2ManagedPrefixListSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `aws_ec2_managed_prefix_list` (derived from provider schema).
@immutable
final class DataEc2ManagedPrefixListFilter {
  const DataEc2ManagedPrefixListFilter({
    required this.name,
    required this.values,
  });

  final TfArg<String> name;

  final TfArg<List<Object?>> values;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Factory wrapper for `aws_ec2_managed_prefix_list`.
final class DataAwsEc2ManagedPrefixList extends Data {
  static const String tfType = 'aws_ec2_managed_prefix_list';

  DataAwsEc2ManagedPrefixList({
    required super.localName,
    TfArg<String>? name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<DataEc2ManagedPrefixListFilter>? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (name != null) 'name': name,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (filter != null)
             'filter': TfArg.literal([for (final e in filter) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEc2ManagedPrefixListSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `address_family` attribute.
  TfRef<String> get addressFamily =>
      TfRef.attribute<String>(this, 'address_family');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `entries` attribute.
  TfRef<List<Map<String, Object?>>> get entries =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'entries');

  /// Reference to `max_entries` attribute.
  TfRef<num> get maxEntries => TfRef.attribute<num>(this, 'max_entries');

  /// Reference to `owner_id` attribute.
  TfRef<String> get ownerId => TfRef.attribute<String>(this, 'owner_id');

  /// Reference to `version` attribute.
  TfRef<num> get version => TfRef.attribute<num>(this, 'version');
}
