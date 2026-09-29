// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_memorydb_parameter_group`.
const Set<String> _awsMemorydbParameterGroupSensitive = <String>{};

/// At most one of `name`, `name_prefix` on `aws_memorydb_parameter_group`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
sealed class MemorydbParameterGroupNameOrNamePrefix {
  const MemorydbParameterGroupNameOrNamePrefix();

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// Sets `name` (one of the [MemorydbParameterGroupNameOrNamePrefix] choices).
final class MemorydbParameterGroupNameOption
    extends MemorydbParameterGroupNameOrNamePrefix {
  const MemorydbParameterGroupNameOption({required this.name});

  final TfArg<String> name;

  @override
  String get blockKey => 'name';

  @override
  Map<String, Object?> encode() => {'name': name.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'name': name};
}

/// Sets `name_prefix` (one of the [MemorydbParameterGroupNameOrNamePrefix] choices).
final class MemorydbParameterGroupNamePrefixOption
    extends MemorydbParameterGroupNameOrNamePrefix {
  const MemorydbParameterGroupNamePrefixOption({required this.namePrefix});

  final TfArg<String> namePrefix;

  @override
  String get blockKey => 'name_prefix';

  @override
  Map<String, Object?> encode() => {'name_prefix': namePrefix.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'name_prefix': namePrefix};
}

/// Typed helper for the `parameter` block of
/// `aws_memorydb_parameter_group` (derived from provider schema).
@immutable
final class MemorydbParameterGroupParameter {
  const MemorydbParameterGroupParameter({
    required this.name,
    required this.value,
  });

  final TfArg<String> name;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Factory wrapper for `aws_memorydb_parameter_group`.
final class AwsMemorydbParameterGroup extends Resource {
  static const String tfType = 'aws_memorydb_parameter_group';

  AwsMemorydbParameterGroup({
    required super.localName,
    TfArg<String>? description,
    required TfArg<String> family,
    MemorydbParameterGroupNameOrNamePrefix? nameOrNamePrefix,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<MemorydbParameterGroupParameter>? parameter,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (description != null) 'description': description,
           'family': family,
           ...?nameOrNamePrefix?.argMap,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (parameter != null)
             'parameter': TfArg.literal([
               for (final e in parameter) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsMemorydbParameterGroupSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
