// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/crossplane-contrib/provider-aws/apis/servicediscovery/v1alpha1

package v1alpha1

// +kubebuilder:skipversion
#DNSConfig: {
	dnsRecords?: [...null | #DNSRecord] @go(DNSRecords,[]*DNSRecord)
	namespaceID?:   null | string @go(NamespaceID,*string)
	routingPolicy?: null | string @go(RoutingPolicy,*string)
}

// +kubebuilder:skipversion
#DNSConfigChange: {
	dnsRecords?: [...null | #DNSRecord] @go(DNSRecords,[]*DNSRecord)
}

// +kubebuilder:skipversion
#DNSProperties: {
	hostedZoneID?: null | string @go(HostedZoneID,*string)

	// Start of Authority (SOA) properties for a public or private DNS namespace.
	sOA?: null | #SOA @go(SOA,*SOA)
}

// +kubebuilder:skipversion
#DNSRecord: {
	tTL?:   null | int64  @go(TTL,*int64)
	type_?: null | string @go(Type,*string)
}

// +kubebuilder:skipversion
#HTTPInstanceSummary: {
	instanceID?:    null | string @go(InstanceID,*string)
	namespaceName?: null | string @go(NamespaceName,*string)
	serviceName?:   null | string @go(ServiceName,*string)
}

// +kubebuilder:skipversion
#HTTPNamespaceChange: {
	description?: null | string @go(Description,*string)
}

// +kubebuilder:skipversion
#HealthCheckConfig: {
	failureThreshold?: null | int64  @go(FailureThreshold,*int64)
	resourcePath?:     null | string @go(ResourcePath,*string)
	type_?:            null | string @go(Type,*string)
}

// +kubebuilder:skipversion
#HealthCheckCustomConfig: {
	failureThreshold?: null | int64 @go(FailureThreshold,*int64)
}

// +kubebuilder:skipversion
#Instance: {
	creatorRequestID?: null | string @go(CreatorRequestID,*string)
	id?:               null | string @go(ID,*string)
}

// +kubebuilder:skipversion
#InstanceSummary: {
	id?: null | string @go(ID,*string)
}

// +kubebuilder:skipversion
#Namespace: {
	arn?:              null | string @go(ARN,*string)
	creatorRequestID?: null | string @go(CreatorRequestID,*string)
	description?:      null | string @go(Description,*string)
	id?:               null | string @go(ID,*string)
	serviceCount?:     null | int64  @go(ServiceCount,*int64)
}

// +kubebuilder:skipversion
#NamespaceFilter: {
	condition?: null | string @go(Condition,*string)
	values?: [...null | string] @go(Values,[]*string)
}

// +kubebuilder:skipversion
#NamespaceSummary: {
	arn?:          null | string @go(ARN,*string)
	description?:  null | string @go(Description,*string)
	id?:           null | string @go(ID,*string)
	serviceCount?: null | int64  @go(ServiceCount,*int64)
}

// +kubebuilder:skipversion
#Operation: {
	id?: null | string @go(ID,*string)
}

// +kubebuilder:skipversion
#OperationFilter: {
	condition?: null | string @go(Condition,*string)
	values?: [...null | string] @go(Values,[]*string)
}

// +kubebuilder:skipversion
#OperationSummary: {
	id?: null | string @go(ID,*string)
}

// +kubebuilder:skipversion
#PrivateDNSNamespaceChange: {
	description?: null | string @go(Description,*string)

	// Updated properties for the private DNS namespace.
	properties?: null | #PrivateDNSNamespacePropertiesChange @go(Properties,*PrivateDNSNamespacePropertiesChange)
}

// +kubebuilder:skipversion
#PrivateDNSNamespaceProperties: {
	// DNS properties for the private DNS namespace.
	dnsProperties?: null | #PrivateDNSPropertiesMutable @go(DNSProperties,*PrivateDNSPropertiesMutable)
}

// +kubebuilder:skipversion
#PrivateDNSNamespacePropertiesChange: {
	// Updated DNS properties for the private DNS namespace.
	dnsProperties?: null | #PrivateDNSPropertiesMutableChange @go(DNSProperties,*PrivateDNSPropertiesMutableChange)
}

