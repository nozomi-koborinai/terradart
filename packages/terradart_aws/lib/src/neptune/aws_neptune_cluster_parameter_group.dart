// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_neptune_cluster_parameter_group`.
const Set<String> _awsNeptuneClusterParameterGroupSensitive = <String>{};

/// At most one of `name`, `name_prefix` on `aws_neptune_cluster_parameter_group`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.name(...)`.
sealed class NeptuneClusterParameterGroupNameOrNamePrefix {
  const NeptuneClusterParameterGroupNameOrNamePrefix();

  /// Sets `name`.
  const factory NeptuneClusterParameterGroupNameOrNamePrefix.name(
    TfArg<String> name,
  ) = NeptuneClusterParameterGroupNameOrNamePrefixName;

  /// Sets `name_prefix`.
  const factory NeptuneClusterParameterGroupNameOrNamePrefix.namePrefix(
    TfArg<String> namePrefix,
  ) = NeptuneClusterParameterGroupNameOrNamePrefixNamePrefix;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [NeptuneClusterParameterGroupNameOrNamePrefix.name] choice: sets `name`.
final class NeptuneClusterParameterGroupNameOrNamePrefixName
    extends NeptuneClusterParameterGroupNameOrNamePrefix {
  const NeptuneClusterParameterGroupNameOrNamePrefixName(this.name);

  final TfArg<String> name;

  @override
  String get blockKey => 'name';

  @override
  Map<String, Object?> encode() => {'name': name.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'name': name};
}

/// The [NeptuneClusterParameterGroupNameOrNamePrefix.namePrefix] choice: sets `name_prefix`.
final class NeptuneClusterParameterGroupNameOrNamePrefixNamePrefix
    extends NeptuneClusterParameterGroupNameOrNamePrefix {
  const NeptuneClusterParameterGroupNameOrNamePrefixNamePrefix(this.namePrefix);

  final TfArg<String> namePrefix;

  @override
  String get blockKey => 'name_prefix';

  @override
  Map<String, Object?> encode() => {'name_prefix': namePrefix.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'name_prefix': namePrefix};
}

/// Typed helper for the `parameter` block of
/// `aws_neptune_cluster_parameter_group` (derived from provider schema).
@immutable
final class NeptuneClusterParameterGroupParameter {
  const NeptuneClusterParameterGroupParameter({
    this.applyMethod,
    required this.name,
    required this.value,
  });

  final TfArg<NeptuneClusterParameterGroupParameterApplyMethod>? applyMethod;

  final TfArg<String> name;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    if (applyMethod != null) 'apply_method': applyMethod!.toTfJson(),
    'name': name.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// `apply_method` — derived from the provider schema description.
enum NeptuneClusterParameterGroupParameterApplyMethod implements TerraformEnum {
  immediate('immediate'),
  pendingReboot('pending-reboot');

  const NeptuneClusterParameterGroupParameterApplyMethod(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_neptune_cluster_parameter_group`.
final class AwsNeptuneClusterParameterGroup extends Resource {
  static const String tfType = 'aws_neptune_cluster_parameter_group';

  AwsNeptuneClusterParameterGroup({
    required super.localName,
    TfArg<String>? description,
    required TfArg<String> family,
    NeptuneClusterParameterGroupNameOrNamePrefix? nameOrNamePrefix,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<NeptuneClusterParameterGroupParameter>? parameter,
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
  Set<String> get sensitiveFields => _awsNeptuneClusterParameterGroupSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
