//go:build !ignore_autogenerated

// Code generated by controller-gen. DO NOT EDIT.

package v1beta1

import (
	runtime "k8s.io/apimachinery/pkg/runtime"
)

// DeepCopyInto is an autogenerated deepcopy function, copying the receiver, writing into out. in must be non-nil.
func (in *Export) DeepCopyInto(out *Export) {
	*out = *in
	in.Options.DeepCopyInto(&out.Options)
}

// DeepCopy is an autogenerated deepcopy function, copying the receiver, creating a new Export.
func (in *Export) DeepCopy() *Export {
	if in == nil {
		return nil
	}
	out := new(Export)
	in.DeepCopyInto(out)
	return out
}

// DeepCopyInto is an autogenerated deepcopy function, copying the receiver, writing into out. in must be non-nil.
func (in *ExportOptions) DeepCopyInto(out *ExportOptions) {
	*out = *in
	if in.Expression != nil {
		in, out := &in.Expression, &out.Expression
		*out = make([]string, len(*in))
		copy(*out, *in)
	}
	if in.Inject != nil {
		in, out := &in.Inject, &out.Inject
		*out = make([]string, len(*in))
		copy(*out, *in)
	}
	if in.InjectVars != nil {
		in, out := &in.InjectVars, &out.InjectVars
		*out = make([]string, len(*in))
		copy(*out, *in)
	}
	if in.Path != nil {
		in, out := &in.Path, &out.Path
		*out = make([]string, len(*in))
		copy(*out, *in)
	}
	if in.ProtoPath != nil {
		in, out := &in.ProtoPath, &out.ProtoPath
		*out = make([]string, len(*in))
		copy(*out, *in)
	}
}

// DeepCopy is an autogenerated deepcopy function, copying the receiver, creating a new ExportOptions.
func (in *ExportOptions) DeepCopy() *ExportOptions {
	if in == nil {
		return nil
	}
	out := new(ExportOptions)
	in.DeepCopyInto(out)
	return out
}

// DeepCopyInto is an autogenerated deepcopy function, copying the receiver, writing into out. in must be non-nil.
func (in *Input) DeepCopyInto(out *Input) {
	*out = *in
	out.TypeMeta = in.TypeMeta
	in.ObjectMeta.DeepCopyInto(&out.ObjectMeta)
	in.Export.DeepCopyInto(&out.Export)
}

// DeepCopy is an autogenerated deepcopy function, copying the receiver, creating a new Input.
func (in *Input) DeepCopy() *Input {
	if in == nil {
		return nil
	}
	out := new(Input)
	in.DeepCopyInto(out)
	return out
}

// DeepCopyObject is an autogenerated deepcopy function, copying the receiver, creating a new runtime.Object.
func (in *Input) DeepCopyObject() runtime.Object {
	if c := in.DeepCopy(); c != nil {
		return c
	}
	return nil
}