// +kubebuilder:skipversion
#PrivateDNSPropertiesMutable: {
	// Start of Authority (SOA) properties for a public or private DNS namespace.
	sOA?: null | #SOA @go(SOA,*SOA)
}

// +kubebuilder:skipversion
#PrivateDNSPropertiesMutableChange: {
	// Updated Start of Authority (SOA) properties for a public or private DNS namespace.
	sOA?: null | #SOAChange @go(SOA,*SOAChange)
}

// +kubebuilder:skipversion
#PublicDNSNamespaceChange: {
	description?: null | string @go(Description,*string)

	// Updated properties for the public DNS namespace.
	properties?: null | #PublicDNSNamespacePropertiesChange @go(Properties,*PublicDNSNamespacePropertiesChange)
}

// +kubebuilder:skipversion
#PublicDNSNamespaceProperties: {
	// DNS properties for the public DNS namespace.
	dnsProperties?: null | #PublicDNSPropertiesMutable @go(DNSProperties,*PublicDNSPropertiesMutable)
}

// +kubebuilder:skipversion
#PublicDNSNamespacePropertiesChange: {
	// Updated DNS properties for the public DNS namespace.
	dnsProperties?: null | #PublicDNSPropertiesMutableChange @go(DNSProperties,*PublicDNSPropertiesMutableChange)
}

// +kubebuilder:skipversion
#PublicDNSPropertiesMutable: {
	// Start of Authority (SOA) properties for a public or private DNS namespace.
	sOA?: null | #SOA @go(SOA,*SOA)
}

// +kubebuilder:skipversion
#PublicDNSPropertiesMutableChange: {
	// Updated Start of Authority (SOA) properties for a public or private DNS namespace.
	sOA?: null | #SOAChange @go(SOA,*SOAChange)
}

// +kubebuilder:skipversion
#SOA: {
	tTL?: null | int64 @go(TTL,*int64)
}

// +kubebuilder:skipversion
#SOAChange: {
	tTL?: null | int64 @go(TTL,*int64)
}

// +kubebuilder:skipversion
#ServiceChange: {
	description?: null | string @go(Description,*string)

	// A complex type that contains information about changes to the Route 53 DNS
	// records that Cloud Map creates when you register an instance.
	dnsConfig?: null | #DNSConfigChange @go(DNSConfig,*DNSConfigChange)

	// Public DNS and HTTP namespaces only. A complex type that contains settings
	// for an optional health check. If you specify settings for a health check,
	// Cloud Map associates the health check with the records that you specify in
	// DnsConfig.
	//
	// If you specify a health check configuration, you can specify either HealthCheckCustomConfig
	// or HealthCheckConfig but not both.
	//
	// Health checks are basic Route 53 health checks that monitor an Amazon Web
	// Services endpoint. For information about pricing for health checks, see Amazon
	// Route 53 Pricing (http://aws.amazon.com/route53/pricing/).
	//
	// Note the following about configuring health checks.
	//
	// A and AAAA records
	//
	// If DnsConfig includes configurations for both A and AAAA records, Cloud Map
	// creates a health check that uses the IPv4 address to check the health of
	// the resource. If the endpoint tthat's specified by the IPv4 address is unhealthy,
	// Route 53 considers both the A and AAAA records to be unhealthy.
	//
	// CNAME records
	//
	// You can't specify settings for HealthCheckConfig when the DNSConfig includes
	// CNAME for the value of Type. If you do, the CreateService request will fail
	// with an InvalidInput error.
	//
	// Request interval
	//
	// A Route 53 health checker in each health-checking Amazon Web Services Region
	// sends a health check request to an endpoint every 30 seconds. On average,
	// your endpoint receives a health check request about every two seconds. However,
	// health checkers don't coordinate with one another. Therefore, you might sometimes
	// see several requests in one second that's followed by a few seconds with
	// no health checks at all.
	//
	// Health checking regions
	//
	// Health checkers perform checks from all Route 53 health-checking Regions.
	// For a list of the current Regions, see Regions (https://docs.aws.amazon.com/Route53/latest/APIReference/API_HealthCheckConfig.html#Route53-Type-HealthCheckConfig-Regions).
	//
	// Alias records
	//
	// When you register an instance, if you include the AWS_ALIAS_DNS_NAME attribute,
	// Cloud Map creates a Route 53 alias record. Note the following:
	//
	//    * Route 53 automatically sets EvaluateTargetHealth to true for alias records.
	//    When EvaluateTargetHealth is true, the alias record inherits the health
	//    of the referenced Amazon Web Services resource. such as an ELB load balancer.
	//    For more information, see EvaluateTargetHealth (https://docs.aws.amazon.com/Route53/latest/APIReference/API_AliasTarget.html#Route53-Type-AliasTarget-EvaluateTargetHealth).
	//
	//    * If you include HealthCheckConfig and then use the service to register
	//    an instance that creates an alias record, Route 53 doesn't create the
	//    health check.
	//
	// Charges for health checks
	//
	// Health checks are basic Route 53 health checks that monitor an Amazon Web
	// Services endpoint. For information about pricing for health checks, see Amazon
	// Route 53 Pricing (http://aws.amazon.com/route53/pricing/).
	healthCheckConfig?: null | #HealthCheckConfig @go(HealthCheckConfig,*HealthCheckConfig)
}

