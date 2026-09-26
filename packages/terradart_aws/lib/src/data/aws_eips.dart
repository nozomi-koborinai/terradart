// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_eips`.
const Set<String> _awsEipsSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `aws_eips` (derived from provider schema).
@immutable
final class DataEipsFilter {
  const DataEipsFilter({required this.name, required this.values});

  final TfArg<String> name;

  final TfArg<List<Object?>> values;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Factory wrapper for `aws_eips`.
final class DataAwsEips extends Data {
  static const String tfType = 'aws_eips';

  DataAwsEips({
    required super.localName,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<DataEipsFilter>? filter,
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
  Set<String> get sensitiveFields => _awsEipsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `allocation_ids` attribute.
  TfRef<List<String>> get allocationIds =>
      TfRef.attribute<List<String>>(this, 'allocation_ids');

  /// Reference to `public_ips` attribute.
  TfRef<List<String>> get publicIps =>
      TfRef.attribute<List<String>>(this, 'public_ips');
}
