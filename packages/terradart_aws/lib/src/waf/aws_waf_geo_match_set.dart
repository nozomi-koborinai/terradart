// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_waf_geo_match_set`.
const Set<String> _awsWafGeoMatchSetSensitive = <String>{};

/// Typed helper for the `geo_match_constraint` block of
/// `aws_waf_geo_match_set` (derived from provider schema).
@immutable
final class WafGeoMatchSetGeoMatchConstraint {
  const WafGeoMatchSetGeoMatchConstraint({
    required this.type,
    required this.value,
  });

  final TfArg<String> type;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'type': type.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Factory wrapper for `aws_waf_geo_match_set`.
final class AwsWafGeoMatchSet extends Resource {
  static const String tfType = 'aws_waf_geo_match_set';

  AwsWafGeoMatchSet({
    required super.localName,
    required TfArg<String> name,
    List<WafGeoMatchSetGeoMatchConstraint>? geoMatchConstraint,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (geoMatchConstraint != null)
             'geo_match_constraint': TfArg.literal([
               for (final e in geoMatchConstraint) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsWafGeoMatchSetSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
