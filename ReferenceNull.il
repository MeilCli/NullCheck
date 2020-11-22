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
		// Method begins at RVA 0x20ce
		// Code size 5 (0x5)
		.maxstack 8

		IL_0000: ldarg.1
		IL_0001: ldnull
		IL_0002: ceq
		IL_0004: ret
	} // end of method ReferenceNull::EqualOperator

	.method public hidebysig 
		instance bool PartternMatchNull (
			string 'value'
		) cil managed 
	{
		// Method begins at RVA 0x20d4
		// Code size 5 (0x5)
		.maxstack 8

		IL_0000: ldarg.1
		IL_0001: ldnull
		IL_0002: ceq
		IL_0004: ret
	} // end of method ReferenceNull::PartternMatchNull

	.method public hidebysig 
		instance bool PatternMatchNotNull7 (
			string 'value'
		) cil managed 
	{
		// Method begins at RVA 0x20da
		// Code size 5 (0x5)
		.maxstack 8

		IL_0000: ldarg.1
		IL_0001: ldnull
		IL_0002: ceq
		IL_0004: ret
	} // end of method ReferenceNull::PatternMatchNotNull7

	.method public hidebysig 
		instance bool PatternMatchNotNull7WithVariable (
			string 'value'
		) cil managed 
	{
		// Method begins at RVA 0x20e0
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
	} // end of method ReferenceNull::PatternMatchNotNull7WithVariable

	.method public hidebysig 
		instance bool PatternMatchNotNull8 (
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
	} // end of method ReferenceNull::PatternMatchNotNull8

	.method public hidebysig 
		instance bool PatternMatchNotNull9 (
			string 'value'
		) cil managed 
	{
		// Method begins at RVA 0x20f1
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
		// Method begins at RVA 0x20f7
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
		// Method begins at RVA 0x2100
		// Code size 5 (0x5)
		.maxstack 8

		IL_0000: ldarg.1
		IL_0001: ldnull
		IL_0002: ceq
		IL_0004: ret
	} // end of method ReferenceNull::ObjectReferenceEquals

	.method public hidebysig specialname rtspecialname 
		instance void .ctor () cil managed 
	{
		// Method begins at RVA 0x2106
		// Code size 7 (0x7)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: call instance void [System.Runtime]System.Object::.ctor()
		IL_0006: ret
	} // end of method ReferenceNull::.ctor

} // end of class NullCheck.Cil.ReferenceNull