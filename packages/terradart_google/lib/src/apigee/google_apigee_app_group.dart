// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_apigee_app_group`.
const Set<String> _googleApigeeAppGroupSensitive = <String>{};

/// Apigee App Group enum for `status`.
enum ApigeeAppGroupStatus implements TerraformEnum {
  active('active'),
  inactive('inactive');

  const ApigeeAppGroupStatus(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `attributes` block of
/// `google_apigee_app_group` (derived from provider schema).
@immutable
final class ApigeeAppGroupAttributes {
  const ApigeeAppGroupAttributes({this.name, this.value});

  final TfArg<String>? name;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    'name': ?name?.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// Factory wrapper for `google_apigee_app_group`.
///
/// An `AppGroup` in Apigee.
///
/// Apigee **app group** — grouping of developer apps in an organization.
///
/// **Cost / apply:** gcp-cost: no Group SKU under Apigee `1C2D-8C78-EC58`
/// (list_skus keyword Group → 0). billing-behavior: requires a never_apply
/// [GoogleApigeeOrganization] (Gateway Node Hours `0136-18C1-DD41`
/// **$1.025/h**). Debt-only on `terradart-validate`. **Never** wire into
/// apply-smoke.
final class GoogleApigeeAppGroup extends Resource {
  static const String tfType = 'google_apigee_app_group';

  GoogleApigeeAppGroup({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> orgId,
    TfArg<String>? displayName,
    TfArg<String>? channelId,
    TfArg<String>? channelUri,
    TfArg<ApigeeAppGroupStatus>? status,
    List<ApigeeAppGroupAttributes>? attributes,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'org_id': orgId,
           'display_name': ?displayName,
           'channel_id': ?channelId,
           'channel_uri': ?channelUri,
           'status': ?status,
           if (attributes != null)
             'attributes': TfArg.literal([
               for (final e in attributes) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleApigeeAppGroupSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleApigeeAppGroup>`.
  RefTo<GoogleApigeeAppGroup> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `app_group_id` attribute.
  TfRef<String> get appGroupId => TfRef.attribute<String>(this, 'app_group_id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `last_modified_at` attribute.
  TfRef<String> get lastModifiedAt =>
      TfRef.attribute<String>(this, 'last_modified_at');

  /// Reference to `organization` attribute.
  TfRef<String> get organization =>
      TfRef.attribute<String>(this, 'organization');

  /// Reference to `channel_id` attribute.
  TfRef<String> get channelIdRef => TfRef.attribute<String>(this, 'channel_id');

  /// Reference to `channel_uri` attribute.
  TfRef<String> get channelUriRef =>
      TfRef.attribute<String>(this, 'channel_uri');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayNameRef =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `org_id` attribute.
  TfRef<String> get orgIdRef => TfRef.attribute<String>(this, 'org_id');

  /// Reference to `status` attribute.
  TfRef<String> get statusRef => TfRef.attribute<String>(this, 'status');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
