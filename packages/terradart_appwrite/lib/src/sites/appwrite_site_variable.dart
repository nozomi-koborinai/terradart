// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../project/appwrite_project.dart' show AppwriteProject;
import '../sites/appwrite_site.dart' show AppwriteSite;

/// Sensitive field paths for `appwrite_site_variable`.
const Set<String> _appwriteSiteVariableSensitive = <String>{
  'value',
  'value_wo',
};

/// Exactly one of `value`, `value_wo` on `appwrite_site_variable`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.value(...)`.
sealed class SiteVariableValue {
  const SiteVariableValue();

  /// Sets `value`.
  const factory SiteVariableValue.value(Sensitive<String> value) =
      SiteVariableValueChoice;

  /// Sets `value_wo`.
  const factory SiteVariableValue.valueWo(Sensitive<String> valueWo) =
      SiteVariableValueWo;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  @internal
  Map<String, TfArg<Object?>> get argMap;
}

/// The [SiteVariableValue.value] choice: sets `value`.
final class SiteVariableValueChoice extends SiteVariableValue {
  const SiteVariableValueChoice(this.value);

  final Sensitive<String> value;

  @internal
  @override
  String get blockKey => 'value';

  @internal
  @override
  Map<String, Object?> encode() => {'value': value.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'value': value};
}

/// The [SiteVariableValue.valueWo] choice: sets `value_wo`.
final class SiteVariableValueWo extends SiteVariableValue {
  const SiteVariableValueWo(this.valueWo);

  final Sensitive<String> valueWo;

  @internal
  @override
  String get blockKey => 'value_wo';

  @internal
  @override
  Map<String, Object?> encode() => {'value_wo': valueWo.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'value_wo': valueWo};
}

/// Factory wrapper for `appwrite_site_variable`.
///
/// Manages an Appwrite site environment variable.
///
/// Site environment variable. [value] sets exactly one of `value` and
/// `value_wo`. Pass `.value(TfArg.variable('name'))` so the secret never
/// enters synth output.
final class AppwriteSiteVariable extends Resource {
  static const String tfType = 'appwrite_site_variable';

  AppwriteSiteVariable(
    super.localName, {
    required TfArg<String> key,
    RefTo<AppwriteProject>? projectId,
    TfArg<bool>? secret,
    required RefTo<AppwriteSite> siteId,
    required SiteVariableValue value,
    TfArg<num>? valueWoVersion,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'key': key,
           'project_id': ?projectId?.encodeAs('id'),
           'secret': ?secret,
           'site_id': siteId.encodeAs('id'),
           ...value.argMap,
           'value_wo_version': ?valueWoVersion,
         },
       );

  @override
  Set<String> get sensitiveFields => _appwriteSiteVariableSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AppwriteSiteVariable>`.
  RefTo<AppwriteSiteVariable> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');

  /// Reference to `key` attribute.
  TfRef<String> get key => TfRef.attribute<String>(this, 'key');

  /// Reference to `project_id` attribute.
  TfRef<String> get projectId => TfRef.attribute<String>(this, 'project_id');

  /// Reference to `secret` attribute.
  TfRef<bool> get secret => TfRef.attribute<bool>(this, 'secret');

  /// Reference to `site_id` attribute.
  TfRef<String> get siteId => TfRef.attribute<String>(this, 'site_id');

  /// Reference to `value` attribute.
  TfRef<String> get value => TfRef.attribute<String>(this, 'value');

  /// Reference to `value_wo_version` attribute.
  TfRef<num> get valueWoVersion =>
      TfRef.attribute<num>(this, 'value_wo_version');
}
