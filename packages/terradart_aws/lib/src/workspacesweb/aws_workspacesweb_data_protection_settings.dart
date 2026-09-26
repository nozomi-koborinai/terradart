// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_workspacesweb_data_protection_settings`.
const Set<String> _awsWorkspaceswebDataProtectionSettingsSensitive = <String>{};

/// Typed helper for the `inline_redaction_configuration` block of
/// `aws_workspacesweb_data_protection_settings` (derived from provider schema).
@immutable
final class WorkspaceswebDataProtectionSettingsInlineRedactionConfiguration {
  const WorkspaceswebDataProtectionSettingsInlineRedactionConfiguration({
    this.globalConfidenceLevel,
    this.globalEnforcedUrls,
    this.globalExemptUrls,
    this.inlineRedactionPattern,
  });

  final TfArg<num>? globalConfidenceLevel;

  final TfArg<List<Object?>>? globalEnforcedUrls;

  final TfArg<List<Object?>>? globalExemptUrls;

  final List<
    WorkspaceswebDataProtectionSettingsInlineRedactionConfigurationInlineRedactionPattern
  >?
  inlineRedactionPattern;

  Map<String, Object?> encode() => {
    if (globalConfidenceLevel != null)
      'global_confidence_level': globalConfidenceLevel!.toTfJson(),
    if (globalEnforcedUrls != null)
      'global_enforced_urls': globalEnforcedUrls!.toTfJson(),
    if (globalExemptUrls != null)
      'global_exempt_urls': globalExemptUrls!.toTfJson(),
    if (inlineRedactionPattern != null)
      'inline_redaction_pattern': [
        for (final e in inlineRedactionPattern!) e.encode(),
      ],
  };
}

/// Typed helper for the `inline_redaction_configuration.inline_redaction_pattern` block of
/// `aws_workspacesweb_data_protection_settings` (derived from provider schema).
@immutable
final class WorkspaceswebDataProtectionSettingsInlineRedactionConfigurationInlineRedactionPattern {
  const WorkspaceswebDataProtectionSettingsInlineRedactionConfigurationInlineRedactionPattern({
    this.builtInPatternId,
    this.confidenceLevel,
    this.enforcedUrls,
    this.exemptUrls,
    this.customPattern,
    this.redactionPlaceHolder,
  });

  final TfArg<String>? builtInPatternId;

  final TfArg<num>? confidenceLevel;

  final TfArg<List<Object?>>? enforcedUrls;

  final TfArg<List<Object?>>? exemptUrls;

  final List<
    WorkspaceswebDataProtectionSettingsInlineRedactionConfigurationInlineRedactionPatternCustomPattern
  >?
  customPattern;

  final List<
    WorkspaceswebDataProtectionSettingsInlineRedactionConfigurationInlineRedactionPatternRedactionPlaceHolder
  >?
  redactionPlaceHolder;

  Map<String, Object?> encode() => {
    if (builtInPatternId != null)
      'built_in_pattern_id': builtInPatternId!.toTfJson(),
    if (confidenceLevel != null)
      'confidence_level': confidenceLevel!.toTfJson(),
    if (enforcedUrls != null) 'enforced_urls': enforcedUrls!.toTfJson(),
    if (exemptUrls != null) 'exempt_urls': exemptUrls!.toTfJson(),
    if (customPattern != null)
      'custom_pattern': [for (final e in customPattern!) e.encode()],
    if (redactionPlaceHolder != null)
      'redaction_place_holder': [
        for (final e in redactionPlaceHolder!) e.encode(),
      ],
  };
}

/// Typed helper for the `inline_redaction_configuration.inline_redaction_pattern.custom_pattern` block of
/// `aws_workspacesweb_data_protection_settings` (derived from provider schema).
@immutable
final class WorkspaceswebDataProtectionSettingsInlineRedactionConfigurationInlineRedactionPatternCustomPattern {
  const WorkspaceswebDataProtectionSettingsInlineRedactionConfigurationInlineRedactionPatternCustomPattern({
    this.keywordRegex,
    this.patternDescription,
    required this.patternName,
    required this.patternRegex,
  });

  final TfArg<String>? keywordRegex;

  final TfArg<String>? patternDescription;

  final TfArg<String> patternName;

  final TfArg<String> patternRegex;

  Map<String, Object?> encode() => {
    if (keywordRegex != null) 'keyword_regex': keywordRegex!.toTfJson(),
    if (patternDescription != null)
      'pattern_description': patternDescription!.toTfJson(),
    'pattern_name': patternName.toTfJson(),
    'pattern_regex': patternRegex.toTfJson(),
  };
}

/// Typed helper for the `inline_redaction_configuration.inline_redaction_pattern.redaction_place_holder` block of
/// `aws_workspacesweb_data_protection_settings` (derived from provider schema).
@immutable
final class WorkspaceswebDataProtectionSettingsInlineRedactionConfigurationInlineRedactionPatternRedactionPlaceHolder {
  const WorkspaceswebDataProtectionSettingsInlineRedactionConfigurationInlineRedactionPatternRedactionPlaceHolder({
    this.redactionPlaceHolderText,
    required this.redactionPlaceHolderType,
  });

  final TfArg<String>? redactionPlaceHolderText;

  final TfArg<String> redactionPlaceHolderType;

  Map<String, Object?> encode() => {
    if (redactionPlaceHolderText != null)
      'redaction_place_holder_text': redactionPlaceHolderText!.toTfJson(),
    'redaction_place_holder_type': redactionPlaceHolderType.toTfJson(),
  };
}

/// Factory wrapper for `aws_workspacesweb_data_protection_settings`.
final class AwsWorkspaceswebDataProtectionSettings extends Resource {
  static const String tfType = 'aws_workspacesweb_data_protection_settings';

  AwsWorkspaceswebDataProtectionSettings({
    required super.localName,
    TfArg<Map<String, String>>? additionalEncryptionContext,
    TfArg<String>? customerManagedKey,
    TfArg<String>? description,
    required TfArg<String> displayName,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<WorkspaceswebDataProtectionSettingsInlineRedactionConfiguration>?
    inlineRedactionConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (additionalEncryptionContext != null)
             'additional_encryption_context': additionalEncryptionContext,
           if (customerManagedKey != null)
             'customer_managed_key': customerManagedKey,
           if (description != null) 'description': description,
           'display_name': displayName,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (inlineRedactionConfiguration != null)
             'inline_redaction_configuration': TfArg.literal([
               for (final e in inlineRedactionConfiguration) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsWorkspaceswebDataProtectionSettingsSensitive;

  /// Reference to `associated_portal_arns` attribute.
  TfRef<List<String>> get associatedPortalArns =>
      TfRef.attribute<List<String>>(this, 'associated_portal_arns');

  /// Reference to `data_protection_settings_arn` attribute.
  TfRef<String> get dataProtectionSettingsArn =>
      TfRef.attribute<String>(this, 'data_protection_settings_arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}
