// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_docdb_cluster_parameter_group`.
const Set<String> _awsDocdbClusterParameterGroupSensitive = <String>{};

/// At most one of `name`, `name_prefix` on `aws_docdb_cluster_parameter_group`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.name(...)`.
sealed class DocdbClusterParameterGroupName {
  const DocdbClusterParameterGroupName();

  /// Sets `name`.
  const factory DocdbClusterParameterGroupName.name(TfArg<String> name) =
      DocdbClusterParameterGroupNameChoice;

  /// Sets `name_prefix`.
  const factory DocdbClusterParameterGroupName.namePrefix(
    TfArg<String> namePrefix,
  ) = DocdbClusterParameterGroupNamePrefix;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [DocdbClusterParameterGroupName.name] choice: sets `name`.
final class DocdbClusterParameterGroupNameChoice
    extends DocdbClusterParameterGroupName {
  const DocdbClusterParameterGroupNameChoice(this.name);

  final TfArg<String> name;

  @override
  String get blockKey => 'name';

  @override
  Map<String, Object?> encode() => {'name': name.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'name': name};
}

/// The [DocdbClusterParameterGroupName.namePrefix] choice: sets `name_prefix`.
final class DocdbClusterParameterGroupNamePrefix
    extends DocdbClusterParameterGroupName {
  const DocdbClusterParameterGroupNamePrefix(this.namePrefix);

  final TfArg<String> namePrefix;

  @override
  String get blockKey => 'name_prefix';

  @override
  Map<String, Object?> encode() => {'name_prefix': namePrefix.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'name_prefix': namePrefix};
}

/// Typed helper for the `parameter` block of
/// `aws_docdb_cluster_parameter_group` (derived from provider schema).
@immutable
final class DocdbClusterParameterGroupParameter {
  const DocdbClusterParameterGroupParameter({
    this.applyMethod,
    required this.name,
    required this.value,
  });

  final TfArg<DocdbClusterParameterGroupApplyMethod>? applyMethod;

  final TfArg<String> name;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'apply_method': ?applyMethod?.toTfJson(),
    'name': name.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// `apply_method` — derived from the provider schema description.
enum DocdbClusterParameterGroupApplyMethod implements TerraformEnum {
  immediate('immediate'),
  pendingReboot('pending-reboot');

  const DocdbClusterParameterGroupApplyMethod(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_docdb_cluster_parameter_group`.
final class AwsDocdbClusterParameterGroup extends Resource {
  static const String tfType = 'aws_docdb_cluster_parameter_group';

  AwsDocdbClusterParameterGroup({
    required super.localName,
    TfArg<String>? description,
    required TfArg<String> family,
    DocdbClusterParameterGroupName? name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<DocdbClusterParameterGroupParameter>? parameter,
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
  Set<String> get sensitiveFields => _awsDocdbClusterParameterGroupSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsDocdbClusterParameterGroup>`.
  RefTo<AwsDocdbClusterParameterGroup> get ref => RefTo.of(this);

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
