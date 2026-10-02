// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_content_scanning_expression`.
const Set<String> _cloudflareContentScanningExpressionSensitive = <String>{};

/// Typed helper for the `body` block of
/// `cloudflare_content_scanning_expression` (derived from provider schema).
@immutable
final class ContentScanningExpressionBody {
  const ContentScanningExpressionBody({required this.payload});

  final TfArg<String> payload;

  @internal
  Map<String, Object?> encode() => {'payload': payload.toTfJson()};
}

/// Factory wrapper for `cloudflare_content_scanning_expression`.
///
/// Accepted Permissions
///
/// - `Account WAF Write` - `Zone WAF Write`
final class CloudflareContentScanningExpression extends Resource {
  static const String tfType = 'cloudflare_content_scanning_expression';

  CloudflareContentScanningExpression(
    super.localName, {
    TfArg<String>? payload,
    required RefTo<CloudflareZone> zoneId,
    required List<ContentScanningExpressionBody> body,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'payload': ?payload,
           'zone_id': zoneId.encodeAs('id'),
           'body': TfArg.literal([for (final e in body) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareContentScanningExpressionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareContentScanningExpression>`.
  RefTo<CloudflareContentScanningExpression> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `payload` attribute.
  TfRef<String> get payload => TfRef.attribute<String>(this, 'payload');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}
