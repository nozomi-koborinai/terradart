// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_regions`.
const Set<String> _awsRegionsSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `aws_regions` (derived from provider schema).
@immutable
final class DataRegionsFilter {
  const DataRegionsFilter({required this.name, required this.values});

  final TfArg<String> name;

  final TfArg<List<Object?>> values;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Factory wrapper for `aws_regions`.
final class DataAwsRegions extends Data {
  static const String tfType = 'aws_regions';

  DataAwsRegions({
    required super.localName,
    TfArg<bool>? allRegions,
    List<DataRegionsFilter>? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (allRegions != null) 'all_regions': allRegions,
           if (filter != null)
             'filter': TfArg.literal([for (final e in filter) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRegionsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `names` attribute.
  TfRef<List<String>> get names => TfRef.attribute<List<String>>(this, 'names');
}
