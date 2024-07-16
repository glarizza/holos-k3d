// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go sigs.k8s.io/kustomize/api/types

package types

// Replica specifies a modification to a replica config.
// The number of replicas of a resource whose name matches will be set to count.
// This struct is used by the ReplicaCountTransform, and is meant to supplement
// the existing patch functionality with a simpler syntax for replica configuration.
#Replica: {
	// The name of the resource to change the replica count
	name?: string @go(Name)

	// The number of replicas required.
	count: int64 @go(Count)
}
