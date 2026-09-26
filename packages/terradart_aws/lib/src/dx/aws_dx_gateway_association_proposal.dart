// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_dx_gateway_association_proposal`.
const Set<String> _awsDxGatewayAssociationProposalSensitive = <String>{};

/// Factory wrapper for `aws_dx_gateway_association_proposal`.
final class AwsDxGatewayAssociationProposal extends Resource {
  static const String tfType = 'aws_dx_gateway_association_proposal';

  AwsDxGatewayAssociationProposal({
    required super.localName,
    TfArg<List<String>>? allowedPrefixes,
    required TfArg<String> associatedGatewayId,
    required TfArg<String> dxGatewayId,
    required TfArg<String> dxGatewayOwnerAccountId,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (allowedPrefixes != null) 'allowed_prefixes': allowedPrefixes,
           'associated_gateway_id': associatedGatewayId,
           'dx_gateway_id': dxGatewayId,
           'dx_gateway_owner_account_id': dxGatewayOwnerAccountId,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDxGatewayAssociationProposalSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `associated_gateway_owner_account_id` attribute.
  TfRef<String> get associatedGatewayOwnerAccountId =>
      TfRef.attribute<String>(this, 'associated_gateway_owner_account_id');

  /// Reference to `associated_gateway_type` attribute.
  TfRef<String> get associatedGatewayType =>
      TfRef.attribute<String>(this, 'associated_gateway_type');
}