// +kubebuilder:skipversion
#ServiceFilter: {
	condition?: null | string @go(Condition,*string)
	name?:      null | string @go(Name,*string)
	values?: [...null | string] @go(Values,[]*string)
}

// +kubebuilder:skipversion
#ServiceSummary: {
	arn?:         null | string @go(ARN,*string)
	description?: null | string @go(Description,*string)

	// A complex type that contains information about the Amazon Route 53 DNS records
	// that you want Cloud Map to create when you register an instance.
	//
	// The record types of a service can only be changed by deleting the service
	// and recreating it with a new Dnsconfig.
	dnsConfig?: null | #DNSConfig @go(DNSConfig,*DNSConfig)

	// Public DNS and HTTP namespaces only. A complex type that contains settings
	// for an optional health check. If you specify settings for a health check,
	// Cloud Map associates the health check with the records that you specify in
	// DnsConfig.
	//
	// If you specify a health check configuration, you can specify either HealthCheckCustomConfig
	// or HealthCheckConfig but not both.
	//
	// Health checks are basic Route 53 health checks that monitor an Amazon Web
	// Services endpoint. For information about pricing for health checks, see Amazon
	// Route 53 Pricing (http://aws.amazon.com/route53/pricing/).
	//
	// Note the following about configuring health checks.
	//
	// A and AAAA records
	//
	// If DnsConfig includes configurations for both A and AAAA records, Cloud Map
	// creates a health check that uses the IPv4 address to check the health of
	// the resource. If the endpoint tthat's specified by the IPv4 address is unhealthy,
	// Route 53 considers both the A and AAAA records to be unhealthy.
	//
	// CNAME records
	//
	// You can't specify settings for HealthCheckConfig when the DNSConfig includes
	// CNAME for the value of Type. If you do, the CreateService request will fail
	// with an InvalidInput error.
	//
	// Request interval
	//
	// A Route 53 health checker in each health-checking Amazon Web Services Region
	// sends a health check request to an endpoint every 30 seconds. On average,
	// your endpoint receives a health check request about every two seconds. However,
	// health checkers don't coordinate with one another. Therefore, you might sometimes
	// see several requests in one second that's followed by a few seconds with
	// no health checks at all.
	//
	// Health checking regions
	//
	// Health checkers perform checks from all Route 53 health-checking Regions.
	// For a list of the current Regions, see Regions (https://docs.aws.amazon.com/Route53/latest/APIReference/API_HealthCheckConfig.html#Route53-Type-HealthCheckConfig-Regions).
	//
	// Alias records
	//
	// When you register an instance, if you include the AWS_ALIAS_DNS_NAME attribute,
	// Cloud Map creates a Route 53 alias record. Note the following:
	//
	//    * Route 53 automatically sets EvaluateTargetHealth to true for alias records.
	//    When EvaluateTargetHealth is true, the alias record inherits the health
	//    of the referenced Amazon Web Services resource. such as an ELB load balancer.
	//    For more information, see EvaluateTargetHealth (https://docs.aws.amazon.com/Route53/latest/APIReference/API_AliasTarget.html#Route53-Type-AliasTarget-EvaluateTargetHealth).
	//
	//    * If you include HealthCheckConfig and then use the service to register
	//    an instance that creates an alias record, Route 53 doesn't create the
	//    health check.
	//
	// Charges for health checks
	//
	// Health checks are basic Route 53 health checks that monitor an Amazon Web
	// Services endpoint. For information about pricing for health checks, see Amazon
	// Route 53 Pricing (http://aws.amazon.com/route53/pricing/).
	healthCheckConfig?: null | #HealthCheckConfig @go(HealthCheckConfig,*HealthCheckConfig)

	// A complex type that contains information about an optional custom health
	// check. A custom health check, which requires that you use a third-party health
	// checker to evaluate the health of your resources, is useful in the following
	// circumstances:
	//
	//    * You can't use a health check that's defined by HealthCheckConfig because
	//    the resource isn't available over the internet. For example, you can use
	//    a custom health check when the instance is in an Amazon VPC. (To check
	//    the health of resources in a VPC, the health checker must also be in the
	//    VPC.)
	//
	//    * You want to use a third-party health checker regardless of where your
	//    resources are located.
	//
	// If you specify a health check configuration, you can specify either HealthCheckCustomConfig
	// or HealthCheckConfig but not both.
	//
	// To change the status of a custom health check, submit an UpdateInstanceCustomHealthStatus
	// request. Cloud Map doesn't monitor the status of the resource, it just keeps
	// a record of the status specified in the most recent UpdateInstanceCustomHealthStatus
	// request.
	//
	// Here's how custom health checks work:
	//
	// You create a service.
	//
	// You register an instance.
	//
	// You configure a third-party health checker to monitor the resource that's
	// associated with the new instance.
	//
	// Cloud Map doesn't check the health of the resource directly.
	//
	// The third-party health-checker determines that the resource is unhealthy
	// and notifies your application.
	//
	// Your application submits an UpdateInstanceCustomHealthStatus request.
	//
	// Cloud Map waits for 30 seconds.
	//
	// If another UpdateInstanceCustomHealthStatus request doesn't arrive during
	// that time to change the status back to healthy, Cloud Map stops routing traffic
	// to the resource.
	healthCheckCustomConfig?: null | #HealthCheckCustomConfig @go(HealthCheckCustomConfig,*HealthCheckCustomConfig)
	id?:                      null | string                   @go(ID,*string)
	instanceCount?:           null | int64                    @go(InstanceCount,*int64)
	name?:                    null | string                   @go(Name,*string)
	type_?:                   null | string                   @go(Type,*string)
}

