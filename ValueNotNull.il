.class public auto ansi beforefieldinit NullCheck.Cil.ValueNotNull
	extends [System.Runtime]System.Object
{
	// Methods
	.method public hidebysig 
		instance bool EqualOperator (
			valuetype [System.Runtime]System.Nullable`1<int32> 'value'
		) cil managed 
	{
		// Method begins at RVA 0x212d
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarga.s 'value'
		IL_0002: call instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
		IL_0007: ret
	} // end of method ValueNotNull::EqualOperator

	.method public hidebysig 
		instance bool HasValue (
			valuetype [System.Runtime]System.Nullable`1<int32> 'value'
		) cil managed 
	{
		// Method begins at RVA 0x2136
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarga.s 'value'
		IL_0002: call instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
		IL_0007: ret
	} // end of method ValueNotNull::HasValue

	.method public hidebysig 
		instance bool PartternMatchNull (
			valuetype [System.Runtime]System.Nullable`1<int32> 'value'
		) cil managed 
	{
		// Method begins at RVA 0x213f
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarga.s 'value'
		IL_0002: call instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
		IL_0007: ret
	} // end of method ValueNotNull::PartternMatchNull

	.method public hidebysig 
		instance bool PatternMatchNotNull7 (
			valuetype [System.Runtime]System.Nullable`1<int32> 'value'
		) cil managed 
	{
		// Method begins at RVA 0x2148
		// Code size 15 (0xf)
		.maxstack 8

		IL_0000: ldarg.1
		IL_0001: box valuetype [System.Runtime]System.Nullable`1<int32>
		IL_0006: isinst [System.Runtime]System.Int32
		IL_000b: ldnull
		IL_000c: cgt.un
		IL_000e: ret
	} // end of method ValueNotNull::PatternMatchNotNull7

	.method public hidebysig 
		instance bool PatternMatchNotNull7WithVariable (
			valuetype [System.Runtime]System.Nullable`1<int32> 'value'
		) cil managed 
	{
		// Method begins at RVA 0x2158
		// Code size 21 (0x15)
		.maxstack 8

		IL_0000: ldarga.s 'value'
		IL_0002: call instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
		IL_0007: brfalse.s IL_0013

		IL_0009: ldarga.s 'value'
		IL_000b: call instance !0 valuetype [System.Runtime]System.Nullable`1<int32>::GetValueOrDefault()
		IL_0010: pop
		IL_0011: ldc.i4.1
		IL_0012: ret

		IL_0013: ldc.i4.0
		IL_0014: ret
	} // end of method ValueNotNull::PatternMatchNotNull7WithVariable

	.method public hidebysig 
		instance bool PatternMatchNotNull8 (
			valuetype [System.Runtime]System.Nullable`1<int32> 'value'
		) cil managed 
	{
		// Method begins at RVA 0x216e
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarga.s 'value'
		IL_0002: call instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
		IL_0007: ret
	} // end of method ValueNotNull::PatternMatchNotNull8

	.method public hidebysig 
		instance bool PatternMatchNotNull9 (
			valuetype [System.Runtime]System.Nullable`1<int32> 'value'
		) cil managed 
	{
		// Method begins at RVA 0x2177
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarga.s 'value'
		IL_0002: call instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
		IL_0007: ret
	} // end of method ValueNotNull::PatternMatchNotNull9

	.method public hidebysig 
		instance bool ObjectEquals (
			valuetype [System.Runtime]System.Nullable`1<int32> 'value'
		) cil managed 
	{
		// Method begins at RVA 0x2180
		// Code size 16 (0x10)
		.maxstack 8

		IL_0000: ldarg.1
		IL_0001: box valuetype [System.Runtime]System.Nullable`1<int32>
		IL_0006: ldnull
		IL_0007: call bool [System.Runtime]System.Object::Equals(object, object)
		IL_000c: ldc.i4.0
		IL_000d: ceq
		IL_000f: ret
	} // end of method ValueNotNull::ObjectEquals

	.method public hidebysig 
		instance bool EqualityComparer (
			valuetype [System.Runtime]System.Nullable`1<int32> 'value'
		) cil managed 
	{
		// Method begins at RVA 0x2194
		// Code size 24 (0x18)
		.maxstack 3
		.locals init (
			[0] valuetype [System.Runtime]System.Nullable`1<int32>
		)

		IL_0000: call class [System.Collections]System.Collections.Generic.EqualityComparer`1<!0> class [System.Collections]System.Collections.Generic.EqualityComparer`1<valuetype [System.Runtime]System.Nullable`1<int32>>::get_Default()
		IL_0005: ldarg.1
		IL_0006: ldloca.s 0
		IL_0008: initobj valuetype [System.Runtime]System.Nullable`1<int32>
		IL_000e: ldloc.0
		IL_000f: callvirt instance bool class [System.Collections]System.Collections.Generic.EqualityComparer`1<valuetype [System.Runtime]System.Nullable`1<int32>>::Equals(!0, !0)
		IL_0014: ldc.i4.0
		IL_0015: ceq
		IL_0017: ret
	} // end of method ValueNotNull::EqualityComparer

	.method public hidebysig specialname rtspecialname 
		instance void .ctor () cil managed 
	{
		// Method begins at RVA 0x21b8
		// Code size 7 (0x7)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: call instance void [System.Runtime]System.Object::.ctor()
		IL_0006: ret
	} // end of method ValueNotNull::.ctor

} // end of class NullCheck.Cil.ValueNotNull