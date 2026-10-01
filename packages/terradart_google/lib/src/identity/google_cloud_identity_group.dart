// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_cloud_identity_group`.
const Set<String> _googleCloudIdentityGroupSensitive = <String>{};

/// Cloud Identity Group Initial Group enum for `initial_group_config`.
enum CloudIdentityGroupInitialGroupConfig implements TerraformEnum {
  initialGroupConfigUnspecified('INITIAL_GROUP_CONFIG_UNSPECIFIED'),
  withInitialOwner('WITH_INITIAL_OWNER'),
  empty('EMPTY');

  const CloudIdentityGroupInitialGroupConfig(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `group_key` block of
/// `google_cloud_identity_group` (derived from provider schema).
@immutable
final class CloudIdentityGroupKey {
  const CloudIdentityGroupKey({required this.id, this.namespace});

  final TfArg<String> id;

  final TfArg<String>? namespace;

  Map<String, Object?> encode() => {
    'id': id.toTfJson(),
    'namespace': ?namespace?.toTfJson(),
  };
}

/// Factory wrapper for `google_cloud_identity_group`.
///
/// A Cloud Identity resource representing a Group.
///
/// Leftover factory on the apply-excluded path
/// (synth + `terraform validate` only).
///
/// Needs an organization / folder / billing account /
/// external artifact that standalone terradart-validate
/// cannot supply. Do not apply.
final class GoogleCloudIdentityGroup extends Resource {
  static const String tfType = 'google_cloud_identity_group';

  GoogleCloudIdentityGroup({
    required super.localName,
    TfArg<String>? deletionPolicy,
    TfArg<String>? description,
    TfArg<String>? displayName,
    TfArg<CloudIdentityGroupInitialGroupConfig>? initialGroupConfig,
    required TfArg<Map<String, String>> labels,
    required TfArg<String> parent,
    required CloudIdentityGroupKey groupKey,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'deletion_policy': ?deletionPolicy,
           'description': ?description,
           'display_name': ?displayName,
           'initial_group_config': ?initialGroupConfig,
           'labels': labels,
           'parent': parent,
           'group_key': TfArg.literal(groupKey.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleCloudIdentityGroupSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleCloudIdentityGroup>`.
  RefTo<GoogleCloudIdentityGroup> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `additional_group_keys` attribute.
  TfRef<List<Map<String, Object?>>> get additionalGroupKeys =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'additional_group_keys',
      );

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `initial_group_config` attribute.
  TfRef<String> get initialGroupConfig =>
      TfRef.attribute<String>(this, 'initial_group_config');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `parent` attribute.
  TfRef<String> get parent => TfRef.attribute<String>(this, 'parent');
}
