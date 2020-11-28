.class public auto ansi beforefieldinit NullCheck.Cil.ReferenceNotNull
	extends [System.Runtime]System.Object
{
	.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
		01 00 02 00 00
	)
	.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
		01 00 00 00 00
	)
	// Methods
	.method public hidebysig 
		instance bool EqualOperator (
			string 'value'
		) cil managed 
	{
		// Method begins at RVA 0x208e
		// Code size 5 (0x5)
		.maxstack 8

		IL_0000: ldarg.1
		IL_0001: ldnull
		IL_0002: cgt.un
		IL_0004: ret
	} // end of method ReferenceNotNull::EqualOperator

	.method public hidebysig 
		instance bool IsOperator (
			string 'value'
		) cil managed 
	{
		// Method begins at RVA 0x2094
		// Code size 5 (0x5)
		.maxstack 8

		IL_0000: ldarg.1
		IL_0001: ldnull
		IL_0002: cgt.un
		IL_0004: ret
	} // end of method ReferenceNotNull::IsOperator

	.method public hidebysig 
		instance bool PatternMatchNull (
			string 'value'
		) cil managed 
	{
		// Method begins at RVA 0x209a
		// Code size 5 (0x5)
		.maxstack 8

		IL_0000: ldarg.1
		IL_0001: ldnull
		IL_0002: cgt.un
		IL_0004: ret
	} // end of method ReferenceNotNull::PatternMatchNull

	.method public hidebysig 
		instance bool PatternMatchNotNull7 (
			string 'value'
		) cil managed 
	{
		// Method begins at RVA 0x20a0
		// Code size 7 (0x7)
		.maxstack 8

		IL_0000: ldarg.1
		IL_0001: brfalse.s IL_0005

		IL_0003: ldc.i4.1
		IL_0004: ret

		IL_0005: ldc.i4.0
		IL_0006: ret
	} // end of method ReferenceNotNull::PatternMatchNotNull7

	.method public hidebysig 
		instance bool PatternMatchNotNull8 (
			string 'value'
		) cil managed 
	{
		// Method begins at RVA 0x20a8
		// Code size 5 (0x5)
		.maxstack 8

		IL_0000: ldarg.1
		IL_0001: ldnull
		IL_0002: cgt.un
		IL_0004: ret
	} // end of method ReferenceNotNull::PatternMatchNotNull8

	.method public hidebysig 
		instance bool PatternMatchNotNull9 (
			string 'value'
		) cil managed 
	{
		// Method begins at RVA 0x20ae
		// Code size 5 (0x5)
		.maxstack 8

		IL_0000: ldarg.1
		IL_0001: ldnull
		IL_0002: cgt.un
		IL_0004: ret
	} // end of method ReferenceNotNull::PatternMatchNotNull9

	.method public hidebysig 
		instance bool ObjectEquals (
			string 'value'
		) cil managed 
	{
		// Method begins at RVA 0x20b4
		// Code size 11 (0xb)
		.maxstack 8

		IL_0000: ldarg.1
		IL_0001: ldnull
		IL_0002: call bool [System.Runtime]System.Object::Equals(object, object)
		IL_0007: ldc.i4.0
		IL_0008: ceq
		IL_000a: ret
	} // end of method ReferenceNotNull::ObjectEquals

	.method public hidebysig 
		instance bool ObjectReferenceEquals (
			string 'value'
		) cil managed 
	{
		// Method begins at RVA 0x20c0
		// Code size 5 (0x5)
		.maxstack 8

		IL_0000: ldarg.1
		IL_0001: ldnull
		IL_0002: cgt.un
		IL_0004: ret
	} // end of method ReferenceNotNull::ObjectReferenceEquals

	.method public hidebysig 
		instance bool EqualityComparer (
			string 'value'
		) cil managed 
	{
		// Method begins at RVA 0x20c6
		// Code size 16 (0x10)
		.maxstack 8

		IL_0000: call class [System.Collections]System.Collections.Generic.EqualityComparer`1<!0> class [System.Collections]System.Collections.Generic.EqualityComparer`1<string>::get_Default()
		IL_0005: ldarg.1
		IL_0006: ldnull
		IL_0007: callvirt instance bool class [System.Collections]System.Collections.Generic.EqualityComparer`1<string>::Equals(!0, !0)
		IL_000c: ldc.i4.0
		IL_000d: ceq
		IL_000f: ret
	} // end of method ReferenceNotNull::EqualityComparer

	.method public hidebysig specialname rtspecialname 
		instance void .ctor () cil managed 
	{
		// Method begins at RVA 0x20d7
		// Code size 7 (0x7)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: call instance void [System.Runtime]System.Object::.ctor()
		IL_0006: ret
	} // end of method ReferenceNotNull::.ctor

} // end of class NullCheck.Cil.ReferenceNotNull