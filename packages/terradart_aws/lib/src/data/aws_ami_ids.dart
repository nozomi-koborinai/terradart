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

  final TfArg<List<String>> values;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Factory wrapper for `aws_ami_ids`.
final class DataAwsAmiIds extends Data {
  static const String tfType = 'aws_ami_ids';

  DataAwsAmiIds(
    super.localName, {
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
           'executable_users': ?executableUsers,
           'include_deprecated': ?includeDeprecated,
           'name_regex': ?nameRegex,
           'owners': owners,
           'region': ?region,
           'sort_ascending': ?sortAscending,
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

  /// Reference to `executable_users` attribute.
  TfRef<List<String>> get executableUsers =>
      TfRef.attribute<List<String>>(this, 'executable_users');

  /// Reference to `include_deprecated` attribute.
  TfRef<bool> get includeDeprecated =>
      TfRef.attribute<bool>(this, 'include_deprecated');

  /// Reference to `name_regex` attribute.
  TfRef<String> get nameRegex => TfRef.attribute<String>(this, 'name_regex');

  /// Reference to `owners` attribute.
  TfRef<List<String>> get owners =>
      TfRef.attribute<List<String>>(this, 'owners');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `sort_ascending` attribute.
  TfRef<bool> get sortAscending =>
      TfRef.attribute<bool>(this, 'sort_ascending');
}
