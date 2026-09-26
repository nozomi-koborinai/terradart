// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_wafregional_ipset`.
const Set<String> _awsWafregionalIpsetSensitive = <String>{};

/// Typed helper for the `ip_set_descriptor` block of
/// `aws_wafregional_ipset` (derived from provider schema).
@immutable
final class WafregionalIpsetIpSetDescriptor {
  const WafregionalIpsetIpSetDescriptor({
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

/// Factory wrapper for `aws_wafregional_ipset`.
final class AwsWafregionalIpset extends Resource {
  static const String tfType = 'aws_wafregional_ipset';

  AwsWafregionalIpset({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? region,
    List<WafregionalIpsetIpSetDescriptor>? ipSetDescriptor,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (region != null) 'region': region,
           if (ipSetDescriptor != null)
             'ip_set_descriptor': TfArg.literal([
               for (final e in ipSetDescriptor) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsWafregionalIpsetSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
