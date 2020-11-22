.class public auto ansi beforefieldinit NullCheck.Benchmark.ValueNotNullBench
	extends [System.Runtime]System.Object
{
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
	.field private valuetype [System.Runtime]System.Nullable`1<int32> '<Value>k__BackingField'
	.custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
		01 00 00 00
	)

	// Methods
	.method public hidebysig specialname 
		instance valuetype [System.Runtime]System.Nullable`1<int32> get_Value () cil managed 
	{
		.custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x2383
		// Code size 7 (0x7)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldfld valuetype [System.Runtime]System.Nullable`1<int32> NullCheck.Benchmark.ValueNotNullBench::'<Value>k__BackingField'
		IL_0006: ret
	} // end of method ValueNotNullBench::get_Value

	.method public hidebysig specialname 
		instance void set_Value (
			valuetype [System.Runtime]System.Nullable`1<int32> 'value'
		) cil managed 
	{
		.custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x238b
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: stfld valuetype [System.Runtime]System.Nullable`1<int32> NullCheck.Benchmark.ValueNotNullBench::'<Value>k__BackingField'
		IL_0007: ret
	} // end of method ValueNotNullBench::set_Value

	.method public hidebysig 
		instance bool EqualOperator () cil managed 
	{
		.custom instance void [BenchmarkDotNet.Annotations]BenchmarkDotNet.Attributes.BenchmarkAttribute::.ctor() = (
			01 00 01 00 54 02 08 42 61 73 65 6c 69 6e 65 01
		)
		// Method begins at RVA 0x2394
		// Code size 32 (0x20)
		.maxstack 2
		.locals init (
			[0] bool result,
			[1] int32 i,
			[2] valuetype [System.Runtime]System.Nullable`1<int32>
		)

		IL_0000: ldc.i4.0
		IL_0001: stloc.0
		IL_0002: ldc.i4.0
		IL_0003: stloc.1
		IL_0004: br.s IL_0019
		// loop start (head: IL_0019)
			IL_0006: ldarg.0
			IL_0007: call instance valuetype [System.Runtime]System.Nullable`1<int32> NullCheck.Benchmark.ValueNotNullBench::get_Value()
			IL_000c: stloc.2
			IL_000d: ldloca.s 2
			IL_000f: call instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
			IL_0014: stloc.0
			IL_0015: ldloc.1
			IL_0016: ldc.i4.1
			IL_0017: add
			IL_0018: stloc.1

			IL_0019: ldloc.1
			IL_001a: ldc.i4.s 10
			IL_001c: blt.s IL_0006
		// end loop

		IL_001e: ldloc.0
		IL_001f: ret
	} // end of method ValueNotNullBench::EqualOperator

	.method public hidebysig 
		instance bool HasValue () cil managed 
	{
		.custom instance void [BenchmarkDotNet.Annotations]BenchmarkDotNet.Attributes.BenchmarkAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x23c0
		// Code size 32 (0x20)
		.maxstack 2
		.locals init (
			[0] bool result,
			[1] int32 i,
			[2] valuetype [System.Runtime]System.Nullable`1<int32>
		)

		IL_0000: ldc.i4.0
		IL_0001: stloc.0
		IL_0002: ldc.i4.0
		IL_0003: stloc.1
		IL_0004: br.s IL_0019
		// loop start (head: IL_0019)
			IL_0006: ldarg.0
			IL_0007: call instance valuetype [System.Runtime]System.Nullable`1<int32> NullCheck.Benchmark.ValueNotNullBench::get_Value()
			IL_000c: stloc.2
			IL_000d: ldloca.s 2
			IL_000f: call instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
			IL_0014: stloc.0
			IL_0015: ldloc.1
			IL_0016: ldc.i4.1
			IL_0017: add
			IL_0018: stloc.1

			IL_0019: ldloc.1
			IL_001a: ldc.i4.s 10
			IL_001c: blt.s IL_0006
		// end loop

		IL_001e: ldloc.0
		IL_001f: ret
	} // end of method ValueNotNullBench::HasValue

	.method public hidebysig 
		instance bool PartternMatchNull () cil managed 
	{
		.custom instance void [BenchmarkDotNet.Annotations]BenchmarkDotNet.Attributes.BenchmarkAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x23ec
		// Code size 38 (0x26)
		.maxstack 2
		.locals init (
			[0] bool result,
			[1] int32 i,
			[2] valuetype [System.Runtime]System.Nullable`1<int32>
		)

		IL_0000: ldc.i4.0
		IL_0001: stloc.0
		IL_0002: ldc.i4.0
		IL_0003: stloc.1
		IL_0004: br.s IL_001f
		// loop start (head: IL_001f)
			IL_0006: ldarg.0
			IL_0007: call instance valuetype [System.Runtime]System.Nullable`1<int32> NullCheck.Benchmark.ValueNotNullBench::get_Value()
			IL_000c: stloc.2
			IL_000d: ldloca.s 2
			IL_000f: call instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
			IL_0014: ldc.i4.0
			IL_0015: ceq
			IL_0017: ldc.i4.0
			IL_0018: ceq
			IL_001a: stloc.0
			IL_001b: ldloc.1
			IL_001c: ldc.i4.1
			IL_001d: add
			IL_001e: stloc.1

			IL_001f: ldloc.1
			IL_0020: ldc.i4.s 10
			IL_0022: blt.s IL_0006
		// end loop

		IL_0024: ldloc.0
		IL_0025: ret
	} // end of method ValueNotNullBench::PartternMatchNull

	.method public hidebysig 
		instance bool PatternMatchNotNull7 () cil managed 
	{
		.custom instance void [BenchmarkDotNet.Annotations]BenchmarkDotNet.Attributes.BenchmarkAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x2420
		// Code size 37 (0x25)
		.maxstack 2
		.locals init (
			[0] bool result,
			[1] int32 i
		)

		IL_0000: ldc.i4.0
		IL_0001: stloc.0
		IL_0002: ldc.i4.0
		IL_0003: stloc.1
		IL_0004: br.s IL_001e
		// loop start (head: IL_001e)
			IL_0006: ldarg.0
			IL_0007: call instance valuetype [System.Runtime]System.Nullable`1<int32> NullCheck.Benchmark.ValueNotNullBench::get_Value()
			IL_000c: box valuetype [System.Runtime]System.Nullable`1<int32>
			IL_0011: isinst [System.Runtime]System.Int32
			IL_0016: ldnull
			IL_0017: cgt.un
			IL_0019: stloc.0
			IL_001a: ldloc.1
			IL_001b: ldc.i4.1
			IL_001c: add
			IL_001d: stloc.1

			IL_001e: ldloc.1
			IL_001f: ldc.i4.s 10
			IL_0021: blt.s IL_0006
		// end loop

		IL_0023: ldloc.0
		IL_0024: ret
	} // end of method ValueNotNullBench::PatternMatchNotNull7

	.method public hidebysig 
		instance bool PatternMatchNotNull7WithVariable () cil managed 
	{
		.custom instance void [BenchmarkDotNet.Annotations]BenchmarkDotNet.Attributes.BenchmarkAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x2454
		// Code size 46 (0x2e)
		.maxstack 2
		.locals init (
			[0] bool result,
			[1] int32 i,
			[2] valuetype [System.Runtime]System.Nullable`1<int32>
		)

		IL_0000: ldc.i4.0
		IL_0001: stloc.0
		IL_0002: ldc.i4.0
		IL_0003: stloc.1
		IL_0004: br.s IL_0027
		// loop start (head: IL_0027)
			IL_0006: ldarg.0
			IL_0007: call instance valuetype [System.Runtime]System.Nullable`1<int32> NullCheck.Benchmark.ValueNotNullBench::get_Value()
			IL_000c: stloc.2
			IL_000d: ldloca.s 2
			IL_000f: call instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
			IL_0014: brfalse.s IL_0021

			IL_0016: ldloca.s 2
			IL_0018: call instance !0 valuetype [System.Runtime]System.Nullable`1<int32>::GetValueOrDefault()
			IL_001d: pop
			IL_001e: ldc.i4.1
			IL_001f: br.s IL_0022

			IL_0021: ldc.i4.0

			IL_0022: stloc.0
			IL_0023: ldloc.1
			IL_0024: ldc.i4.1
			IL_0025: add
			IL_0026: stloc.1

			IL_0027: ldloc.1
			IL_0028: ldc.i4.s 10
			IL_002a: blt.s IL_0006
		// end loop

		IL_002c: ldloc.0
		IL_002d: ret
	} // end of method ValueNotNullBench::PatternMatchNotNull7WithVariable

	.method public hidebysig 
		instance bool PatternMatchNotNull8 () cil managed 
	{
		.custom instance void [BenchmarkDotNet.Annotations]BenchmarkDotNet.Attributes.BenchmarkAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x2490
		// Code size 32 (0x20)
		.maxstack 2
		.locals init (
			[0] bool result,
			[1] int32 i,
			[2] valuetype [System.Runtime]System.Nullable`1<int32>
		)

		IL_0000: ldc.i4.0
		IL_0001: stloc.0
		IL_0002: ldc.i4.0
		IL_0003: stloc.1
		IL_0004: br.s IL_0019
		// loop start (head: IL_0019)
			IL_0006: ldarg.0
			IL_0007: call instance valuetype [System.Runtime]System.Nullable`1<int32> NullCheck.Benchmark.ValueNotNullBench::get_Value()
			IL_000c: stloc.2
			IL_000d: ldloca.s 2
			IL_000f: call instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
			IL_0014: stloc.0
			IL_0015: ldloc.1
			IL_0016: ldc.i4.1
			IL_0017: add
			IL_0018: stloc.1

			IL_0019: ldloc.1
			IL_001a: ldc.i4.s 10
			IL_001c: blt.s IL_0006
		// end loop

		IL_001e: ldloc.0
		IL_001f: ret
	} // end of method ValueNotNullBench::PatternMatchNotNull8

	.method public hidebysig 
		instance bool PatternMatchNotNull9 () cil managed 
	{
		.custom instance void [BenchmarkDotNet.Annotations]BenchmarkDotNet.Attributes.BenchmarkAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x24bc
		// Code size 32 (0x20)
		.maxstack 2
		.locals init (
			[0] bool result,
			[1] int32 i,
			[2] valuetype [System.Runtime]System.Nullable`1<int32>
		)

		IL_0000: ldc.i4.0
		IL_0001: stloc.0
		IL_0002: ldc.i4.0
		IL_0003: stloc.1
		IL_0004: br.s IL_0019
		// loop start (head: IL_0019)
			IL_0006: ldarg.0
			IL_0007: call instance valuetype [System.Runtime]System.Nullable`1<int32> NullCheck.Benchmark.ValueNotNullBench::get_Value()
			IL_000c: stloc.2
			IL_000d: ldloca.s 2
			IL_000f: call instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
			IL_0014: stloc.0
			IL_0015: ldloc.1
			IL_0016: ldc.i4.1
			IL_0017: add
			IL_0018: stloc.1

			IL_0019: ldloc.1
			IL_001a: ldc.i4.s 10
			IL_001c: blt.s IL_0006
		// end loop

		IL_001e: ldloc.0
		IL_001f: ret
	} // end of method ValueNotNullBench::PatternMatchNotNull9

	.method public hidebysig 
		instance bool ObjectEquals () cil managed 
	{
		.custom instance void [BenchmarkDotNet.Annotations]BenchmarkDotNet.Attributes.BenchmarkAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x24e8
		// Code size 38 (0x26)
		.maxstack 2
		.locals init (
			[0] bool result,
			[1] int32 i
		)

		IL_0000: ldc.i4.0
		IL_0001: stloc.0
		IL_0002: ldc.i4.0
		IL_0003: stloc.1
		IL_0004: br.s IL_001f
		// loop start (head: IL_001f)
			IL_0006: ldarg.0
			IL_0007: call instance valuetype [System.Runtime]System.Nullable`1<int32> NullCheck.Benchmark.ValueNotNullBench::get_Value()
			IL_000c: box valuetype [System.Runtime]System.Nullable`1<int32>
			IL_0011: ldnull
			IL_0012: call bool [System.Runtime]System.Object::Equals(object, object)
			IL_0017: ldc.i4.0
			IL_0018: ceq
			IL_001a: stloc.0
			IL_001b: ldloc.1
			IL_001c: ldc.i4.1
			IL_001d: add
			IL_001e: stloc.1

			IL_001f: ldloc.1
			IL_0020: ldc.i4.s 10
			IL_0022: blt.s IL_0006
		// end loop

		IL_0024: ldloc.0
		IL_0025: ret
	} // end of method ValueNotNullBench::ObjectEquals

	.method public hidebysig specialname rtspecialname 
		instance void .ctor () cil managed 
	{
		// Method begins at RVA 0x251a
		// Code size 7 (0x7)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: call instance void [System.Runtime]System.Object::.ctor()
		IL_0006: ret
	} // end of method ValueNotNullBench::.ctor

	// Properties
	.property instance valuetype [System.Runtime]System.Nullable`1<int32> Value()
	{
		.custom instance void [BenchmarkDotNet.Annotations]BenchmarkDotNet.Attributes.ParamsAttribute::.ctor(object[]) = (
			01 00 02 00 00 00 0e ff 08 01 00 00 00 00 00
		)
		.get instance valuetype [System.Runtime]System.Nullable`1<int32> NullCheck.Benchmark.ValueNotNullBench::get_Value()
		.set instance void NullCheck.Benchmark.ValueNotNullBench::set_Value(valuetype [System.Runtime]System.Nullable`1<int32>)
	}

} // end of class NullCheck.Benchmark.ValueNotNullBench