// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_r2_bucket_event_notification`.
const Set<String> _cloudflareR2BucketEventNotificationSensitive = <String>{};

/// R2 Bucket Event Notification enum for `jurisdiction`.
extension type const R2BucketEventNotificationJurisdiction._(TfArg<String> _)
    implements TfArg<String> {
  R2BucketEventNotificationJurisdiction.variable(String name)
    : this._(TfArg.variable(name));
  R2BucketEventNotificationJurisdiction.expression(String template)
    : this._(TfArg.expression(template));
  const R2BucketEventNotificationJurisdiction.arg(TfArg<String> arg)
    : this._(arg);

  static const defaultCase = R2BucketEventNotificationJurisdiction._(
    TfArgLiteral('default'),
  );
  static const eu = R2BucketEventNotificationJurisdiction._(TfArgLiteral('eu'));
  static const fedramp = R2BucketEventNotificationJurisdiction._(
    TfArgLiteral('fedramp'),
  );

  static const List<R2BucketEventNotificationJurisdiction> values = [
    defaultCase,
    eu,
    fedramp,
  ];
}

/// Typed helper for the `rules` block of
/// `cloudflare_r2_bucket_event_notification` (derived from provider schema).
@immutable
final class R2BucketEventNotificationRules {
  const R2BucketEventNotificationRules({
    required this.actions,
    this.description,
    this.prefix,
    this.suffix,
  });

  final List<R2BucketEventNotificationActions> actions;

  final TfArg<String>? description;

  final TfArg<String>? prefix;

  final TfArg<String>? suffix;

  Map<String, Object?> encode() => {
    'actions': [for (final e in actions) e.toTfJson()],
    'description': ?description?.toTfJson(),
    'prefix': ?prefix?.toTfJson(),
    'suffix': ?suffix?.toTfJson(),
  };
}

/// `actions` — derived from the provider schema description.
extension type const R2BucketEventNotificationActions._(TfArg<String> _)
    implements TfArg<String> {
  R2BucketEventNotificationActions.variable(String name)
    : this._(TfArg.variable(name));
  R2BucketEventNotificationActions.expression(String template)
    : this._(TfArg.expression(template));
  const R2BucketEventNotificationActions.arg(TfArg<String> arg) : this._(arg);

  static const putobject = R2BucketEventNotificationActions._(
    TfArgLiteral('PutObject'),
  );
  static const copyobject = R2BucketEventNotificationActions._(
    TfArgLiteral('CopyObject'),
  );
  static const deleteobject = R2BucketEventNotificationActions._(
    TfArgLiteral('DeleteObject'),
  );
  static const completemultipartupload = R2BucketEventNotificationActions._(
    TfArgLiteral('CompleteMultipartUpload'),
  );
  static const lifecycledeletion = R2BucketEventNotificationActions._(
    TfArgLiteral('LifecycleDeletion'),
  );

  static const List<R2BucketEventNotificationActions> values = [
    putobject,
    copyobject,
    deleteobject,
    completemultipartupload,
    lifecycledeletion,
  ];
}

/// Factory wrapper for `cloudflare_r2_bucket_event_notification`.
///
/// Accepted Permissions
///
/// - `Workers R2 Storage Read` - `Workers R2 Storage Write`
final class CloudflareR2BucketEventNotification extends Resource {
  static const String tfType = 'cloudflare_r2_bucket_event_notification';

  CloudflareR2BucketEventNotification(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
    required TfArg<String> bucketName,
    R2BucketEventNotificationJurisdiction? jurisdiction,
    required TfArg<String> queueId,
    required List<R2BucketEventNotificationRules> rules,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'bucket_name': bucketName,
           'jurisdiction': ?jurisdiction,
           'queue_id': queueId,
           'rules': TfArg.literal([for (final e in rules) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareR2BucketEventNotificationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareR2BucketEventNotification>`.
  RefTo<CloudflareR2BucketEventNotification> get ref => RefTo.of(this);

  /// Reference to `queue_name` attribute.
  TfRef<String> get queueName => TfRef.attribute<String>(this, 'queue_name');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `bucket_name` attribute.
  TfRef<String> get bucketName => TfRef.attribute<String>(this, 'bucket_name');

  /// Reference to `jurisdiction` attribute.
  TfRef<String> get jurisdiction =>
      TfRef.attribute<String>(this, 'jurisdiction');

  /// Reference to `queue_id` attribute.
  TfRef<String> get queueId => TfRef.attribute<String>(this, 'queue_id');
}
