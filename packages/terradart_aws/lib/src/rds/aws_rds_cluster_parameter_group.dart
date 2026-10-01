// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_rds_cluster_parameter_group`.
const Set<String> _awsRdsClusterParameterGroupSensitive = <String>{};

/// At most one of `name`, `name_prefix` on `aws_rds_cluster_parameter_group`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.name(...)`.
sealed class RdsClusterParameterGroupName {
  const RdsClusterParameterGroupName();

  /// Sets `name`.
  const factory RdsClusterParameterGroupName.name(TfArg<String> name) =
      RdsClusterParameterGroupNameChoice;

  /// Sets `name_prefix`.
  const factory RdsClusterParameterGroupName.namePrefix(
    TfArg<String> namePrefix,
  ) = RdsClusterParameterGroupNamePrefix;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [RdsClusterParameterGroupName.name] choice: sets `name`.
final class RdsClusterParameterGroupNameChoice
    extends RdsClusterParameterGroupName {
  const RdsClusterParameterGroupNameChoice(this.name);

  final TfArg<String> name;

  @override
  String get blockKey => 'name';

  @override
  Map<String, Object?> encode() => {'name': name.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'name': name};
}

/// The [RdsClusterParameterGroupName.namePrefix] choice: sets `name_prefix`.
final class RdsClusterParameterGroupNamePrefix
    extends RdsClusterParameterGroupName {
  const RdsClusterParameterGroupNamePrefix(this.namePrefix);

  final TfArg<String> namePrefix;

  @override
  String get blockKey => 'name_prefix';

  @override
  Map<String, Object?> encode() => {'name_prefix': namePrefix.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'name_prefix': namePrefix};
}

/// Typed helper for the `parameter` block of
/// `aws_rds_cluster_parameter_group` (derived from provider schema).
@immutable
final class RdsClusterParameterGroupParameter {
  const RdsClusterParameterGroupParameter({
    this.applyMethod,
    required this.name,
    required this.value,
  });

  final TfArg<RdsClusterParameterGroupApplyMethod>? applyMethod;

  final TfArg<String> name;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'apply_method': ?applyMethod?.toTfJson(),
    'name': name.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// `apply_method` — derived from the provider schema description.
enum RdsClusterParameterGroupApplyMethod implements TerraformEnum {
  immediate('immediate'),
  pendingReboot('pending-reboot');

  const RdsClusterParameterGroupApplyMethod(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_rds_cluster_parameter_group`.
final class AwsRdsClusterParameterGroup extends Resource {
  static const String tfType = 'aws_rds_cluster_parameter_group';

  AwsRdsClusterParameterGroup(
    super.localName, {
    TfArg<String>? description,
    required TfArg<String> family,
    RdsClusterParameterGroupName? name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<RdsClusterParameterGroupParameter>? parameter,
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
  Set<String> get sensitiveFields => _awsRdsClusterParameterGroupSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsRdsClusterParameterGroup>`.
  RefTo<AwsRdsClusterParameterGroup> get ref => RefTo.of(this);

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
