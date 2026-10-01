// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_dialogflow_cx_environment`.
const Set<String> _googleDialogflowCxEnvironmentSensitive = <String>{};

/// Typed helper for the `version_configs` block of
/// `google_dialogflow_cx_environment` (derived from provider schema).
@immutable
final class DialogflowCxEnvironmentVersionConfigs {
  const DialogflowCxEnvironmentVersionConfigs({required this.version});

  final TfArg<String> version;

  Map<String, Object?> encode() => {'version': version.toTfJson()};
}

/// Factory wrapper for `google_dialogflow_cx_environment`.
///
/// Represents an environment for an agent. You can create multiple versions of
/// your agent and publish them to separate environments. When you edit an
/// agent, you are editing the draft agent. At any point, you can save the draft
/// agent as an agent version, which is an immutable snapshot of your agent.
/// When you save the draft agent, it is published to the default environment.
/// When you create agent versions, you can publish them to custom environments.
/// You can create a variety of custom environments for testing, development,
/// production, etc.
///
/// Dialogflow CX **environment** — named deployment environment with
/// version configs for a CX agent.
///
/// **Cost / apply:** gcp-cost: Cloud Dialogflow `FBC0-AA4A-C89A` Text
/// session SKU `A1CC-751A-CDCC` **$0.20**/session (Audio `9496-0679-69BE`
/// **$0.45**/session). billing-behavior: environments sit on the
/// never_apply [GoogleDialogflowCxAgent] session path. **Never** wire
/// into apply-smoke.
final class GoogleDialogflowCxEnvironment extends Resource {
  static const String tfType = 'google_dialogflow_cx_environment';

  GoogleDialogflowCxEnvironment(
    super.localName, {
    required TfArg<String> displayName,
    TfArg<String>? parent,
    TfArg<String>? description,
    required List<DialogflowCxEnvironmentVersionConfigs> versionConfigs,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'display_name': displayName,
           'parent': ?parent,
           'description': ?description,
           'version_configs': TfArg.literal([
             for (final e in versionConfigs) e.encode(),
           ]),
           'deletion_policy': ?deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDialogflowCxEnvironmentSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDialogflowCxEnvironment>`.
  RefTo<GoogleDialogflowCxEnvironment> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `parent` attribute.
  TfRef<String> get parent => TfRef.attribute<String>(this, 'parent');
}
