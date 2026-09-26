// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ebs_volumes`.
const Set<String> _awsEbsVolumesSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `aws_ebs_volumes` (derived from provider schema).
@immutable
final class DataEbsVolumesFilter {
  const DataEbsVolumesFilter({required this.name, required this.values});

  final TfArg<String> name;

  final TfArg<List<Object?>> values;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Factory wrapper for `aws_ebs_volumes`.
final class DataAwsEbsVolumes extends Data {
  static const String tfType = 'aws_ebs_volumes';

  DataAwsEbsVolumes({
    required super.localName,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<DataEbsVolumesFilter>? filter,
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
  Set<String> get sensitiveFields => _awsEbsVolumesSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `ids` attribute.
  TfRef<List<String>> get ids => TfRef.attribute<List<String>>(this, 'ids');
}
