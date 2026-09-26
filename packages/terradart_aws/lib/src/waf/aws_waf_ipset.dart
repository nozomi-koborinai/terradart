// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_waf_ipset`.
const Set<String> _awsWafIpsetSensitive = <String>{};

/// Typed helper for the `ip_set_descriptors` block of
/// `aws_waf_ipset` (derived from provider schema).
@immutable
final class WafIpsetIpSetDescriptors {
  const WafIpsetIpSetDescriptors({required this.type, required this.value});

  final TfArg<String> type;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'type': type.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Factory wrapper for `aws_waf_ipset`.
final class AwsWafIpset extends Resource {
  static const String tfType = 'aws_waf_ipset';

  AwsWafIpset({
    required super.localName,
    required TfArg<String> name,
    List<WafIpsetIpSetDescriptors>? ipSetDescriptors,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (ipSetDescriptors != null)
             'ip_set_descriptors': TfArg.literal([
               for (final e in ipSetDescriptors) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsWafIpsetSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