// +kubebuilder:skipversion
#Service_SDK: {
	arn?:              null | string @go(ARN,*string)
	creatorRequestID?: null | string @go(CreatorRequestID,*string)
	description?:      null | string @go(Description,*string)

	// A complex type that contains information about the Amazon Route 53 DNS records
	// that you want Cloud Map to create when you register an instance.
	//
	// The record types of a service can only be changed by deleting the service
	// and recreating it with a new Dnsconfig.
	dnsConfig?: null | #DNSConfig @go(DNSConfig,*DNSConfig)

	// Public DNS and HTTP namespaces only. A complex type that contains settings
	// for an optional health check. If you specify settings for a health check,
	// Cloud Map associates the health check with the records that you specify in
	// DnsConfig.
	//
	// If you specify a health check configuration, you can specify either HealthCheckCustomConfig
	// or HealthCheckConfig but not both.
	//
	// Health checks are basic Route 53 health checks that monitor an Amazon Web
	// Services endpoint. For information about pricing for health checks, see Amazon
	// Route 53 Pricing (http://aws.amazon.com/route53/pricing/).
	//
	// Note the following about configuring health checks.
	//
	// A and AAAA records
	//
	// If DnsConfig includes configurations for both A and AAAA records, Cloud Map
	// creates a health check that uses the IPv4 address to check the health of
	// the resource. If the endpoint tthat's specified by the IPv4 address is unhealthy,
	// Route 53 considers both the A and AAAA records to be unhealthy.
	//
	// CNAME records
	//
	// You can't specify settings for HealthCheckConfig when the DNSConfig includes
	// CNAME for the value of Type. If you do, the CreateService request will fail
	// with an InvalidInput error.
	//
	// Request interval
	//
	// A Route 53 health checker in each health-checking Amazon Web Services Region
	// sends a health check request to an endpoint every 30 seconds. On average,
	// your endpoint receives a health check request about every two seconds. However,
	// health checkers don't coordinate with one another. Therefore, you might sometimes
	// see several requests in one second that's followed by a few seconds with
	// no health checks at all.
	//
	// Health checking regions
	//
	// Health checkers perform checks from all Route 53 health-checking Regions.
	// For a list of the current Regions, see Regions (https://docs.aws.amazon.com/Route53/latest/APIReference/API_HealthCheckConfig.html#Route53-Type-HealthCheckConfig-Regions).
	//
	// Alias records
	//
	// When you register an instance, if you include the AWS_ALIAS_DNS_NAME attribute,
	// Cloud Map creates a Route 53 alias record. Note the following:
	//
	//    * Route 53 automatically sets EvaluateTargetHealth to true for alias records.
	//    When EvaluateTargetHealth is true, the alias record inherits the health
	//    of the referenced Amazon Web Services resource. such as an ELB load balancer.
	//    For more information, see EvaluateTargetHealth (https://docs.aws.amazon.com/Route53/latest/APIReference/API_AliasTarget.html#Route53-Type-AliasTarget-EvaluateTargetHealth).
	//
	//    * If you include HealthCheckConfig and then use the service to register
	//    an instance that creates an alias record, Route 53 doesn't create the
	//    health check.
	//
	// Charges for health checks
	//
	// Health checks are basic Route 53 health checks that monitor an Amazon Web
	// Services endpoint. For information about pricing for health checks, see Amazon
	// Route 53 Pricing (http://aws.amazon.com/route53/pricing/).
	healthCheckConfig?: null | #HealthCheckConfig @go(HealthCheckConfig,*HealthCheckConfig)

	// A complex type that contains information about an optional custom health
	// check. A custom health check, which requires that you use a third-party health
	// checker to evaluate the health of your resources, is useful in the following
	// circumstances:
	//
	//    * You can't use a health check that's defined by HealthCheckConfig because
	//    the resource isn't available over the internet. For example, you can use
	//    a custom health check when the instance is in an Amazon VPC. (To check
	//    the health of resources in a VPC, the health checker must also be in the
	//    VPC.)
	//
	//    * You want to use a third-party health checker regardless of where your
	//    resources are located.
	//
	// If you specify a health check configuration, you can specify either HealthCheckCustomConfig
	// or HealthCheckConfig but not both.
	//
	// To change the status of a custom health check, submit an UpdateInstanceCustomHealthStatus
	// request. Cloud Map doesn't monitor the status of the resource, it just keeps
	// a record of the status specified in the most recent UpdateInstanceCustomHealthStatus
	// request.
	//
	// Here's how custom health checks work:
	//
	// You create a service.
	//
	// You register an instance.
	//
	// You configure a third-party health checker to monitor the resource that's
	// associated with the new instance.
	//
	// Cloud Map doesn't check the health of the resource directly.
	//
	// The third-party health-checker determines that the resource is unhealthy
	// and notifies your application.
	//
	// Your application submits an UpdateInstanceCustomHealthStatus request.
	//
	// Cloud Map waits for 30 seconds.
	//
	// If another UpdateInstanceCustomHealthStatus request doesn't arrive during
	// that time to change the status back to healthy, Cloud Map stops routing traffic
	// to the resource.
	healthCheckCustomConfig?: null | #HealthCheckCustomConfig @go(HealthCheckCustomConfig,*HealthCheckCustomConfig)
	id?:                      null | string                   @go(ID,*string)
	instanceCount?:           null | int64                    @go(InstanceCount,*int64)
	name?:                    null | string                   @go(Name,*string)
	namespaceID?:             null | string                   @go(NamespaceID,*string)
	type_?:                   null | string                   @go(Type,*string)
}

// +kubebuilder:skipversion
#Tag: {
	key?:   null | string @go(Key,*string)
	value?: null | string @go(Value,*string)
}
