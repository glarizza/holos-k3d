// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go sigs.k8s.io/kustomize/api/types

package types

// Some plugin classes
// - builtin: plugins defined in the kustomize repo.
//   May be freely used and re-configured.
// - local: plugins that aren't builtin but are
//   locally defined (presumably by the user), meaning
//   the kustomization refers to them via a relative
//   file path, not a URL.
// - remote: require a build-time download to obtain.
//   Unadvised, unless one controls the
//   serving site.
//
//go:generate stringer -type=PluginRestrictions
#PluginRestrictions: int // #enumPluginRestrictions

#enumPluginRestrictions:
	#PluginRestrictionsUnknown |
	#PluginRestrictionsBuiltinsOnly |
	#PluginRestrictionsNone

#values_PluginRestrictions: {
	PluginRestrictionsUnknown:      #PluginRestrictionsUnknown
	PluginRestrictionsBuiltinsOnly: #PluginRestrictionsBuiltinsOnly
	PluginRestrictionsNone:         #PluginRestrictionsNone
}

#PluginRestrictionsUnknown: #PluginRestrictions & 0

// Non-builtin plugins completely disabled.
#PluginRestrictionsBuiltinsOnly: #PluginRestrictions & 1

// No restrictions, do whatever you want.
#PluginRestrictionsNone: #PluginRestrictions & 2

// BuiltinPluginLoadingOptions distinguish ways in which builtin plugins are used.
//go:generate stringer -type=BuiltinPluginLoadingOptions
#BuiltinPluginLoadingOptions: int // #enumBuiltinPluginLoadingOptions

#enumBuiltinPluginLoadingOptions:
	#BploUndefined |
	#BploUseStaticallyLinked |
	#BploLoadFromFileSys

#values_BuiltinPluginLoadingOptions: {
	BploUndefined:           #BploUndefined
	BploUseStaticallyLinked: #BploUseStaticallyLinked
	BploLoadFromFileSys:     #BploLoadFromFileSys
}

#BploUndefined: #BuiltinPluginLoadingOptions & 0

// Desired in production use for performance.
#BploUseStaticallyLinked: #BuiltinPluginLoadingOptions & 1

// Desired in testing and development cycles where it's undesirable
// to generate static code.
#BploLoadFromFileSys: #BuiltinPluginLoadingOptions & 2

// FnPluginLoadingOptions set way functions-based plugins are restricted
#FnPluginLoadingOptions: {
	// Allow to run executables
	EnableExec: bool

	// Allow to run starlark
	EnableStar: bool

	// Allow container access to network
	Network:     bool
	NetworkName: string

	// list of mounts
	Mounts: [...string] @go(,[]string)

	// list of env variables to pass to fn
	Env: [...string] @go(,[]string)

	// Run as uid and gid of the command executor
	AsCurrentUser: bool

	// Run in this working directory
	WorkingDir: string
}