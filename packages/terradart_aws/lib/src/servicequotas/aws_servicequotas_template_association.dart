// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_servicequotas_template_association`.
const Set<String> _awsServicequotasTemplateAssociationSensitive = <String>{};

/// Factory wrapper for `aws_servicequotas_template_association`.
final class AwsServicequotasTemplateAssociation extends Resource {
  static const String tfType = 'aws_servicequotas_template_association';

  AwsServicequotasTemplateAssociation({
    required super.localName,
    TfArg<String>? region,
    TfArg<bool>? skipDestroy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           if (skipDestroy != null) 'skip_destroy': skipDestroy,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsServicequotasTemplateAssociationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');
}
