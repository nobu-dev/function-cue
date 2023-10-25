// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/crossplane-contrib/provider-aws/apis/autoscaling/v1beta1

package v1beta1

// AutoScalingGroupParameters defines the desired state of AutoScalingGroup
#AutoScalingGroupParameters: {
	// Region is which region the AutoScalingGroup will be created.
	// +kubebuilder:validation:Required
	region: string @go(Region)

	// A list of Availability Zones where instances in the Auto Scaling group can
	// be created. Used for launching into the default VPC subnet in each Availability
	// Zone when not using the VPCZoneIdentifier property, or for attaching a network
	// interface when an existing network interface ID is specified in a launch
	// template.
	availabilityZones?: [...null | string] @go(AvailabilityZones,[]*string)

	// Indicates whether Capacity Rebalancing is enabled. Otherwise, Capacity Rebalancing
	// is disabled. When you turn on Capacity Rebalancing, Amazon EC2 Auto Scaling
	// attempts to launch a Spot Instance whenever Amazon EC2 notifies that a Spot
	// Instance is at an elevated risk of interruption. After launching a new instance,
	// it then terminates an old instance. For more information, see Use Capacity
	// Rebalancing to handle Amazon EC2 Spot Interruptions (https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-capacity-rebalancing.html)
	// in the in the Amazon EC2 Auto Scaling User Guide.
	capacityRebalance?: null | bool @go(CapacityRebalance,*bool)

	// Reserved.
	context?: null | string @go(Context,*string)

	// Only needed if you use simple scaling policies.
	//
	// The amount of time, in seconds, between one scaling activity ending and another
	// one starting due to simple scaling policies. For more information, see Scaling
	// cooldowns for Amazon EC2 Auto Scaling (https://docs.aws.amazon.com/autoscaling/ec2/userguide/Cooldown.html)
	// in the Amazon EC2 Auto Scaling User Guide.
	//
	// Default: 300 seconds
	defaultCooldown?: null | int64 @go(DefaultCooldown,*int64)

	// The amount of time, in seconds, until a new instance is considered to have
	// finished initializing and resource consumption to become stable after it
	// enters the InService state.
	//
	// During an instance refresh, Amazon EC2 Auto Scaling waits for the warm-up
	// period after it replaces an instance before it moves on to replacing the
	// next instance. Amazon EC2 Auto Scaling also waits for the warm-up period
	// before aggregating the metrics for new instances with existing instances
	// in the Amazon CloudWatch metrics that are used for scaling, resulting in
	// more reliable usage data. For more information, see Set the default instance
	// warmup for an Auto Scaling group (https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-default-instance-warmup.html)
	// in the Amazon EC2 Auto Scaling User Guide.
	//
	// To manage various warm-up settings at the group level, we recommend that
	// you set the default instance warmup, even if it is set to 0 seconds. To remove
	// a value that you previously set, include the property but specify -1 for
	// the value. However, we strongly recommend keeping the default instance warmup
	// enabled by specifying a value of 0 or other nominal value.
	//
	// Default: None
	defaultInstanceWarmup?: null | int64 @go(DefaultInstanceWarmup,*int64)

	// The desired capacity is the initial capacity of the Auto Scaling group at
	// the time of its creation and the capacity it attempts to maintain. It can
	// scale beyond this capacity if you configure auto scaling. This number must
	// be greater than or equal to the minimum size of the group and less than or
	// equal to the maximum size of the group. If you do not specify a desired capacity,
	// the default is the minimum size of the group.
	desiredCapacity?: null | int64 @go(DesiredCapacity,*int64)

	// The unit of measurement for the value specified for desired capacity. Amazon
	// EC2 Auto Scaling supports DesiredCapacityType for attribute-based instance
	// type selection only. For more information, see Creating an Auto Scaling group
	// using attribute-based instance type selection (https://docs.aws.amazon.com/autoscaling/ec2/userguide/create-asg-instance-type-requirements.html)
	// in the Amazon EC2 Auto Scaling User Guide.
	//
	// By default, Amazon EC2 Auto Scaling specifies units, which translates into
	// number of instances.
	//
	// Valid values: units | vcpu | memory-mib
	desiredCapacityType?: null | string @go(DesiredCapacityType,*string)

	// The amount of time, in seconds, that Amazon EC2 Auto Scaling waits before
	// checking the health status of an EC2 instance that has come into service
	// and marking it unhealthy due to a failed health check. This is useful if
	// your instances do not immediately pass their health checks after they enter
	// the InService state. For more information, see Set the health check grace
	// period for an Auto Scaling group (https://docs.aws.amazon.com/autoscaling/ec2/userguide/health-check-grace-period.html)
	// in the Amazon EC2 Auto Scaling User Guide.
	//
	// Default: 0 seconds
	healthCheckGracePeriod?: null | int64 @go(HealthCheckGracePeriod,*int64)

	// A comma-separated value string of one or more health check types.
	//
	// The valid values are EC2, ELB, and VPC_LATTICE. EC2 is the default health
	// check and cannot be disabled. For more information, see Health checks for
	// Auto Scaling instances (https://docs.aws.amazon.com/autoscaling/ec2/userguide/healthcheck.html)
	// in the Amazon EC2 Auto Scaling User Guide.
	//
	// Only specify EC2 if you must clear a value that was previously set.
	healthCheckType?: null | string @go(HealthCheckType,*string)

	// The ID of the instance used to base the launch configuration on. If specified,
	// Amazon EC2 Auto Scaling uses the configuration values from the specified
	// instance to create a new launch configuration. To get the instance ID, use
	// the Amazon EC2 DescribeInstances (https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeInstances.html)
	// API operation. For more information, see Creating an Auto Scaling group using
	// an EC2 instance (https://docs.aws.amazon.com/autoscaling/ec2/userguide/create-asg-from-instance.html)
	// in the Amazon EC2 Auto Scaling User Guide.
	instanceID?: null | string @go(InstanceID,*string)

	// The name of the launch configuration to use to launch instances.
	//
	// Conditional: You must specify either a launch template (LaunchTemplate or
	// MixedInstancesPolicy) or a launch configuration (LaunchConfigurationName
	// or InstanceId).
	launchConfigurationName?: null | string @go(LaunchConfigurationName,*string)

	// Information used to specify the launch template and version to use to launch
	// instances.
	//
	// Conditional: You must specify either a launch template (LaunchTemplate or
	// MixedInstancesPolicy) or a launch configuration (LaunchConfigurationName
	// or InstanceId).
	//
	// The launch template that is specified must be configured for use with an
	// Auto Scaling group. For more information, see Creating a launch template
	// for an Auto Scaling group (https://docs.aws.amazon.com/autoscaling/ec2/userguide/create-launch-template.html)
	// in the Amazon EC2 Auto Scaling User Guide.
	launchTemplate?: null | #LaunchTemplateSpecification @go(LaunchTemplate,*LaunchTemplateSpecification)

	// One or more lifecycle hooks to add to the Auto Scaling group before instances
	// are launched.
	lifecycleHookSpecificationList?: [...null | #LifecycleHookSpecification] @go(LifecycleHookSpecificationList,[]*LifecycleHookSpecification)

	// A list of Classic Load Balancers associated with this Auto Scaling group.
	// For Application Load Balancers, Network Load Balancers, and Gateway Load
	// Balancers, specify the TargetGroupARNs property instead.
	loadBalancerNames?: [...null | string] @go(LoadBalancerNames,[]*string)

	// The maximum amount of time, in seconds, that an instance can be in service.
	// The default is null. If specified, the value must be either 0 or a number
	// equal to or greater than 86,400 seconds (1 day). For more information, see
	// Replacing Auto Scaling instances based on maximum instance lifetime (https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-max-instance-lifetime.html)
	// in the Amazon EC2 Auto Scaling User Guide.
	maxInstanceLifetime?: null | int64 @go(MaxInstanceLifetime,*int64)

	// The maximum size of the group.
	//
	// With a mixed instances policy that uses instance weighting, Amazon EC2 Auto
	// Scaling may need to go above MaxSize to meet your capacity requirements.
	// In this event, Amazon EC2 Auto Scaling will never go above MaxSize by more
	// than your largest instance weight (weights that define how many units each
	// instance contributes to the desired capacity of the group).
	// +kubebuilder:validation:Required
	maxSize?: null | int64 @go(MaxSize,*int64)

	// The minimum size of the group.
	// +kubebuilder:validation:Required
	minSize?: null | int64 @go(MinSize,*int64)

	// The mixed instances policy. For more information, see Auto Scaling groups
	// with multiple instance types and purchase options (https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-mixed-instances-groups.html)
	// in the Amazon EC2 Auto Scaling User Guide.
	mixedInstancesPolicy?: null | #MixedInstancesPolicy @go(MixedInstancesPolicy,*MixedInstancesPolicy)

	// Indicates whether newly launched instances are protected from termination
	// by Amazon EC2 Auto Scaling when scaling in. For more information about preventing
	// instances from terminating on scale in, see Using instance scale-in protection
	// (https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-instance-protection.html)
	// in the Amazon EC2 Auto Scaling User Guide.
	newInstancesProtectedFromScaleIn?: null | bool @go(NewInstancesProtectedFromScaleIn,*bool)

	// The name of the placement group into which to launch your instances. For
	// more information, see Placement groups (https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/placement-groups.html)
	// in the Amazon EC2 User Guide for Linux Instances.
	//
	// A cluster placement group is a logical grouping of instances within a single
	// Availability Zone. You cannot specify multiple Availability Zones and a cluster
	// placement group.
	placementGroup?: null | string @go(PlacementGroup,*string)

	// The Amazon Resource Name (ARN) of the service-linked role that the Auto Scaling
	// group uses to call other Amazon Web Services service on your behalf. By default,
	// Amazon EC2 Auto Scaling uses a service-linked role named AWSServiceRoleForAutoScaling,
	// which it creates if it does not exist. For more information, see Service-linked
	// roles (https://docs.aws.amazon.com/autoscaling/ec2/userguide/autoscaling-service-linked-role.html)
	// in the Amazon EC2 Auto Scaling User Guide.
	serviceLinkedRoleARN?: null | string @go(ServiceLinkedRoleARN,*string)

	// One or more tags. You can tag your Auto Scaling group and propagate the tags
	// to the Amazon EC2 instances it launches. Tags are not propagated to Amazon
	// EBS volumes. To add tags to Amazon EBS volumes, specify the tags in a launch
	// template but use caution. If the launch template specifies an instance tag
	// with a key that is also specified for the Auto Scaling group, Amazon EC2
	// Auto Scaling overrides the value of that instance tag with the value specified
	// by the Auto Scaling group. For more information, see Tag Auto Scaling groups
	// and instances (https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-tagging.html)
	// in the Amazon EC2 Auto Scaling User Guide.
	tags?: [...null | #Tag] @go(Tags,[]*Tag)

	// The Amazon Resource Names (ARN) of the Elastic Load Balancing target groups
	// to associate with the Auto Scaling group. Instances are registered as targets
	// with the target groups. The target groups receive incoming traffic and route
	// requests to one or more registered targets. For more information, see Use
	// Elastic Load Balancing to distribute traffic across the instances in your
	// Auto Scaling group (https://docs.aws.amazon.com/autoscaling/ec2/userguide/autoscaling-load-balancer.html)
	// in the Amazon EC2 Auto Scaling User Guide.
	targetGroupARNs?: [...null | string] @go(TargetGroupARNs,[]*string)

	// A policy or a list of policies that are used to select the instance to terminate.
	// These policies are executed in the order that you list them. For more information,
	// see Work with Amazon EC2 Auto Scaling termination policies (https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-termination-policies.html)
	// in the Amazon EC2 Auto Scaling User Guide.
	//
	// Valid values: Default | AllocationStrategy | ClosestToNextInstanceHour |
	// NewestInstance | OldestInstance | OldestLaunchConfiguration | OldestLaunchTemplate
	// | arn:aws:lambda:region:account-id:function:my-function:my-alias
	terminationPolicies?: [...null | string] @go(TerminationPolicies,[]*string)

	// A comma-separated list of subnet IDs for a virtual private cloud (VPC) where
	// instances in the Auto Scaling group can be created. If you specify VPCZoneIdentifier
	// with AvailabilityZones, the subnets that you specify must reside in those
	// Availability Zones.
	vpcZoneIdentifier?: null | string @go(VPCZoneIdentifier,*string)

	#CustomAutoScalingGroupParameters
}

// AutoScalingGroupSpec defines the desired state of AutoScalingGroup
#AutoScalingGroupSpec: {
	forProvider: #AutoScalingGroupParameters @go(ForProvider)
}

