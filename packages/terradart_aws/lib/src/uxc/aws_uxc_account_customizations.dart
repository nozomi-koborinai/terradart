// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_uxc_account_customizations`.
const Set<String> _awsUxcAccountCustomizationsSensitive = <String>{};

/// Factory wrapper for `aws_uxc_account_customizations`.
final class AwsUxcAccountCustomizations extends Resource {
  static const String tfType = 'aws_uxc_account_customizations';

  AwsUxcAccountCustomizations({
    required super.localName,
    TfArg<String>? accountColor,
    TfArg<List<String>>? visibleRegions,
    TfArg<List<String>>? visibleServices,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_color': ?accountColor,
           'visible_regions': ?visibleRegions,
           'visible_services': ?visibleServices,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsUxcAccountCustomizationsSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsUxcAccountCustomizations>`.
  RefTo<AwsUxcAccountCustomizations> get ref => RefTo.of(this);

  /// Reference to `account_color` attribute.
  TfRef<String> get accountColorRef =>
      TfRef.attribute<String>(this, 'account_color');

  /// Reference to `visible_regions` attribute.
  TfRef<List<String>> get visibleRegionsRef =>
      TfRef.attribute<List<String>>(this, 'visible_regions');

  /// Reference to `visible_services` attribute.
  TfRef<List<String>> get visibleServicesRef =>
      TfRef.attribute<List<String>>(this, 'visible_services');
}
