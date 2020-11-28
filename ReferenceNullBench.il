.class public auto ansi beforefieldinit NullCheck.Benchmark.ReferenceNullBench
	extends [System.Runtime]System.Object
{
	.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
		01 00 02 00 00
	)
	.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
		01 00 00 00 00
	)
	.custom instance void [BenchmarkDotNet]BenchmarkDotNet.Attributes.SimpleJobAttribute::.ctor(int32, int32, int32, int32, string, bool) = (
		01 00 ff ff ff ff ff ff ff ff ff ff ff ff ff ff
		ff ff ff 00 00 00
	)
	.custom instance void [BenchmarkDotNet]BenchmarkDotNet.Attributes.MeanColumnAttribute::.ctor() = (
		01 00 00 00
	)
	.custom instance void [BenchmarkDotNet]BenchmarkDotNet.Attributes.MinColumnAttribute::.ctor() = (
		01 00 00 00
	)
	.custom instance void [BenchmarkDotNet]BenchmarkDotNet.Attributes.MaxColumnAttribute::.ctor() = (
		01 00 00 00
	)
	.custom instance void [BenchmarkDotNet]BenchmarkDotNet.Attributes.MemoryDiagnoserAttribute::.ctor() = (
		01 00 00 00
	)
	// Fields
	.field private string '<Value>k__BackingField'
	.custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
		01 00 00 00
	)

	// Methods
	.method public hidebysig specialname 
		instance string get_Value () cil managed 
	{
		.custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x2262
		// Code size 7 (0x7)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldfld string NullCheck.Benchmark.ReferenceNullBench::'<Value>k__BackingField'
		IL_0006: ret
	} // end of method ReferenceNullBench::get_Value

	.method public hidebysig specialname 
		instance void set_Value (
			string 'value'
		) cil managed 
	{
		.custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x226a
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: stfld string NullCheck.Benchmark.ReferenceNullBench::'<Value>k__BackingField'
		IL_0007: ret
	} // end of method ReferenceNullBench::set_Value

	.method public hidebysig 
		instance bool EqualOperator () cil managed 
	{
		.custom instance void [BenchmarkDotNet.Annotations]BenchmarkDotNet.Attributes.BenchmarkAttribute::.ctor() = (
			01 00 01 00 54 02 08 42 61 73 65 6c 69 6e 65 01
		)
		// Method begins at RVA 0x2274
		// Code size 27 (0x1b)
		.maxstack 2
		.locals init (
			[0] bool result,
			[1] int32 i
		)

		IL_0000: ldc.i4.0
		IL_0001: stloc.0
		IL_0002: ldc.i4.0
		IL_0003: stloc.1
		IL_0004: br.s IL_0014
		// loop start (head: IL_0014)
			IL_0006: ldarg.0
			IL_0007: call instance string NullCheck.Benchmark.ReferenceNullBench::get_Value()
			IL_000c: ldnull
			IL_000d: ceq
			IL_000f: stloc.0
			IL_0010: ldloc.1
			IL_0011: ldc.i4.1
			IL_0012: add
			IL_0013: stloc.1

			IL_0014: ldloc.1
			IL_0015: ldc.i4.s 10
			IL_0017: blt.s IL_0006
		// end loop

		IL_0019: ldloc.0
		IL_001a: ret
	} // end of method ReferenceNullBench::EqualOperator

	.method public hidebysig 
		instance bool IsOperator () cil managed 
	{
		.custom instance void [BenchmarkDotNet.Annotations]BenchmarkDotNet.Attributes.BenchmarkAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x229c
		// Code size 27 (0x1b)
		.maxstack 2
		.locals init (
			[0] bool result,
			[1] int32 i
		)

		IL_0000: ldc.i4.0
		IL_0001: stloc.0
		IL_0002: ldc.i4.0
		IL_0003: stloc.1
		IL_0004: br.s IL_0014
		// loop start (head: IL_0014)
			IL_0006: ldarg.0
			IL_0007: call instance string NullCheck.Benchmark.ReferenceNullBench::get_Value()
			IL_000c: ldnull
			IL_000d: ceq
			IL_000f: stloc.0
			IL_0010: ldloc.1
			IL_0011: ldc.i4.1
			IL_0012: add
			IL_0013: stloc.1

			IL_0014: ldloc.1
			IL_0015: ldc.i4.s 10
			IL_0017: blt.s IL_0006
		// end loop

		IL_0019: ldloc.0
		IL_001a: ret
	} // end of method ReferenceNullBench::IsOperator

	.method public hidebysig 
		instance bool PatternMatchNull () cil managed 
	{
		.custom instance void [BenchmarkDotNet.Annotations]BenchmarkDotNet.Attributes.BenchmarkAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x22c4
		// Code size 27 (0x1b)
		.maxstack 2
		.locals init (
			[0] bool result,
			[1] int32 i
		)

		IL_0000: ldc.i4.0
		IL_0001: stloc.0
		IL_0002: ldc.i4.0
		IL_0003: stloc.1
		IL_0004: br.s IL_0014
		// loop start (head: IL_0014)
			IL_0006: ldarg.0
			IL_0007: call instance string NullCheck.Benchmark.ReferenceNullBench::get_Value()
			IL_000c: ldnull
			IL_000d: ceq
			IL_000f: stloc.0
			IL_0010: ldloc.1
			IL_0011: ldc.i4.1
			IL_0012: add
			IL_0013: stloc.1

			IL_0014: ldloc.1
			IL_0015: ldc.i4.s 10
			IL_0017: blt.s IL_0006
		// end loop

		IL_0019: ldloc.0
		IL_001a: ret
	} // end of method ReferenceNullBench::PatternMatchNull

	.method public hidebysig 
		instance bool PatternMatchNotNull7 () cil managed 
	{
		.custom instance void [BenchmarkDotNet.Annotations]BenchmarkDotNet.Attributes.BenchmarkAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x22ec
		// Code size 30 (0x1e)
		.maxstack 2
		.locals init (
			[0] bool result,
			[1] int32 i
		)

		IL_0000: ldc.i4.0
		IL_0001: stloc.0
		IL_0002: ldc.i4.0
		IL_0003: stloc.1
		IL_0004: br.s IL_0017
		// loop start (head: IL_0017)
			IL_0006: ldarg.0
			IL_0007: call instance string NullCheck.Benchmark.ReferenceNullBench::get_Value()
			IL_000c: ldnull
			IL_000d: cgt.un
			IL_000f: ldc.i4.0
			IL_0010: ceq
			IL_0012: stloc.0
			IL_0013: ldloc.1
			IL_0014: ldc.i4.1
			IL_0015: add
			IL_0016: stloc.1

			IL_0017: ldloc.1
			IL_0018: ldc.i4.s 10
			IL_001a: blt.s IL_0006
		// end loop

		IL_001c: ldloc.0
		IL_001d: ret
	} // end of method ReferenceNullBench::PatternMatchNotNull7

	.method public hidebysig 
		instance bool PatternMatchNotNull8 () cil managed 
	{
		.custom instance void [BenchmarkDotNet.Annotations]BenchmarkDotNet.Attributes.BenchmarkAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x2318
		// Code size 30 (0x1e)
		.maxstack 2
		.locals init (
			[0] bool result,
			[1] int32 i
		)

		IL_0000: ldc.i4.0
		IL_0001: stloc.0
		IL_0002: ldc.i4.0
		IL_0003: stloc.1
		IL_0004: br.s IL_0017
		// loop start (head: IL_0017)
			IL_0006: ldarg.0
			IL_0007: call instance string NullCheck.Benchmark.ReferenceNullBench::get_Value()
			IL_000c: ldnull
			IL_000d: cgt.un
			IL_000f: ldc.i4.0
			IL_0010: ceq
			IL_0012: stloc.0
			IL_0013: ldloc.1
			IL_0014: ldc.i4.1
			IL_0015: add
			IL_0016: stloc.1

			IL_0017: ldloc.1
			IL_0018: ldc.i4.s 10
			IL_001a: blt.s IL_0006
		// end loop

		IL_001c: ldloc.0
		IL_001d: ret
	} // end of method ReferenceNullBench::PatternMatchNotNull8

	.method public hidebysig 
		instance bool PatternMatchNotNull9 () cil managed 
	{
		.custom instance void [BenchmarkDotNet.Annotations]BenchmarkDotNet.Attributes.BenchmarkAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x2344
		// Code size 30 (0x1e)
		.maxstack 2
		.locals init (
			[0] bool result,
			[1] int32 i
		)

		IL_0000: ldc.i4.0
		IL_0001: stloc.0
		IL_0002: ldc.i4.0
		IL_0003: stloc.1
		IL_0004: br.s IL_0017
		// loop start (head: IL_0017)
			IL_0006: ldarg.0
			IL_0007: call instance string NullCheck.Benchmark.ReferenceNullBench::get_Value()
			IL_000c: ldnull
			IL_000d: cgt.un
			IL_000f: ldc.i4.0
			IL_0010: ceq
			IL_0012: stloc.0
			IL_0013: ldloc.1
			IL_0014: ldc.i4.1
			IL_0015: add
			IL_0016: stloc.1

			IL_0017: ldloc.1
			IL_0018: ldc.i4.s 10
			IL_001a: blt.s IL_0006
		// end loop

		IL_001c: ldloc.0
		IL_001d: ret
	} // end of method ReferenceNullBench::PatternMatchNotNull9

	.method public hidebysig 
		instance bool ObjectEquals () cil managed 
	{
		.custom instance void [BenchmarkDotNet.Annotations]BenchmarkDotNet.Attributes.BenchmarkAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x2370
		// Code size 30 (0x1e)
		.maxstack 2
		.locals init (
			[0] bool result,
			[1] int32 i
		)

		IL_0000: ldc.i4.0
		IL_0001: stloc.0
		IL_0002: ldc.i4.0
		IL_0003: stloc.1
		IL_0004: br.s IL_0017
		// loop start (head: IL_0017)
			IL_0006: ldarg.0
			IL_0007: call instance string NullCheck.Benchmark.ReferenceNullBench::get_Value()
			IL_000c: ldnull
			IL_000d: call bool [System.Runtime]System.Object::Equals(object, object)
			IL_0012: stloc.0
			IL_0013: ldloc.1
			IL_0014: ldc.i4.1
			IL_0015: add
			IL_0016: stloc.1

			IL_0017: ldloc.1
			IL_0018: ldc.i4.s 10
			IL_001a: blt.s IL_0006
		// end loop

		IL_001c: ldloc.0
		IL_001d: ret
	} // end of method ReferenceNullBench::ObjectEquals

	.method public hidebysig 
		instance bool ObjectReferenceEquals () cil managed 
	{
		.custom instance void [BenchmarkDotNet.Annotations]BenchmarkDotNet.Attributes.BenchmarkAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x239c
		// Code size 27 (0x1b)
		.maxstack 2
		.locals init (
			[0] bool result,
			[1] int32 i
		)

		IL_0000: ldc.i4.0
		IL_0001: stloc.0
		IL_0002: ldc.i4.0
		IL_0003: stloc.1
		IL_0004: br.s IL_0014
		// loop start (head: IL_0014)
			IL_0006: ldarg.0
			IL_0007: call instance string NullCheck.Benchmark.ReferenceNullBench::get_Value()
			IL_000c: ldnull
			IL_000d: ceq
			IL_000f: stloc.0
			IL_0010: ldloc.1
			IL_0011: ldc.i4.1
			IL_0012: add
			IL_0013: stloc.1

			IL_0014: ldloc.1
			IL_0015: ldc.i4.s 10
			IL_0017: blt.s IL_0006
		// end loop

		IL_0019: ldloc.0
		IL_001a: ret
	} // end of method ReferenceNullBench::ObjectReferenceEquals

	.method public hidebysig 
		instance bool EqualityComparer () cil managed 
	{
		.custom instance void [BenchmarkDotNet.Annotations]BenchmarkDotNet.Attributes.BenchmarkAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x23c4
		// Code size 35 (0x23)
		.maxstack 3
		.locals init (
			[0] bool result,
			[1] int32 i
		)

		IL_0000: ldc.i4.0
		IL_0001: stloc.0
		IL_0002: ldc.i4.0
		IL_0003: stloc.1
		IL_0004: br.s IL_001c
		// loop start (head: IL_001c)
			IL_0006: call class [System.Collections]System.Collections.Generic.EqualityComparer`1<!0> class [System.Collections]System.Collections.Generic.EqualityComparer`1<string>::get_Default()
			IL_000b: ldarg.0
			IL_000c: call instance string NullCheck.Benchmark.ReferenceNullBench::get_Value()
			IL_0011: ldnull
			IL_0012: callvirt instance bool class [System.Collections]System.Collections.Generic.EqualityComparer`1<string>::Equals(!0, !0)
			IL_0017: stloc.0
			IL_0018: ldloc.1
			IL_0019: ldc.i4.1
			IL_001a: add
			IL_001b: stloc.1

			IL_001c: ldloc.1
			IL_001d: ldc.i4.s 10
			IL_001f: blt.s IL_0006
		// end loop

		IL_0021: ldloc.0
		IL_0022: ret
	} // end of method ReferenceNullBench::EqualityComparer

	.method public hidebysig specialname rtspecialname 
		instance void .ctor () cil managed 
	{
		// Method begins at RVA 0x23f3
		// Code size 7 (0x7)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: call instance void [System.Runtime]System.Object::.ctor()
		IL_0006: ret
	} // end of method ReferenceNullBench::.ctor

	// Properties
	.property instance string Value()
	{
		.custom instance void [BenchmarkDotNet.Annotations]BenchmarkDotNet.Attributes.ParamsAttribute::.ctor(object[]) = (
			01 00 02 00 00 00 0e ff 0e 00 00 00
		)
		.get instance string NullCheck.Benchmark.ReferenceNullBench::get_Value()
		.set instance void NullCheck.Benchmark.ReferenceNullBench::set_Value(string)
	}

} // end of class NullCheck.Benchmark.ReferenceNullBench