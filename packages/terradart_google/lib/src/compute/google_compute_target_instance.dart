// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_target_instance`.
const Set<String> _googleComputeTargetInstanceSensitive = <String>{};

/// Compute Target Instance Nat enum for `nat_policy`.
enum ComputeTargetInstanceNatPolicy implements TerraformEnum {
  noNat('NO_NAT');

  const ComputeTargetInstanceNatPolicy(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_compute_target_instance`.
///
/// Represents a TargetInstance resource which defines an endpoint instance that
/// terminates traffic of certain protocols. In particular, they are used in
/// Protocol Forwarding, where forwarding rules can send packets to a non-NAT'ed
/// target instance. Each target instance contains a single virtual machine
/// instance that receives and handles traffic from the corresponding forwarding
/// rules.
///
/// Protocol-forwarding target that points at an existing VM ([instance]).
/// Does not provision a VM; pair with [GoogleComputeInstance] (or a
/// forwarding rule) for traffic. [natPolicy] currently only supports
/// `NO_NAT`.
final class GoogleComputeTargetInstance extends Resource {
  static const String tfType = 'google_compute_target_instance';

  GoogleComputeTargetInstance({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> instance,
    TfArg<String>? zone,
    TfArg<String>? description,
    TfArg<ComputeTargetInstanceNatPolicy>? natPolicy,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'instance': instance,
           'zone': ?zone,
           'description': ?description,
           'nat_policy': ?natPolicy,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeTargetInstanceSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeTargetInstance>`.
  RefTo<GoogleComputeTargetInstance> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `creation_timestamp` attribute.
  TfRef<String> get creationTimestamp =>
      TfRef.attribute<String>(this, 'creation_timestamp');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `instance` attribute.
  TfRef<String> get instanceRef => TfRef.attribute<String>(this, 'instance');

  /// Reference to `nat_policy` attribute.
  TfRef<String> get natPolicyRef => TfRef.attribute<String>(this, 'nat_policy');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `zone` attribute.
  TfRef<String> get zoneRef => TfRef.attribute<String>(this, 'zone');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');
}
