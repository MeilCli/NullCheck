.class public auto ansi beforefieldinit NullCheck.Benchmark.ReferenceNotNullBench
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
		// Method begins at RVA 0x20b4
		// Code size 7 (0x7)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldfld string NullCheck.Benchmark.ReferenceNotNullBench::'<Value>k__BackingField'
		IL_0006: ret
	} // end of method ReferenceNotNullBench::get_Value

	.method public hidebysig specialname 
		instance void set_Value (
			string 'value'
		) cil managed 
	{
		.custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x20bc
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: stfld string NullCheck.Benchmark.ReferenceNotNullBench::'<Value>k__BackingField'
		IL_0007: ret
	} // end of method ReferenceNotNullBench::set_Value

	.method public hidebysig 
		instance bool EqualOperator () cil managed 
	{
		.custom instance void [BenchmarkDotNet.Annotations]BenchmarkDotNet.Attributes.BenchmarkAttribute::.ctor() = (
			01 00 01 00 54 02 08 42 61 73 65 6c 69 6e 65 01
		)
		// Method begins at RVA 0x20c8
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
			IL_0007: call instance string NullCheck.Benchmark.ReferenceNotNullBench::get_Value()
			IL_000c: ldnull
			IL_000d: cgt.un
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
	} // end of method ReferenceNotNullBench::EqualOperator

	.method public hidebysig 
		instance bool PartternMatchNull () cil managed 
	{
		.custom instance void [BenchmarkDotNet.Annotations]BenchmarkDotNet.Attributes.BenchmarkAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x20f0
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
			IL_0007: call instance string NullCheck.Benchmark.ReferenceNotNullBench::get_Value()
			IL_000c: ldnull
			IL_000d: ceq
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
	} // end of method ReferenceNotNullBench::PartternMatchNull

	.method public hidebysig 
		instance bool PatternMatchNotNull7 () cil managed 
	{
		.custom instance void [BenchmarkDotNet.Annotations]BenchmarkDotNet.Attributes.BenchmarkAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x211c
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
			IL_0007: call instance string NullCheck.Benchmark.ReferenceNotNullBench::get_Value()
			IL_000c: ldnull
			IL_000d: cgt.un
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
	} // end of method ReferenceNotNullBench::PatternMatchNotNull7

	.method public hidebysig 
		instance bool PatternMatchNotNull7WithVariable () cil managed 
	{
		.custom instance void [BenchmarkDotNet.Annotations]BenchmarkDotNet.Attributes.BenchmarkAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x2144
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
			IL_0007: call instance string NullCheck.Benchmark.ReferenceNotNullBench::get_Value()
			IL_000c: ldnull
			IL_000d: cgt.un
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
	} // end of method ReferenceNotNullBench::PatternMatchNotNull7WithVariable

	.method public hidebysig 
		instance bool PatternMatchNotNull8 () cil managed 
	{
		.custom instance void [BenchmarkDotNet.Annotations]BenchmarkDotNet.Attributes.BenchmarkAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x216c
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
			IL_0007: call instance string NullCheck.Benchmark.ReferenceNotNullBench::get_Value()
			IL_000c: ldnull
			IL_000d: cgt.un
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
	} // end of method ReferenceNotNullBench::PatternMatchNotNull8

	.method public hidebysig 
		instance bool PatternMatchNotNull9 () cil managed 
	{
		.custom instance void [BenchmarkDotNet.Annotations]BenchmarkDotNet.Attributes.BenchmarkAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x2194
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
			IL_0007: call instance string NullCheck.Benchmark.ReferenceNotNullBench::get_Value()
			IL_000c: ldnull
			IL_000d: cgt.un
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
	} // end of method ReferenceNotNullBench::PatternMatchNotNull9

	.method public hidebysig 
		instance bool ObjectEquals () cil managed 
	{
		.custom instance void [BenchmarkDotNet.Annotations]BenchmarkDotNet.Attributes.BenchmarkAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x21bc
		// Code size 33 (0x21)
		.maxstack 2
		.locals init (
			[0] bool result,
			[1] int32 i
		)

		IL_0000: ldc.i4.0
		IL_0001: stloc.0
		IL_0002: ldc.i4.0
		IL_0003: stloc.1
		IL_0004: br.s IL_001a
		// loop start (head: IL_001a)
			IL_0006: ldarg.0
			IL_0007: call instance string NullCheck.Benchmark.ReferenceNotNullBench::get_Value()
			IL_000c: ldnull
			IL_000d: call bool [System.Runtime]System.Object::Equals(object, object)
			IL_0012: ldc.i4.0
			IL_0013: ceq
			IL_0015: stloc.0
			IL_0016: ldloc.1
			IL_0017: ldc.i4.1
			IL_0018: add
			IL_0019: stloc.1

			IL_001a: ldloc.1
			IL_001b: ldc.i4.s 10
			IL_001d: blt.s IL_0006
		// end loop

		IL_001f: ldloc.0
		IL_0020: ret
	} // end of method ReferenceNotNullBench::ObjectEquals

	.method public hidebysig 
		instance bool ObjectReferenceEquals () cil managed 
	{
		.custom instance void [BenchmarkDotNet.Annotations]BenchmarkDotNet.Attributes.BenchmarkAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x21ec
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
			IL_0007: call instance string NullCheck.Benchmark.ReferenceNotNullBench::get_Value()
			IL_000c: ldnull
			IL_000d: cgt.un
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
	} // end of method ReferenceNotNullBench::ObjectReferenceEquals

	.method public hidebysig specialname rtspecialname 
		instance void .ctor () cil managed 
	{
		// Method begins at RVA 0x2213
		// Code size 7 (0x7)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: call instance void [System.Runtime]System.Object::.ctor()
		IL_0006: ret
	} // end of method ReferenceNotNullBench::.ctor

	// Properties
	.property instance string Value()
	{
		.custom instance void [BenchmarkDotNet.Annotations]BenchmarkDotNet.Attributes.ParamsAttribute::.ctor(object[]) = (
			01 00 02 00 00 00 0e ff 0e 00 00 00
		)
		.get instance string NullCheck.Benchmark.ReferenceNotNullBench::get_Value()
		.set instance void NullCheck.Benchmark.ReferenceNotNullBench::set_Value(string)
	}

} // end of class NullCheck.Benchmark.ReferenceNotNullBench