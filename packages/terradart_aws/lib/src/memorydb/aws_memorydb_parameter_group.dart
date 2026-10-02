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
///
/// Pick one with a dot shorthand: `.name(...)`.
sealed class MemorydbParameterGroupName {
  const MemorydbParameterGroupName();

  /// Sets `name`.
  const factory MemorydbParameterGroupName.name(TfArg<String> name) =
      MemorydbParameterGroupNameChoice;

  /// Sets `name_prefix`.
  const factory MemorydbParameterGroupName.namePrefix(
    TfArg<String> namePrefix,
  ) = MemorydbParameterGroupNamePrefix;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  @internal
  Map<String, TfArg<Object?>> get argMap;
}

/// The [MemorydbParameterGroupName.name] choice: sets `name`.
final class MemorydbParameterGroupNameChoice
    extends MemorydbParameterGroupName {
  const MemorydbParameterGroupNameChoice(this.name);

  final TfArg<String> name;

  @internal
  @override
  String get blockKey => 'name';

  @internal
  @override
  Map<String, Object?> encode() => {'name': name.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'name': name};
}

/// The [MemorydbParameterGroupName.namePrefix] choice: sets `name_prefix`.
final class MemorydbParameterGroupNamePrefix
    extends MemorydbParameterGroupName {
  const MemorydbParameterGroupNamePrefix(this.namePrefix);

  final TfArg<String> namePrefix;

  @internal
  @override
  String get blockKey => 'name_prefix';

  @internal
  @override
  Map<String, Object?> encode() => {'name_prefix': namePrefix.toTfJson()};

  @internal
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

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Factory wrapper for `aws_memorydb_parameter_group`.
final class AwsMemorydbParameterGroup extends Resource {
  static const String tfType = 'aws_memorydb_parameter_group';

  AwsMemorydbParameterGroup(
    super.localName, {
    TfArg<String>? description,
    required TfArg<String> family,
    MemorydbParameterGroupName? name,
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
           'description': ?description,
           'family': family,
           ...?name?.argMap,
           'region': ?region,
           'tags': ?tags,
           if (parameter != null)
             'parameter': TfArg.literal([
               for (final e in parameter) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsMemorydbParameterGroupSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsMemorydbParameterGroup>`.
  RefTo<AwsMemorydbParameterGroup> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `family` attribute.
  TfRef<String> get family => TfRef.attribute<String>(this, 'family');

  /// Reference to `name_prefix` attribute.
  TfRef<String> get namePrefix => TfRef.attribute<String>(this, 'name_prefix');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
