// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ram_resource_share`.
const Set<String> _awsRamResourceShareSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `aws_ram_resource_share` (derived from provider schema).
@immutable
final class DataRamResourceShareFilter {
  const DataRamResourceShareFilter({required this.name, required this.values});

  final TfArg<String> name;

  final TfArg<List<Object?>> values;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Factory wrapper for `aws_ram_resource_share`.
final class DataAwsRamResourceShare extends Data {
  static const String tfType = 'aws_ram_resource_share';

  DataAwsRamResourceShare({
    required super.localName,
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
           if (name != null) 'name': name,
           if (region != null) 'region': region,
           'resource_owner': resourceOwner,
           if (resourceShareStatus != null)
             'resource_share_status': resourceShareStatus,
           if (tags != null) 'tags': tags,
           if (filter != null)
             'filter': TfArg.literal([for (final e in filter) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRamResourceShareSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

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
}
