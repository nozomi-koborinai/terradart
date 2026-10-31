// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
/// Azure Resource Manager eventgrid resources.
library;

export 'package:terradart_core/terradart_core.dart';
export 'src/data/azurerm_eventgrid_domain.dart' show DataAzurermEventgridDomain;
export 'src/data/azurerm_eventgrid_domain_topic.dart'
    show DataAzurermEventgridDomainTopic;
export 'src/data/azurerm_eventgrid_partner_namespace.dart'
    show DataAzurermEventgridPartnerNamespace;
export 'src/data/azurerm_eventgrid_partner_registration.dart'
    show DataAzurermEventgridPartnerRegistration;
export 'src/data/azurerm_eventgrid_system_topic.dart'
    show DataAzurermEventgridSystemTopic;
export 'src/data/azurerm_eventgrid_topic.dart' show DataAzurermEventgridTopic;
export 'src/eventgrid/azurerm_eventgrid_domain.dart'
    show
        AzurermEventgridDomain,
        EventgridDomainDataResidencyBoundary,
        EventgridDomainIdentity,
        EventgridDomainInputMappingDefaultValues,
        EventgridDomainInputMappingFields,
        EventgridDomainInputSchema,
        EventgridDomainMinimumTlsVersion;
export 'src/eventgrid/azurerm_eventgrid_domain_topic.dart'
    show AzurermEventgridDomainTopic;
export 'src/eventgrid/azurerm_eventgrid_event_subscription.dart'
    show
        AzurermEventgridEventSubscription,
        EventgridEventSubscriptionAdvancedFilter,
        EventgridEventSubscriptionAzureFunctionEndpoint,
        EventgridEventSubscriptionBoolEquals,
        EventgridEventSubscriptionDeadLetterIdentity,
        EventgridEventSubscriptionDeadLetterIdentityType,
        EventgridEventSubscriptionDeliveryIdentity,
        EventgridEventSubscriptionDeliveryProperty,
        EventgridEventSubscriptionDeliveryPropertyType,
        EventgridEventSubscriptionEventDeliverySchema,
        EventgridEventSubscriptionIsNotNull,
        EventgridEventSubscriptionIsNullOrUndefined,
        EventgridEventSubscriptionNumberGreaterThan,
        EventgridEventSubscriptionNumberGreaterThanOrEquals,
        EventgridEventSubscriptionNumberIn,
        EventgridEventSubscriptionNumberInRange,
        EventgridEventSubscriptionNumberLessThan,
        EventgridEventSubscriptionNumberLessThanOrEquals,
        EventgridEventSubscriptionNumberNotIn,
        EventgridEventSubscriptionNumberNotInRange,
        EventgridEventSubscriptionRetryPolicy,
        EventgridEventSubscriptionStorageBlobDeadLetterDestination,
        EventgridEventSubscriptionStorageQueueEndpoint,
        EventgridEventSubscriptionStringBeginsWith,
        EventgridEventSubscriptionStringContains,
        EventgridEventSubscriptionStringEndsWith,
        EventgridEventSubscriptionStringIn,
        EventgridEventSubscriptionStringNotBeginsWith,
        EventgridEventSubscriptionStringNotContains,
        EventgridEventSubscriptionStringNotEndsWith,
        EventgridEventSubscriptionStringNotIn,
        EventgridEventSubscriptionSubjectFilter,
        EventgridEventSubscriptionWebhookEndpoint;
export 'src/eventgrid/azurerm_eventgrid_namespace.dart'
    show
        AzurermEventgridNamespace,
        EventgridNamespaceAction,
        EventgridNamespaceAlternativeAuthenticationNameSource,
        EventgridNamespaceDynamicRoutingEnrichment,
        EventgridNamespaceIdentity,
        EventgridNamespaceInboundIpRule,
        EventgridNamespacePublicNetworkAccess,
        EventgridNamespaceSku,
        EventgridNamespaceStaticRoutingEnrichment,
        EventgridNamespaceTopicSpacesConfiguration;
