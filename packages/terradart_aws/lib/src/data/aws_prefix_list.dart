// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_prefix_list`.
const Set<String> _awsPrefixListSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `aws_prefix_list` (derived from provider schema).
@immutable
final class DataPrefixListFilter {
  const DataPrefixListFilter({required this.name, required this.values});

  final TfArg<String> name;

  final TfArg<List<Object?>> values;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Factory wrapper for `aws_prefix_list`.
final class DataAwsPrefixList extends Data {
  static const String tfType = 'aws_prefix_list';

  DataAwsPrefixList({
    required super.localName,
    TfArg<String>? name,
    TfArg<String>? prefixListId,
    TfArg<String>? region,
    List<DataPrefixListFilter>? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (name != null) 'name': name,
           if (prefixListId != null) 'prefix_list_id': prefixListId,
           if (region != null) 'region': region,
           if (filter != null)
             'filter': TfArg.literal([for (final e in filter) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsPrefixListSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `cidr_blocks` attribute.
  TfRef<List<String>> get cidrBlocks =>
      TfRef.attribute<List<String>>(this, 'cidr_blocks');
}
