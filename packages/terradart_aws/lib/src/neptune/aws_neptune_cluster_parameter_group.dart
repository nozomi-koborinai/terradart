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
sealed class NeptuneClusterParameterGroupName {
  const NeptuneClusterParameterGroupName();

  /// Sets `name`.
  const factory NeptuneClusterParameterGroupName.name(TfArg<String> name) =
      NeptuneClusterParameterGroupNameChoice;

  /// Sets `name_prefix`.
  const factory NeptuneClusterParameterGroupName.namePrefix(
    TfArg<String> namePrefix,
  ) = NeptuneClusterParameterGroupNamePrefix;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [NeptuneClusterParameterGroupName.name] choice: sets `name`.
final class NeptuneClusterParameterGroupNameChoice
    extends NeptuneClusterParameterGroupName {
  const NeptuneClusterParameterGroupNameChoice(this.name);

  final TfArg<String> name;

  @override
  String get blockKey => 'name';

  @override
  Map<String, Object?> encode() => {'name': name.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'name': name};
}

/// The [NeptuneClusterParameterGroupName.namePrefix] choice: sets `name_prefix`.
final class NeptuneClusterParameterGroupNamePrefix
    extends NeptuneClusterParameterGroupName {
  const NeptuneClusterParameterGroupNamePrefix(this.namePrefix);

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

  final NeptuneClusterParameterGroupApplyMethod? applyMethod;

  final TfArg<String> name;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'apply_method': ?applyMethod?.toTfJson(),
    'name': name.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// `apply_method` — derived from the provider schema description.
extension type const NeptuneClusterParameterGroupApplyMethod._(TfArg<String> _)
    implements TfArg<String> {
  NeptuneClusterParameterGroupApplyMethod.variable(String name)
    : this._(TfArg.variable(name));
  NeptuneClusterParameterGroupApplyMethod.expression(String template)
    : this._(TfArg.expression(template));
  const NeptuneClusterParameterGroupApplyMethod.arg(TfArg<String> arg)
    : this._(arg);

  static const immediate = NeptuneClusterParameterGroupApplyMethod._(
    TfArgLiteral('immediate'),
  );
  static const pendingReboot = NeptuneClusterParameterGroupApplyMethod._(
    TfArgLiteral('pending-reboot'),
  );

  static const List<NeptuneClusterParameterGroupApplyMethod> values = [
    immediate,
    pendingReboot,
  ];
}

/// Factory wrapper for `aws_neptune_cluster_parameter_group`.
final class AwsNeptuneClusterParameterGroup extends Resource {
  static const String tfType = 'aws_neptune_cluster_parameter_group';

  AwsNeptuneClusterParameterGroup(
    super.localName, {
    TfArg<String>? description,
    required TfArg<String> family,
    NeptuneClusterParameterGroupName? name,
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
  Set<String> get sensitiveFields => _awsNeptuneClusterParameterGroupSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsNeptuneClusterParameterGroup>`.
  RefTo<AwsNeptuneClusterParameterGroup> get ref => RefTo.of(this);

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
