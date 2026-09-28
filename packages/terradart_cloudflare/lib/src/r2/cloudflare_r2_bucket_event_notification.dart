// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_r2_bucket_event_notification`.
const Set<String> _cloudflareR2BucketEventNotificationSensitive = <String>{};

/// R2 Bucket Event Notification enum for `jurisdiction`.
enum R2BucketEventNotificationJurisdiction implements TerraformEnum {
  defaultCase('default'),
  eu('eu'),
  fedramp('fedramp');

  const R2BucketEventNotificationJurisdiction(this.terraformValue);
  @override
  final String terraformValue;
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

  final List<TfArg<R2BucketEventNotificationRulesActions>> actions;

  final TfArg<String>? description;

  final TfArg<String>? prefix;

  final TfArg<String>? suffix;

  Map<String, Object?> encode() => {
    'actions': [for (final e in actions) e.toTfJson()],
    if (description != null) 'description': description!.toTfJson(),
    if (prefix != null) 'prefix': prefix!.toTfJson(),
    if (suffix != null) 'suffix': suffix!.toTfJson(),
  };
}

/// `actions` — derived from the provider schema description.
enum R2BucketEventNotificationRulesActions implements TerraformEnum {
  putobject('PutObject'),
  copyobject('CopyObject'),
  deleteobject('DeleteObject'),
  completemultipartupload('CompleteMultipartUpload'),
  lifecycledeletion('LifecycleDeletion');

  const R2BucketEventNotificationRulesActions(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `cloudflare_r2_bucket_event_notification`.
///
/// Accepted Permissions
///
/// - `Workers R2 Storage Read` - `Workers R2 Storage Write`
final class CloudflareR2BucketEventNotification extends Resource {
  static const String tfType = 'cloudflare_r2_bucket_event_notification';

  CloudflareR2BucketEventNotification({
    required super.localName,
    required TfArg<String> accountId,
    required TfArg<String> bucketName,
    TfArg<R2BucketEventNotificationJurisdiction>? jurisdiction,
    required TfArg<String> queueId,
    required List<R2BucketEventNotificationRules> rules,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           'bucket_name': bucketName,
           if (jurisdiction != null) 'jurisdiction': jurisdiction,
           'queue_id': queueId,
           'rules': TfArg.literal([for (final e in rules) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareR2BucketEventNotificationSensitive;

  /// Reference to `queue_name` attribute.
  TfRef<String> get queueName => TfRef.attribute<String>(this, 'queue_name');
}