// AutoScalingGroupObservation defines the observed state of AutoScalingGroup
#AutoScalingGroupObservation: {
	// The Amazon Resource Name (ARN) of the Auto Scaling group.
	autoScalingGroupARN?: null | string @go(AutoScalingGroupARN,*string)

	// The name of the Auto Scaling group.
	autoScalingGroupName?: null | string @go(AutoScalingGroupName,*string)

	// One or more Availability Zones for the group.
	availabilityZones?: [...null | string] @go(AvailabilityZones,[]*string)

	// Indicates whether Capacity Rebalancing is enabled.
	capacityRebalance?: null | bool @go(CapacityRebalance,*bool)

	// The duration of the default cooldown period, in seconds.
	defaultCooldown?: null | int64 @go(DefaultCooldown,*int64)

	// The duration of the default instance warmup, in seconds.
	defaultInstanceWarmup?: null | int64 @go(DefaultInstanceWarmup,*int64)

	// The desired size of the group.
	desiredCapacity?: null | int64 @go(DesiredCapacity,*int64)

	// The metrics enabled for the group.
	enabledMetrics?: [...null | #EnabledMetric] @go(EnabledMetrics,[]*EnabledMetric)

	// The duration of the health check grace period, in seconds.
	healthCheckGracePeriod?: null | int64 @go(HealthCheckGracePeriod,*int64)

	// A comma-separated value string of one or more health check types.
	healthCheckType?: null | string @go(HealthCheckType,*string)

	// The EC2 instances associated with the group.
	instances?: [...null | #Instance] @go(Instances,[]*Instance)

	// The name of the associated launch configuration.
	launchConfigurationName?: null | string @go(LaunchConfigurationName,*string)

	// The launch template for the group.
	launchTemplate?: null | #LaunchTemplateSpecification @go(LaunchTemplate,*LaunchTemplateSpecification)

	// One or more load balancers associated with the group.
	loadBalancerNames?: [...null | string] @go(LoadBalancerNames,[]*string)

	// The maximum amount of time, in seconds, that an instance can be in service.
	//
	// Valid Range: Minimum value of 0.
	maxInstanceLifetime?: null | int64 @go(MaxInstanceLifetime,*int64)

	// The maximum size of the group.
	maxSize?: null | int64 @go(MaxSize,*int64)

	// The minimum size of the group.
	minSize?: null | int64 @go(MinSize,*int64)

	// The mixed instances policy for the group.
	mixedInstancesPolicy?: null | #MixedInstancesPolicy @go(MixedInstancesPolicy,*MixedInstancesPolicy)

	// Indicates whether newly launched instances are protected from termination
	// by Amazon EC2 Auto Scaling when scaling in.
	newInstancesProtectedFromScaleIn?: null | bool @go(NewInstancesProtectedFromScaleIn,*bool)

	// The name of the placement group into which to launch your instances, if any.
	placementGroup?: null | string @go(PlacementGroup,*string)

	// The predicted capacity of the group when it has a predictive scaling policy.
	predictedCapacity?: null | int64 @go(PredictedCapacity,*int64)

	// The Amazon Resource Name (ARN) of the service-linked role that the Auto Scaling
	// group uses to call other Amazon Web Services on your behalf.
	serviceLinkedRoleARN?: null | string @go(ServiceLinkedRoleARN,*string)

	// The current state of the group when the DeleteAutoScalingGroup operation
	// is in progress.
	status?: null | string @go(Status,*string)

	// The suspended processes associated with the group.
	suspendedProcesses?: [...null | #SuspendedProcess] @go(SuspendedProcesses,[]*SuspendedProcess)

	// The tags for the group.
	tags?: [...null | #TagDescription] @go(Tags,[]*TagDescription)

	// The Amazon Resource Names (ARN) of the target groups for your load balancer.
	targetGroupARNs?: [...null | string] @go(TargetGroupARNs,[]*string)

	// The termination policies for the group.
	terminationPolicies?: [...null | string] @go(TerminationPolicies,[]*string)

	// The traffic sources associated with this Auto Scaling group.
	trafficSources?: [...null | #TrafficSourceIdentifier] @go(TrafficSources,[]*TrafficSourceIdentifier)

	// One or more subnet IDs, if applicable, separated by commas.
	vpcZoneIdentifier?: null | string @go(VPCZoneIdentifier,*string)

	// The warm pool for the group.
	warmPoolConfiguration?: null | #WarmPoolConfiguration @go(WarmPoolConfiguration,*WarmPoolConfiguration)

	// The current size of the warm pool.
	warmPoolSize?: null | int64 @go(WarmPoolSize,*int64)
}

// AutoScalingGroupStatus defines the observed state of AutoScalingGroup.
#AutoScalingGroupStatus: {
	atProvider?: #AutoScalingGroupObservation @go(AtProvider)
}

// AutoScalingGroup is the Schema for the AutoScalingGroups API
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:storageversion
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#AutoScalingGroup: {
	spec:    #AutoScalingGroupSpec   @go(Spec)
	status?: #AutoScalingGroupStatus @go(Status)
}

// AutoScalingGroupList contains a list of AutoScalingGroups
#AutoScalingGroupList: {
	items: [...#AutoScalingGroup] @go(Items,[]AutoScalingGroup)
}
