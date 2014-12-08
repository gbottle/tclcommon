namespace eval ::oo {

	#
	#	Shortcut for weird info syntax to check if $instance is an object
	#
	proc object? {instance} { 
		return [info object isa object $instance]
	}

	#
	#	Shortcut for the weird looking instanceof functionality in the `info` ensemble
	#
	#	usage: [instanceof? $myobject CheckForThisType]
	#
	proc instanceof? {obj type} {
		return [expr {[oo::object? $obj] && [info object isa typeof $obj $type]}]
	}

}