// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ssoadmin_instances`.
const Set<String> _awsSsoadminInstancesSensitive = <String>{};

/// Factory wrapper for `aws_ssoadmin_instances`.
final class DataAwsSsoadminInstances extends Data {
  static const String tfType = 'aws_ssoadmin_instances';

  DataAwsSsoadminInstances({
    required super.localName,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {if (region != null) 'region': region},
       );

  @override
  Set<String> get sensitiveFields => _awsSsoadminInstancesSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arns` attribute.
  TfRef<List<String>> get arns => TfRef.attribute<List<String>>(this, 'arns');

  /// Reference to `identity_store_ids` attribute.
  TfRef<List<String>> get identityStoreIds =>
      TfRef.attribute<List<String>>(this, 'identity_store_ids');
}
