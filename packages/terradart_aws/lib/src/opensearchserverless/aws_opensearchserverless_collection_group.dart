// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_opensearchserverless_collection_group`.
const Set<String> _awsOpensearchserverlessCollectionGroupSensitive = <String>{};

/// Opensearchserverless Collection Group enum for `generation`.
extension type const OpensearchserverlessCollectionGroupGeneration._(
  TfArg<String> _
) implements TfArg<String> {
  OpensearchserverlessCollectionGroupGeneration.variable(String name)
    : this._(TfArg.variable(name));
  OpensearchserverlessCollectionGroupGeneration.expression(String template)
    : this._(TfArg.expression(template));
  const OpensearchserverlessCollectionGroupGeneration.arg(TfArg<String> arg)
    : this._(arg);

  static const classic = OpensearchserverlessCollectionGroupGeneration._(
    TfArgLiteral('CLASSIC'),
  );
  static const nextgen = OpensearchserverlessCollectionGroupGeneration._(
    TfArgLiteral('NEXTGEN'),
  );

  static const List<OpensearchserverlessCollectionGroupGeneration> values = [
    classic,
    nextgen,
  ];
}

/// Opensearchserverless Collection Group Standby enum for `standby_replicas`.
extension type const OpensearchserverlessCollectionGroupStandbyReplicas._(
  TfArg<String> _
) implements TfArg<String> {
  OpensearchserverlessCollectionGroupStandbyReplicas.variable(String name)
    : this._(TfArg.variable(name));
  OpensearchserverlessCollectionGroupStandbyReplicas.expression(String template)
    : this._(TfArg.expression(template));
  const OpensearchserverlessCollectionGroupStandbyReplicas.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const enabled = OpensearchserverlessCollectionGroupStandbyReplicas._(
    TfArgLiteral('ENABLED'),
  );
  static const disabled = OpensearchserverlessCollectionGroupStandbyReplicas._(
    TfArgLiteral('DISABLED'),
  );

  static const List<OpensearchserverlessCollectionGroupStandbyReplicas> values =
      [enabled, disabled];
}

/// Factory wrapper for `aws_opensearchserverless_collection_group`.
final class AwsOpensearchserverlessCollectionGroup extends Resource {
  static const String tfType = 'aws_opensearchserverless_collection_group';

  AwsOpensearchserverlessCollectionGroup(
    super.localName, {
    TfArg<List<Map<String, Object?>>>? capacityLimits,
    TfArg<String>? description,
    OpensearchserverlessCollectionGroupGeneration? generation,
    required TfArg<String> name,
    TfArg<String>? region,
    required OpensearchserverlessCollectionGroupStandbyReplicas standbyReplicas,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'capacity_limits': ?capacityLimits,
           'description': ?description,
           'generation': ?generation,
           'name': name,
           'region': ?region,
           'standby_replicas': standbyReplicas,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsOpensearchserverlessCollectionGroupSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsOpensearchserverlessCollectionGroup>`.
  RefTo<AwsOpensearchserverlessCollectionGroup> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `created_date` attribute.
  TfRef<String> get createdDate =>
      TfRef.attribute<String>(this, 'created_date');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `capacity_limits` attribute.
  TfRef<List<Map<String, Object?>>> get capacityLimits =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'capacity_limits');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `generation` attribute.
  TfRef<String> get generation => TfRef.attribute<String>(this, 'generation');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `standby_replicas` attribute.
  TfRef<String> get standbyReplicas =>
      TfRef.attribute<String>(this, 'standby_replicas');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
