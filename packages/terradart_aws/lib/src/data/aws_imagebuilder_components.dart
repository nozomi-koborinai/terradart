// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_imagebuilder_components`.
const Set<String> _awsImagebuilderComponentsSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `aws_imagebuilder_components` (derived from provider schema).
@immutable
final class DataImagebuilderComponentsFilter {
  const DataImagebuilderComponentsFilter({
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

/// Factory wrapper for `aws_imagebuilder_components`.
final class DataAwsImagebuilderComponents extends Data {
  static const String tfType = 'aws_imagebuilder_components';

  DataAwsImagebuilderComponents({
    required super.localName,
    TfArg<String>? owner,
    TfArg<String>? region,
    List<DataImagebuilderComponentsFilter>? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (owner != null) 'owner': owner,
           if (region != null) 'region': region,
           if (filter != null)
             'filter': TfArg.literal([for (final e in filter) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsImagebuilderComponentsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arns` attribute.
  TfRef<List<String>> get arns => TfRef.attribute<List<String>>(this, 'arns');

  /// Reference to `names` attribute.
  TfRef<List<String>> get names => TfRef.attribute<List<String>>(this, 'names');
}
