// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_odb_gi_versions`.
const Set<String> _awsOdbGiVersionsSensitive = <String>{};

/// Factory wrapper for `aws_odb_gi_versions`.
final class DataAwsOdbGiVersions extends Data {
  static const String tfType = 'aws_odb_gi_versions';

  DataAwsOdbGiVersions({
    required super.localName,
    TfArg<String>? region,
    TfArg<String>? shape,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           if (shape != null) 'shape': shape,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsOdbGiVersionsSensitive;

  /// Reference to `gi_versions` attribute.
  TfRef<List<Map<String, Object?>>> get giVersions =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'gi_versions');
}
