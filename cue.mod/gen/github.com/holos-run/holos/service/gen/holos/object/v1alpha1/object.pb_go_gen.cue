// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/holos-run/holos/service/gen/holos/object/v1alpha1

package object

import (
	"google.golang.org/protobuf/types/known/timestamppb"
	"google.golang.org/protobuf/types/known/structpb"
)

#Detail: {
	// Created by entity
	created_by?: null | #ResourceEditor @go(CreatedBy,*ResourceEditor) @protobuf(1,bytes,opt,json=createdBy,proto3,oneof)

	// Created at timestamp
	created_at?: null | timestamppb.#Timestamp @go(CreatedAt,*timestamppb.Timestamp) @protobuf(2,bytes,opt,json=createdAt,proto3)

	// Updated by entity
	updated_by?: null | #ResourceEditor @go(UpdatedBy,*ResourceEditor) @protobuf(3,bytes,opt,json=updatedBy,proto3,oneof)

	// Updated at timestamp
	updated_at?: null | timestamppb.#Timestamp @go(UpdatedAt,*timestamppb.Timestamp) @protobuf(4,bytes,opt,json=updatedAt,proto3)
}

// Subject represents the oidc iss and sub claims which uniquely identify a subject.
#Subject: {
	// iss represents the oidc id token iss claim.  Limits defined at
	// https://openid.net/specs/openid-authentication-1_1.html#limits
	iss?: string @go(Iss) @protobuf(1,bytes,opt,proto3)

	// sub represents the oidc id token sub claim.
	sub?: string @go(Sub) @protobuf(2,bytes,opt,proto3)
}

// UserRef refers to a User by uuid, email, or by the oidc iss and sub claims.
#UserRef: {
	// Types that are assignable to User:
	//
	//	*UserRef_UserId
	//	*UserRef_Email
	//	*UserRef_Subject
	User: _#isUserRef_User
}

_#isUserRef_User: _

#UserRef_UserId: {
	UserId: string @protobuf(1,bytes,opt,name=user_id,json=userId,proto3,oneof)
}

#UserRef_Email: {
	Email: string @protobuf(2,bytes,opt,name=email,proto3,oneof)
}

#UserRef_Subject: {
	Subject?: null | #Subject @go(,*Subject) @protobuf(3,bytes,opt,name=subject,proto3,oneof)
}

// Organization represents the ways in which a organization may be uniquely identified in the system.
#OrganizationRef: {
	// Types that are assignable to Org:
	//
	//	*OrganizationRef_OrgId
	//	*OrganizationRef_OrgName
	Org: _#isOrganizationRef_Org
}

_#isOrganizationRef_Org: _

#OrganizationRef_OrgId: {
	OrgId: string @protobuf(1,bytes,opt,name=org_id,json=orgId,proto3,oneof)
}

#OrganizationRef_OrgName: {
	OrgName: string @protobuf(2,bytes,opt,name=org_name,json=orgName,proto3,oneof)
}

// ResourceEditor represents the entity that most recently created or edited a resource.
#ResourceEditor: {
	// Types that are assignable to Editor:
	//
	//	*ResourceEditor_UserId
	Editor: _#isResourceEditor_Editor
}

_#isResourceEditor_Editor: _

#ResourceEditor_UserId: {
	UserId: string @protobuf(1,bytes,opt,name=user_id,json=userId,proto3,oneof)
}

#ResourceOwner: {
	// Types that are assignable to ResourceOwner:
	//
	//	*ResourceOwner_OrgId
	//	*ResourceOwner_UserId
	ResourceOwner: _#isResourceOwner_ResourceOwner
}

_#isResourceOwner_ResourceOwner: _

#ResourceOwner_OrgId: {
	OrgId: string @protobuf(1,bytes,opt,name=org_id,json=orgId,proto3,oneof)
}

#ResourceOwner_UserId: {
	UserId: string @protobuf(2,bytes,opt,name=user_id,json=userId,proto3,oneof)
}

// Form represents a Formly json powered form.
#Form: {
	// fields represents FormlyFieldConfig[] encoded as an array of JSON objects
	// organized by section.
	field_configs?: [...null | structpb.#Struct] @go(FieldConfigs,[]*structpb.Struct) @protobuf(1,bytes,rep,json=fieldConfigs,proto3)
}

// PlatformConfig represents the data passed from the holos cli to CUE when
// rendering configuration.
#PlatformConfig: {
	// Platform UUID.
	platform_id?: string @go(PlatformId) @protobuf(1,bytes,opt,json=platformId,proto3)

	// Platform Model.
	platform_model?: null | structpb.#Struct @go(PlatformModel,*structpb.Struct) @protobuf(2,bytes,opt,json=platformModel,proto3)
}