// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/holos-run/holos/api/meta/v1alpha2

package v1alpha2

// TypeMeta describes an individual object in an API response or request with
// strings representing the type of the object and its API schema version.
// Structures that are versioned or persisted should inline TypeMeta.
#TypeMeta: {
	// Kind is a string value representing the resource this object represents.
	kind: string @go(Kind)

	// APIVersion defines the versioned schema of this representation of an object.
	apiVersion: string & (string | *"v1alpha2") @go(APIVersion)
}

// Discriminator discriminates the kind of an api object.
#Discriminator: _

// ObjectMeta represents metadata of a holos component object. The fields are a
// copy of upstream kubernetes api machinery but are holos objects distinct from
// kubernetes api objects.
#ObjectMeta: {
	// Name uniquely identifies the holos component instance and must be suitable as a file name.
	name?: string @go(Name)

	// Namespace confines a holos component to a single namespace via kustomize if set.
	namespace?: string @go(Namespace)
}