export 'src/eventgrid/azurerm_eventgrid_namespace_topic.dart'
    show AzurermEventgridNamespaceTopic;
export 'src/eventgrid/azurerm_eventgrid_partner_configuration.dart'
    show
        AzurermEventgridPartnerConfiguration,
        EventgridPartnerConfigurationPartnerAuthorization;
export 'src/eventgrid/azurerm_eventgrid_partner_namespace.dart'
    show
        AzurermEventgridPartnerNamespace,
        EventgridPartnerNamespaceAction,
        EventgridPartnerNamespaceInboundIpRule,
        EventgridPartnerNamespacePartnerTopicRoutingMode,
        EventgridPartnerNamespacePublicNetworkAccess;
export 'src/eventgrid/azurerm_eventgrid_partner_registration.dart'
    show AzurermEventgridPartnerRegistration;
export 'src/eventgrid/azurerm_eventgrid_system_topic.dart'
    show AzurermEventgridSystemTopic, EventgridSystemTopicIdentity;
export 'src/eventgrid/azurerm_eventgrid_system_topic_event_subscription.dart'
    show
        AzurermEventgridSystemTopicEventSubscription,
        EventgridSystemTopicEventSubscriptionAdvancedFilter,
        EventgridSystemTopicEventSubscriptionAzureFunctionEndpoint,
        EventgridSystemTopicEventSubscriptionBoolEquals,
        EventgridSystemTopicEventSubscriptionDeadLetterIdentity,
        EventgridSystemTopicEventSubscriptionDeadLetterIdentityType,
        EventgridSystemTopicEventSubscriptionDeliveryIdentity,
        EventgridSystemTopicEventSubscriptionDeliveryProperty,
        EventgridSystemTopicEventSubscriptionDeliveryPropertyType,
        EventgridSystemTopicEventSubscriptionEventDeliverySchema,
        EventgridSystemTopicEventSubscriptionIsNotNull,
        EventgridSystemTopicEventSubscriptionIsNullOrUndefined,
        EventgridSystemTopicEventSubscriptionNumberGreaterThan,
        EventgridSystemTopicEventSubscriptionNumberGreaterThanOrEquals,
        EventgridSystemTopicEventSubscriptionNumberIn,
        EventgridSystemTopicEventSubscriptionNumberInRange,
        EventgridSystemTopicEventSubscriptionNumberLessThan,
        EventgridSystemTopicEventSubscriptionNumberLessThanOrEquals,
        EventgridSystemTopicEventSubscriptionNumberNotIn,
        EventgridSystemTopicEventSubscriptionNumberNotInRange,
        EventgridSystemTopicEventSubscriptionRetryPolicy,
        EventgridSystemTopicEventSubscriptionStorageBlobDeadLetterDestination,
        EventgridSystemTopicEventSubscriptionStorageQueueEndpoint,
        EventgridSystemTopicEventSubscriptionStringBeginsWith,
        EventgridSystemTopicEventSubscriptionStringContains,
        EventgridSystemTopicEventSubscriptionStringEndsWith,
        EventgridSystemTopicEventSubscriptionStringIn,
        EventgridSystemTopicEventSubscriptionStringNotBeginsWith,
        EventgridSystemTopicEventSubscriptionStringNotContains,
        EventgridSystemTopicEventSubscriptionStringNotEndsWith,
        EventgridSystemTopicEventSubscriptionStringNotIn,
        EventgridSystemTopicEventSubscriptionSubjectFilter,
        EventgridSystemTopicEventSubscriptionWebhookEndpoint;
export 'src/eventgrid/azurerm_eventgrid_topic.dart'
    show
        AzurermEventgridTopic,
        EventgridTopicDataResidencyBoundary,
        EventgridTopicIdentity,
        EventgridTopicInputMappingDefaultValues,
        EventgridTopicInputMappingFields,
        EventgridTopicInputSchema,
        EventgridTopicMinimumTlsVersion;
