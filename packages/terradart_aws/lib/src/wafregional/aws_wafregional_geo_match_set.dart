// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_wafregional_geo_match_set`.
const Set<String> _awsWafregionalGeoMatchSetSensitive = <String>{};

/// Typed helper for the `geo_match_constraint` block of
/// `aws_wafregional_geo_match_set` (derived from provider schema).
@immutable
final class WafregionalGeoMatchSetGeoMatchConstraint {
  const WafregionalGeoMatchSetGeoMatchConstraint({
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

/// Factory wrapper for `aws_wafregional_geo_match_set`.
final class AwsWafregionalGeoMatchSet extends Resource {
  static const String tfType = 'aws_wafregional_geo_match_set';

  AwsWafregionalGeoMatchSet({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? region,
    List<WafregionalGeoMatchSetGeoMatchConstraint>? geoMatchConstraint,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (region != null) 'region': region,
           if (geoMatchConstraint != null)
             'geo_match_constraint': TfArg.literal([
               for (final e in geoMatchConstraint) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsWafregionalGeoMatchSetSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
