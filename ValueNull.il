.class public auto ansi beforefieldinit NullCheck.Cil.ValueNull
	extends [System.Runtime]System.Object
{
	// Methods
	.method public hidebysig 
		instance bool EqualOperator (
			valuetype [System.Runtime]System.Nullable`1<int32> 'value'
		) cil managed 
	{
		// Method begins at RVA 0x21c0
		// Code size 11 (0xb)
		.maxstack 8

		IL_0000: ldarga.s 'value'
		IL_0002: call instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
		IL_0007: ldc.i4.0
		IL_0008: ceq
		IL_000a: ret
	} // end of method ValueNull::EqualOperator

	.method public hidebysig 
		instance bool HasValue (
			valuetype [System.Runtime]System.Nullable`1<int32> 'value'
		) cil managed 
	{
		// Method begins at RVA 0x21cc
		// Code size 11 (0xb)
		.maxstack 8

		IL_0000: ldarga.s 'value'
		IL_0002: call instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
		IL_0007: ldc.i4.0
		IL_0008: ceq
		IL_000a: ret
	} // end of method ValueNull::HasValue

	.method public hidebysig 
		instance bool PartternMatchNull (
			valuetype [System.Runtime]System.Nullable`1<int32> 'value'
		) cil managed 
	{
		// Method begins at RVA 0x21d8
		// Code size 11 (0xb)
		.maxstack 8

		IL_0000: ldarga.s 'value'
		IL_0002: call instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
		IL_0007: ldc.i4.0
		IL_0008: ceq
		IL_000a: ret
	} // end of method ValueNull::PartternMatchNull

	.method public hidebysig 
		instance bool PatternMatchNotNull7 (
			valuetype [System.Runtime]System.Nullable`1<int32> 'value'
		) cil managed 
	{
		// Method begins at RVA 0x21e4
		// Code size 18 (0x12)
		.maxstack 8

		IL_0000: ldarg.1
		IL_0001: box valuetype [System.Runtime]System.Nullable`1<int32>
		IL_0006: isinst [System.Runtime]System.Int32
		IL_000b: ldnull
		IL_000c: cgt.un
		IL_000e: ldc.i4.0
		IL_000f: ceq
		IL_0011: ret
	} // end of method ValueNull::PatternMatchNotNull7

	.method public hidebysig 
		instance bool PatternMatchNotNull7WithVariable (
			valuetype [System.Runtime]System.Nullable`1<int32> 'value'
		) cil managed 
	{
		// Method begins at RVA 0x21f7
		// Code size 24 (0x18)
		.maxstack 8

		IL_0000: ldarga.s 'value'
		IL_0002: call instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
		IL_0007: brfalse.s IL_0016

		IL_0009: ldarga.s 'value'
		IL_000b: call instance !0 valuetype [System.Runtime]System.Nullable`1<int32>::GetValueOrDefault()
		IL_0010: pop
		IL_0011: ldc.i4.1
		IL_0012: ldc.i4.0
		IL_0013: ceq
		IL_0015: ret

		IL_0016: ldc.i4.1
		IL_0017: ret
	} // end of method ValueNull::PatternMatchNotNull7WithVariable

	.method public hidebysig 
		instance bool PatternMatchNotNull8 (
			valuetype [System.Runtime]System.Nullable`1<int32> 'value'
		) cil managed 
	{
		// Method begins at RVA 0x2210
		// Code size 11 (0xb)
		.maxstack 8

		IL_0000: ldarga.s 'value'
		IL_0002: call instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
		IL_0007: ldc.i4.0
		IL_0008: ceq
		IL_000a: ret
	} // end of method ValueNull::PatternMatchNotNull8

	.method public hidebysig 
		instance bool PatternMatchNotNull9 (
			valuetype [System.Runtime]System.Nullable`1<int32> 'value'
		) cil managed 
	{
		// Method begins at RVA 0x221c
		// Code size 11 (0xb)
		.maxstack 8

		IL_0000: ldarga.s 'value'
		IL_0002: call instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
		IL_0007: ldc.i4.0
		IL_0008: ceq
		IL_000a: ret
	} // end of method ValueNull::PatternMatchNotNull9

	.method public hidebysig 
		instance bool ObjectEquals (
			valuetype [System.Runtime]System.Nullable`1<int32> 'value'
		) cil managed 
	{
		// Method begins at RVA 0x2228
		// Code size 13 (0xd)
		.maxstack 8

		IL_0000: ldarg.1
		IL_0001: box valuetype [System.Runtime]System.Nullable`1<int32>
		IL_0006: ldnull
		IL_0007: call bool [System.Runtime]System.Object::Equals(object, object)
		IL_000c: ret
	} // end of method ValueNull::ObjectEquals

	.method public hidebysig 
		instance bool EqualityComparer (
			valuetype [System.Runtime]System.Nullable`1<int32> 'value'
		) cil managed 
	{
		// Method begins at RVA 0x2238
		// Code size 21 (0x15)
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
		IL_0014: ret
	} // end of method ValueNull::EqualityComparer

	.method public hidebysig specialname rtspecialname 
		instance void .ctor () cil managed 
	{
		// Method begins at RVA 0x2259
		// Code size 7 (0x7)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: call instance void [System.Runtime]System.Object::.ctor()
		IL_0006: ret
	} // end of method ValueNull::.ctor

} // end of class NullCheck.Cil.ValueNull