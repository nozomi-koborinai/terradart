// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';
import '../ram/aws_ram_resource_share.dart';

/// Sensitive field paths for `aws_ram_resource_share`.
const Set<String> _awsRamResourceShareSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `aws_ram_resource_share` (derived from provider schema).
@immutable
final class DataRamResourceShareFilter {
  const DataRamResourceShareFilter({required this.name, required this.values});

  final TfArg<String> name;

  final TfArg<List<String>> values;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Factory wrapper for `aws_ram_resource_share`.
final class DataAwsRamResourceShare extends Data {
  static const String tfType = 'aws_ram_resource_share';

  DataAwsRamResourceShare(
    super.localName, {
    TfArg<String>? name,
    TfArg<String>? region,
    required TfArg<String> resourceOwner,
    TfArg<String>? resourceShareStatus,
    TfArg<Map<String, String>>? tags,
    List<DataRamResourceShareFilter>? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': ?name,
           'region': ?region,
           'resource_owner': resourceOwner,
           'resource_share_status': ?resourceShareStatus,
           'tags': ?tags,
           if (filter != null)
             'filter': TfArg.literal([for (final e in filter) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRamResourceShareSensitive;

  /// A reference to the `aws_ram_resource_share` this data source reads, for
  /// arguments typed `RefTo<AwsRamResourceShare>`.
  RefTo<AwsRamResourceShare> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `owning_account_id` attribute.
  TfRef<String> get owningAccountId =>
      TfRef.attribute<String>(this, 'owning_account_id');

  /// Reference to `resource_arns` attribute.
  TfRef<List<String>> get resourceArns =>
      TfRef.attribute<List<String>>(this, 'resource_arns');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `resource_owner` attribute.
  TfRef<String> get resourceOwner =>
      TfRef.attribute<String>(this, 'resource_owner');

  /// Reference to `resource_share_status` attribute.
  TfRef<String> get resourceShareStatus =>
      TfRef.attribute<String>(this, 'resource_share_status');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
