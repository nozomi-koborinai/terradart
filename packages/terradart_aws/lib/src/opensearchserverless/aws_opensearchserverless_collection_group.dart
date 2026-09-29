// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_opensearchserverless_collection_group`.
const Set<String> _awsOpensearchserverlessCollectionGroupSensitive = <String>{};

/// Opensearchserverless Collection Group enum for `generation`.
enum OpensearchserverlessCollectionGroupGeneration implements TerraformEnum {
  classic('CLASSIC'),
  nextgen('NEXTGEN');

  const OpensearchserverlessCollectionGroupGeneration(this.terraformValue);
  @override
  final String terraformValue;
}

/// Opensearchserverless Collection Group Standby enum for `standby_replicas`.
enum OpensearchserverlessCollectionGroupStandbyReplicas
    implements TerraformEnum {
  enabled('ENABLED'),
  disabled('DISABLED');

  const OpensearchserverlessCollectionGroupStandbyReplicas(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_opensearchserverless_collection_group`.
final class AwsOpensearchserverlessCollectionGroup extends Resource {
  static const String tfType = 'aws_opensearchserverless_collection_group';

  AwsOpensearchserverlessCollectionGroup({
    required super.localName,
    TfArg<List<Map<String, Object?>>>? capacityLimits,
    TfArg<String>? description,
    TfArg<OpensearchserverlessCollectionGroupGeneration>? generation,
    required TfArg<String> name,
    TfArg<String>? region,
    required TfArg<OpensearchserverlessCollectionGroupStandbyReplicas>
    standbyReplicas,
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
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

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
}
