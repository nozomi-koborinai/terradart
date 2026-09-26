// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_rolesanywhere_trust_anchor`.
const Set<String> _awsRolesanywhereTrustAnchorSensitive = <String>{};

/// Typed helper for the `notification_settings` block of
/// `aws_rolesanywhere_trust_anchor` (derived from provider schema).
@immutable
final class RolesanywhereTrustAnchorNotificationSettings {
  const RolesanywhereTrustAnchorNotificationSettings({
    this.channel,
    this.enabled,
    this.event,
    this.threshold,
  });

  final TfArg<String>? channel;

  final TfArg<bool>? enabled;

  final TfArg<String>? event;

  final TfArg<num>? threshold;

  Map<String, Object?> encode() => {
    if (channel != null) 'channel': channel!.toTfJson(),
    if (enabled != null) 'enabled': enabled!.toTfJson(),
    if (event != null) 'event': event!.toTfJson(),
    if (threshold != null) 'threshold': threshold!.toTfJson(),
  };
}

/// Typed helper for the `source` block of
/// `aws_rolesanywhere_trust_anchor` (derived from provider schema).
@immutable
final class RolesanywhereTrustAnchorSource {
  const RolesanywhereTrustAnchorSource({
    required this.sourceType,
    required this.sourceData,
  });

  final TfArg<String> sourceType;

  final RolesanywhereTrustAnchorSourceSourceData sourceData;

  Map<String, Object?> encode() => {
    'source_type': sourceType.toTfJson(),
    'source_data': sourceData.encode(),
  };
}

/// Typed helper for the `source.source_data` block of
/// `aws_rolesanywhere_trust_anchor` (derived from provider schema).
@immutable
final class RolesanywhereTrustAnchorSourceSourceData {
  const RolesanywhereTrustAnchorSourceSourceData({
    this.acmPcaArn,
    this.x509CertificateData,
  });

  final TfArg<String>? acmPcaArn;

  final TfArg<String>? x509CertificateData;

  Map<String, Object?> encode() => {
    if (acmPcaArn != null) 'acm_pca_arn': acmPcaArn!.toTfJson(),
    if (x509CertificateData != null)
      'x509_certificate_data': x509CertificateData!.toTfJson(),
  };
}

/// Factory wrapper for `aws_rolesanywhere_trust_anchor`.
final class AwsRolesanywhereTrustAnchor extends Resource {
  static const String tfType = 'aws_rolesanywhere_trust_anchor';

  AwsRolesanywhereTrustAnchor({
    required super.localName,
    TfArg<bool>? enabled,
    required TfArg<String> name,
    TfArg<Map<String, String>>? tags,
    List<RolesanywhereTrustAnchorNotificationSettings>? notificationSettings,
    required RolesanywhereTrustAnchorSource source,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (enabled != null) 'enabled': enabled,
           'name': name,
           if (tags != null) 'tags': tags,
           if (notificationSettings != null)
             'notification_settings': TfArg.literal([
               for (final e in notificationSettings) e.encode(),
             ]),
           'source': TfArg.literal(source.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRolesanywhereTrustAnchorSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
