// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ssoadmin_instance_access_control_attributes`.
const Set<String> _awsSsoadminInstanceAccessControlAttributesSensitive =
    <String>{};

/// Typed helper for the `attribute` block of
/// `aws_ssoadmin_instance_access_control_attributes` (derived from provider schema).
@immutable
final class SsoadminInstanceAccessControlAttributesAttribute {
  const SsoadminInstanceAccessControlAttributesAttribute({
    required this.key,
    required this.value,
  });

  final TfArg<String> key;

  final List<SsoadminInstanceAccessControlAttributesAttributeValue> value;

  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'value': [for (final e in value) e.encode()],
  };
}

/// Typed helper for the `attribute.value` block of
/// `aws_ssoadmin_instance_access_control_attributes` (derived from provider schema).
@immutable
final class SsoadminInstanceAccessControlAttributesAttributeValue {
  const SsoadminInstanceAccessControlAttributesAttributeValue({
    required this.source,
  });

  final TfArg<List<Object?>> source;

  Map<String, Object?> encode() => {'source': source.toTfJson()};
}

/// Factory wrapper for `aws_ssoadmin_instance_access_control_attributes`.
final class AwsSsoadminInstanceAccessControlAttributes extends Resource {
  static const String tfType =
      'aws_ssoadmin_instance_access_control_attributes';

  AwsSsoadminInstanceAccessControlAttributes({
    required super.localName,
    required TfArg<String> instanceArn,
    TfArg<String>? region,
    required List<SsoadminInstanceAccessControlAttributesAttribute> attribute,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'instance_arn': instanceArn,
           if (region != null) 'region': region,
           'attribute': TfArg.literal([for (final e in attribute) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsSsoadminInstanceAccessControlAttributesSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `status_reason` attribute.
  TfRef<String> get statusReason =>
      TfRef.attribute<String>(this, 'status_reason');
}
