// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/google_service_account.dart' show GoogleServiceAccount;

/// Sensitive field paths for `google_dataplex_data_product`.
const Set<String> _googleDataplexDataProductSensitive = <String>{};

/// Typed helper for the `access_approval_config` block of
/// `google_dataplex_data_product` (derived from provider schema).
@immutable
final class DataplexDataProductAccessApprovalConfig {
  const DataplexDataProductAccessApprovalConfig({this.approverEmails});

  final TfArg<List<String>>? approverEmails;

  Map<String, Object?> encode() => {
    'approver_emails': ?approverEmails?.toTfJson(),
  };
}

/// Typed helper for the `access_groups` block of
/// `google_dataplex_data_product` (derived from provider schema).
@immutable
final class DataplexDataProductAccessGroups {
  const DataplexDataProductAccessGroups({
    this.description,
    required this.displayName,
    required this.groupId,
    required this.id,
    required this.principal,
  });

  final TfArg<String>? description;

  final TfArg<String> displayName;

  final TfArg<String> groupId;

  final TfArg<String> id;

  final DataplexDataProductAccessGroupsPrincipal principal;

  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'display_name': displayName.toTfJson(),
    'group_id': groupId.toTfJson(),
    'id': id.toTfJson(),
    'principal': principal.encode(),
  };
}

/// Typed helper for the `access_groups.principal` block of
/// `google_dataplex_data_product` (derived from provider schema).
@immutable
final class DataplexDataProductAccessGroupsPrincipal {
  const DataplexDataProductAccessGroupsPrincipal({
    this.googleGroup,
    this.serviceAccount,
  });

  final TfArg<String>? googleGroup;

  final RefTo<GoogleServiceAccount>? serviceAccount;

  Map<String, Object?> encode() => {
    'google_group': ?googleGroup?.toTfJson(),
    'service_account': ?serviceAccount?.encodeAs('email').toTfJson(),
  };
}

/// Factory wrapper for `google_dataplex_data_product`.
///
/// A data product is a curated collection of data assets, packaged to address
/// specific use cases.
final class GoogleDataplexDataProduct extends Resource {
  static const String tfType = 'google_dataplex_data_product';

  GoogleDataplexDataProduct({
    required super.localName,
    required TfArg<String> location,
    required TfArg<String> dataProductId,
    required TfArg<String> displayName,
    required TfArg<List<String>> ownerEmails,
    TfArg<String>? description,
    TfArg<Map<String, String>>? labels,
    DataplexDataProductAccessApprovalConfig? accessApprovalConfig,
    TfArg<String>? project,
    TfArg<String>? icon,
    List<DataplexDataProductAccessGroups>? accessGroups,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'data_product_id': dataProductId,
           'display_name': displayName,
           'owner_emails': ownerEmails,
           'description': ?description,
           'labels': ?labels,
           if (accessApprovalConfig != null)
             'access_approval_config': TfArg.literal(
               accessApprovalConfig.encode(),
             ),
           'project': ?project,
           'icon': ?icon,
           if (accessGroups != null)
             'access_groups': TfArg.literal([
               for (final e in accessGroups) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDataplexDataProductSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDataplexDataProduct>`.
  RefTo<GoogleDataplexDataProduct> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `asset_count` attribute.
  TfRef<num> get assetCount => TfRef.attribute<num>(this, 'asset_count');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `uid` attribute.
  TfRef<String> get uid => TfRef.attribute<String>(this, 'uid');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayNameRef =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `icon` attribute.
  TfRef<String> get iconRef => TfRef.attribute<String>(this, 'icon');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labelsRef =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `owner_emails` attribute.
  TfRef<List<String>> get ownerEmailsRef =>
      TfRef.attribute<List<String>>(this, 'owner_emails');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `data_product_id` attribute.
  TfRef<String> get dataProductIdRef =>
      TfRef.attribute<String>(this, 'data_product_id');
}
