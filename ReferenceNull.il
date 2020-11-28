.class public auto ansi beforefieldinit NullCheck.Cil.ReferenceNull
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
		// Method begins at RVA 0x20df
		// Code size 5 (0x5)
		.maxstack 8

		IL_0000: ldarg.1
		IL_0001: ldnull
		IL_0002: ceq
		IL_0004: ret
	} // end of method ReferenceNull::EqualOperator

	.method public hidebysig 
		instance bool IsOperator (
			string 'value'
		) cil managed 
	{
		// Method begins at RVA 0x20e5
		// Code size 5 (0x5)
		.maxstack 8

		IL_0000: ldarg.1
		IL_0001: ldnull
		IL_0002: ceq
		IL_0004: ret
	} // end of method ReferenceNull::IsOperator

	.method public hidebysig 
		instance bool PatternMatchNull (
			string 'value'
		) cil managed 
	{
		// Method begins at RVA 0x20eb
		// Code size 5 (0x5)
		.maxstack 8

		IL_0000: ldarg.1
		IL_0001: ldnull
		IL_0002: ceq
		IL_0004: ret
	} // end of method ReferenceNull::PatternMatchNull

	.method public hidebysig 
		instance bool PatternMatchNotNull7 (
			string 'value'
		) cil managed 
	{
		// Method begins at RVA 0x20f1
		// Code size 10 (0xa)
		.maxstack 8

		IL_0000: ldarg.1
		IL_0001: brfalse.s IL_0008

		IL_0003: ldc.i4.1
		IL_0004: ldc.i4.0
		IL_0005: ceq
		IL_0007: ret

		IL_0008: ldc.i4.1
		IL_0009: ret
	} // end of method ReferenceNull::PatternMatchNotNull7

	.method public hidebysig 
		instance bool PatternMatchNotNull8 (
			string 'value'
		) cil managed 
	{
		// Method begins at RVA 0x20fc
		// Code size 5 (0x5)
		.maxstack 8

		IL_0000: ldarg.1
		IL_0001: ldnull
		IL_0002: ceq
		IL_0004: ret
	} // end of method ReferenceNull::PatternMatchNotNull8

	.method public hidebysig 
		instance bool PatternMatchNotNull9 (
			string 'value'
		) cil managed 
	{
		// Method begins at RVA 0x2102
		// Code size 5 (0x5)
		.maxstack 8

		IL_0000: ldarg.1
		IL_0001: ldnull
		IL_0002: ceq
		IL_0004: ret
	} // end of method ReferenceNull::PatternMatchNotNull9

	.method public hidebysig 
		instance bool ObjectEquals (
			string 'value'
		) cil managed 
	{
		// Method begins at RVA 0x2108
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarg.1
		IL_0001: ldnull
		IL_0002: call bool [System.Runtime]System.Object::Equals(object, object)
		IL_0007: ret
	} // end of method ReferenceNull::ObjectEquals

	.method public hidebysig 
		instance bool ObjectReferenceEquals (
			string 'value'
		) cil managed 
	{
		// Method begins at RVA 0x2111
		// Code size 5 (0x5)
		.maxstack 8

		IL_0000: ldarg.1
		IL_0001: ldnull
		IL_0002: ceq
		IL_0004: ret
	} // end of method ReferenceNull::ObjectReferenceEquals

	.method public hidebysig 
		instance bool EqualityComparer (
			string 'value'
		) cil managed 
	{
		// Method begins at RVA 0x2117
		// Code size 13 (0xd)
		.maxstack 8

		IL_0000: call class [System.Collections]System.Collections.Generic.EqualityComparer`1<!0> class [System.Collections]System.Collections.Generic.EqualityComparer`1<string>::get_Default()
		IL_0005: ldarg.1
		IL_0006: ldnull
		IL_0007: callvirt instance bool class [System.Collections]System.Collections.Generic.EqualityComparer`1<string>::Equals(!0, !0)
		IL_000c: ret
	} // end of method ReferenceNull::EqualityComparer

	.method public hidebysig specialname rtspecialname 
		instance void .ctor () cil managed 
	{
		// Method begins at RVA 0x2125
		// Code size 7 (0x7)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: call instance void [System.Runtime]System.Object::.ctor()
		IL_0006: ret
	} // end of method ReferenceNull::.ctor

} // end of class NullCheck.Cil.ReferenceNull