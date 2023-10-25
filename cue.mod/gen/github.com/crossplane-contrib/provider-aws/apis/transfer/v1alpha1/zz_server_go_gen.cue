// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/crossplane-contrib/provider-aws/apis/transfer/v1alpha1

package v1alpha1

// ServerParameters defines the desired state of Server
#ServerParameters: {
	// Region is which region the Server will be created.
	// +kubebuilder:validation:Required
	region: string @go(Region)

	// The domain of the storage system that is used for file transfers. There are
	// two domains available: Amazon Simple Storage Service (Amazon S3) and Amazon
	// Elastic File System (Amazon EFS). The default value is S3.
	//
	// After the server is created, the domain cannot be changed.
	domain?: null | string @go(Domain,*string)

	// The type of endpoint that you want your server to use. You can choose to
	// make your server's endpoint publicly accessible (PUBLIC) or host it inside
	// your VPC. With an endpoint that is hosted in a VPC, you can restrict access
	// to your server and resources only within your VPC or choose to make it internet
	// facing by attaching Elastic IP addresses directly to it.
	//
	// After May 19, 2021, you won't be able to create a server using EndpointType=VPC_ENDPOINT
	// in your Amazon Web Services account if your account hasn't already done so
	// before May 19, 2021. If you have already created servers with EndpointType=VPC_ENDPOINT
	// in your Amazon Web Services account on or before May 19, 2021, you will not
	// be affected. After this date, use EndpointType=VPC.
	//
	// For more information, see https://docs.aws.amazon.com/transfer/latest/userguide/create-server-in-vpc.html#deprecate-vpc-endpoint.
	//
	// It is recommended that you use VPC as the EndpointType. With this endpoint
	// type, you have the option to directly associate up to three Elastic IPv4
	// addresses (BYO IP included) with your server's endpoint and use VPC security
	// groups to restrict traffic by the client's public IP address. This is not
	// possible with EndpointType set to VPC_ENDPOINT.
	endpointType?: null | string @go(EndpointType,*string)

	// The RSA, ECDSA, or ED25519 private key to use for your SFTP-enabled server.
	// You can add multiple host keys, in case you want to rotate keys, or have
	// a set of active keys that use different algorithms.
	//
	// Use the following command to generate an RSA 2048 bit key with no passphrase:
	//
	// ssh-keygen -t rsa -b 2048 -N "" -m PEM -f my-new-server-key.
	//
	// Use a minimum value of 2048 for the -b option. You can create a stronger
	// key by using 3072 or 4096.
	//
	// Use the following command to generate an ECDSA 256 bit key with no passphrase:
	//
	// ssh-keygen -t ecdsa -b 256 -N "" -m PEM -f my-new-server-key.
	//
	// Valid values for the -b option for ECDSA are 256, 384, and 521.
	//
	// Use the following command to generate an ED25519 key with no passphrase:
	//
	// ssh-keygen -t ed25519 -N "" -f my-new-server-key.
	//
	// For all of these commands, you can replace my-new-server-key with a string
	// of your choice.
	//
	// If you aren't planning to migrate existing users from an existing SFTP-enabled
	// server to a new server, don't update the host key. Accidentally changing
	// a server's host key can be disruptive.
	//
	// For more information, see Manage host keys for your SFTP-enabled server (https://docs.aws.amazon.com/transfer/latest/userguide/edit-server-config.html#configuring-servers-change-host-key)
	// in the Transfer Family User Guide.
	hostKey?: null | string @go(HostKey,*string)

	// Required when IdentityProviderType is set to AWS_DIRECTORY_SERVICE, Amazon
	// Web Services_LAMBDA or API_GATEWAY. Accepts an array containing all of the
	// information required to use a directory in AWS_DIRECTORY_SERVICE or invoke
	// a customer-supplied authentication API, including the API Gateway URL. Not
	// required when IdentityProviderType is set to SERVICE_MANAGED.
	identityProviderDetails?: null | #IdentityProviderDetails @go(IdentityProviderDetails,*IdentityProviderDetails)

	// The mode of authentication for a server. The default value is SERVICE_MANAGED,
	// which allows you to store and access user credentials within the Transfer
	// Family service.
	//
	// Use AWS_DIRECTORY_SERVICE to provide access to Active Directory groups in
	// Directory Service for Microsoft Active Directory or Microsoft Active Directory
	// in your on-premises environment or in Amazon Web Services using AD Connector.
	// This option also requires you to provide a Directory ID by using the IdentityProviderDetails
	// parameter.
	//
	// Use the API_GATEWAY value to integrate with an identity provider of your
	// choosing. The API_GATEWAY setting requires you to provide an Amazon API Gateway
	// endpoint URL to call for authentication by using the IdentityProviderDetails
	// parameter.
	//
	// Use the AWS_LAMBDA value to directly use an Lambda function as your identity
	// provider. If you choose this value, you must specify the ARN for the Lambda
	// function in the Function parameter for the IdentityProviderDetails data type.
	identityProviderType?: null | string @go(IdentityProviderType,*string)

	// Specifies a string to display when users connect to a server. This string
	// is displayed after the user authenticates.
	//
	// The SFTP protocol does not support post-authentication display banners.
	postAuthenticationLoginBanner?: null | string @go(PostAuthenticationLoginBanner,*string)

	// Specifies a string to display when users connect to a server. This string
	// is displayed before the user authenticates. For example, the following banner
	// displays details about using the system:
	//
	// This system is for the use of authorized users only. Individuals using this
	// computer system without authority, or in excess of their authority, are subject
	// to having all of their activities on this system monitored and recorded by
	// system personnel.
	preAuthenticationLoginBanner?: null | string @go(PreAuthenticationLoginBanner,*string)

	// The protocol settings that are configured for your server.
	//
	//    * To indicate passive mode (for FTP and FTPS protocols), use the PassiveIp
	//    parameter. Enter a single dotted-quad IPv4 address, such as the external
	//    IP address of a firewall, router, or load balancer.
	//
	//    * To ignore the error that is generated when the client attempts to use
	//    the SETSTAT command on a file that you are uploading to an Amazon S3 bucket,
	//    use the SetStatOption parameter. To have the Transfer Family server ignore
	//    the SETSTAT command and upload files without needing to make any changes
	//    to your SFTP client, set the value to ENABLE_NO_OP. If you set the SetStatOption
	//    parameter to ENABLE_NO_OP, Transfer Family generates a log entry to Amazon
	//    CloudWatch Logs, so that you can determine when the client is making a
	//    SETSTAT call.
	//
	//    * To determine whether your Transfer Family server resumes recent, negotiated
	//    sessions through a unique session ID, use the TlsSessionResumptionMode
	//    parameter.
	//
	//    * As2Transports indicates the transport method for the AS2 messages. Currently,
	//    only HTTP is supported.
	protocolDetails?: null | #ProtocolDetails @go(ProtocolDetails,*ProtocolDetails)

	// Specifies the file transfer protocol or protocols over which your file transfer
	// protocol client can connect to your server's endpoint. The available protocols
	// are:
	//
	//    * SFTP (Secure Shell (SSH) File Transfer Protocol): File transfer over
	//    SSH
	//
	//    * FTPS (File Transfer Protocol Secure): File transfer with TLS encryption
	//
	//    * FTP (File Transfer Protocol): Unencrypted file transfer
	//
	//    * AS2 (Applicability Statement 2): used for transporting structured business-to-business
	//    data
	//
	//    * If you select FTPS, you must choose a certificate stored in Certificate
	//    Manager (ACM) which is used to identify your server when clients connect
	//    to it over FTPS.
	//
	//    * If Protocol includes either FTP or FTPS, then the EndpointType must
	//    be VPC and the IdentityProviderType must be either AWS_DIRECTORY_SERVICE,
	//    AWS_LAMBDA, or API_GATEWAY.
	//
	//    * If Protocol includes FTP, then AddressAllocationIds cannot be associated.
	//
	//    * If Protocol is set only to SFTP, the EndpointType can be set to PUBLIC
	//    and the IdentityProviderType can be set any of the supported identity
	//    types: SERVICE_MANAGED, AWS_DIRECTORY_SERVICE, AWS_LAMBDA, or API_GATEWAY.
	//
	//    * If Protocol includes AS2, then the EndpointType must be VPC, and domain
	//    must be Amazon S3.
	protocols?: [...null | string] @go(Protocols,[]*string)

	// Specifies the name of the security policy that is attached to the server.
	securityPolicyName?: null | string @go(SecurityPolicyName,*string)

	// Specifies the log groups to which your server logs are sent.
	//
	// To specify a log group, you must provide the ARN for an existing log group.
	// In this case, the format of the log group is as follows:
	//
	// arn:aws:logs:region-name:amazon-account-id:log-group:log-group-name:*
	//
	// For example, arn:aws:logs:us-east-1:111122223333:log-group:mytestgroup:*
	//
	// If you have previously specified a log group for a server, you can clear
	// it, and in effect turn off structured logging, by providing an empty value
	// for this parameter in an update-server call. For example:
	//
	// update-server --server-id s-1234567890abcdef0 --structured-log-destinations
	structuredLogDestinations?: [...null | string] @go(StructuredLogDestinations,[]*string)

	// Key-value pairs that can be used to group and search for servers.
	tags?: [...null | #Tag] @go(Tags,[]*Tag)

	// Specifies the workflow ID for the workflow to assign and the execution role
	// that's used for executing the workflow.
	//
	// In addition to a workflow to execute when a file is uploaded completely,
	// WorkflowDetails can also contain a workflow ID (and execution role) for a
	// workflow to execute on partial upload. A partial upload occurs when the server
	// session disconnects while the file is still being uploaded.
	workflowDetails?: null | #WorkflowDetails @go(WorkflowDetails,*WorkflowDetails)

	#CustomServerParameters
}

// ServerSpec defines the desired state of Server
#ServerSpec: {
	forProvider: #ServerParameters @go(ForProvider)
}

// ServerObservation defines the observed state of Server
#ServerObservation: {
	// The service-assigned identifier of the server that is created.
	serverID?: null | string @go(ServerID,*string)
}

// ServerStatus defines the observed state of Server.
#ServerStatus: {
	atProvider?: #ServerObservation @go(AtProvider)
}

// Server is the Schema for the Servers API
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:storageversion
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#Server: {
	spec:    #ServerSpec   @go(Spec)
	status?: #ServerStatus @go(Status)
}

// ServerList contains a list of Servers
#ServerList: {
	items: [...#Server] @go(Items,[]Server)
}
