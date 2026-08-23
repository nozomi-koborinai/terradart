// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_content_scanning_expression`.
const Set<String> _cloudflareContentScanningExpressionSensitive = <String>{};

/// Typed helper for the `body` block of
/// `cloudflare_content_scanning_expression` (derived from provider schema).
@immutable
final class ContentScanningExpressionBody {
  const ContentScanningExpressionBody({required this.payload});

  final TfArg<String> payload;

  Map<String, Object?> encode() => {'payload': payload.toTfJson()};
}

/// Factory wrapper for `cloudflare_content_scanning_expression`.
///
/// Accepted Permissions
///
/// - `Account WAF Write` - `Zone WAF Write`
final class CloudflareContentScanningExpression extends Resource {
  static const String tfType = 'cloudflare_content_scanning_expression';

  CloudflareContentScanningExpression({
    required super.localName,
    required TfArg<String> zoneId,
    required List<ContentScanningExpressionBody> body,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'zone_id': zoneId,
           'body': TfArg.literal([for (final e in body) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareContentScanningExpressionSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
