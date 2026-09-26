// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_db_instances`.
const Set<String> _awsDbInstancesSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `aws_db_instances` (derived from provider schema).
@immutable
final class DataDbInstancesFilter {
  const DataDbInstancesFilter({required this.name, required this.values});

  final TfArg<String> name;

  final TfArg<List<Object?>> values;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Factory wrapper for `aws_db_instances`.
final class DataAwsDbInstances extends Data {
  static const String tfType = 'aws_db_instances';

  DataAwsDbInstances({
    required super.localName,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<DataDbInstancesFilter>? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (filter != null)
             'filter': TfArg.literal([for (final e in filter) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDbInstancesSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `instance_arns` attribute.
  TfRef<List<String>> get instanceArns =>
      TfRef.attribute<List<String>>(this, 'instance_arns');

  /// Reference to `instance_identifiers` attribute.
  TfRef<List<String>> get instanceIdentifiers =>
      TfRef.attribute<List<String>>(this, 'instance_identifiers');
}
