// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ami_ids`.
const Set<String> _awsAmiIdsSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `aws_ami_ids` (derived from provider schema).
@immutable
final class DataAmiIdsFilter {
  const DataAmiIdsFilter({required this.name, required this.values});

  final TfArg<String> name;

  final TfArg<List<Object?>> values;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Factory wrapper for `aws_ami_ids`.
final class DataAwsAmiIds extends Data {
  static const String tfType = 'aws_ami_ids';

  DataAwsAmiIds({
    required super.localName,
    TfArg<List<String>>? executableUsers,
    TfArg<bool>? includeDeprecated,
    TfArg<String>? nameRegex,
    required TfArg<List<String>> owners,
    TfArg<String>? region,
    TfArg<bool>? sortAscending,
    List<DataAmiIdsFilter>? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (executableUsers != null) 'executable_users': executableUsers,
           if (includeDeprecated != null)
             'include_deprecated': includeDeprecated,
           if (nameRegex != null) 'name_regex': nameRegex,
           'owners': owners,
           if (region != null) 'region': region,
           if (sortAscending != null) 'sort_ascending': sortAscending,
           if (filter != null)
             'filter': TfArg.literal([for (final e in filter) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAmiIdsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `ids` attribute.
  TfRef<List<String>> get ids => TfRef.attribute<List<String>>(this, 'ids');
}
