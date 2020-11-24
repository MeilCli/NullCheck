.class public auto ansi beforefieldinit NullCheck.Benchmark.ValueNullBench
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
		// Method begins at RVA 0x25d6
		// Code size 7 (0x7)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldfld valuetype [System.Runtime]System.Nullable`1<int32> NullCheck.Benchmark.ValueNullBench::'<Value>k__BackingField'
		IL_0006: ret
	} // end of method ValueNullBench::get_Value

	.method public hidebysig specialname 
		instance void set_Value (
			valuetype [System.Runtime]System.Nullable`1<int32> 'value'
		) cil managed 
	{
		.custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x25de
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: stfld valuetype [System.Runtime]System.Nullable`1<int32> NullCheck.Benchmark.ValueNullBench::'<Value>k__BackingField'
		IL_0007: ret
	} // end of method ValueNullBench::set_Value

	.method public hidebysig 
		instance bool EqualOperator () cil managed 
	{
		.custom instance void [BenchmarkDotNet.Annotations]BenchmarkDotNet.Attributes.BenchmarkAttribute::.ctor() = (
			01 00 01 00 54 02 08 42 61 73 65 6c 69 6e 65 01
		)
		// Method begins at RVA 0x25e8
		// Code size 35 (0x23)
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
		IL_0004: br.s IL_001c
		// loop start (head: IL_001c)
			IL_0006: ldarg.0
			IL_0007: call instance valuetype [System.Runtime]System.Nullable`1<int32> NullCheck.Benchmark.ValueNullBench::get_Value()
			IL_000c: stloc.2
			IL_000d: ldloca.s 2
			IL_000f: call instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
			IL_0014: ldc.i4.0
			IL_0015: ceq
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
	} // end of method ValueNullBench::EqualOperator

	.method public hidebysig 
		instance bool HasValue () cil managed 
	{
		.custom instance void [BenchmarkDotNet.Annotations]BenchmarkDotNet.Attributes.BenchmarkAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x2618
		// Code size 35 (0x23)
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
		IL_0004: br.s IL_001c
		// loop start (head: IL_001c)
			IL_0006: ldarg.0
			IL_0007: call instance valuetype [System.Runtime]System.Nullable`1<int32> NullCheck.Benchmark.ValueNullBench::get_Value()
			IL_000c: stloc.2
			IL_000d: ldloca.s 2
			IL_000f: call instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
			IL_0014: ldc.i4.0
			IL_0015: ceq
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
	} // end of method ValueNullBench::HasValue

	.method public hidebysig 
		instance bool PartternMatchNull () cil managed 
	{
		.custom instance void [BenchmarkDotNet.Annotations]BenchmarkDotNet.Attributes.BenchmarkAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x2648
		// Code size 35 (0x23)
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
		IL_0004: br.s IL_001c
		// loop start (head: IL_001c)
			IL_0006: ldarg.0
			IL_0007: call instance valuetype [System.Runtime]System.Nullable`1<int32> NullCheck.Benchmark.ValueNullBench::get_Value()
			IL_000c: stloc.2
			IL_000d: ldloca.s 2
			IL_000f: call instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
			IL_0014: ldc.i4.0
			IL_0015: ceq
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
	} // end of method ValueNullBench::PartternMatchNull

	.method public hidebysig 
		instance bool PatternMatchNotNull7 () cil managed 
	{
		.custom instance void [BenchmarkDotNet.Annotations]BenchmarkDotNet.Attributes.BenchmarkAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x2678
		// Code size 40 (0x28)
		.maxstack 2
		.locals init (
			[0] bool result,
			[1] int32 i
		)

		IL_0000: ldc.i4.0
		IL_0001: stloc.0
		IL_0002: ldc.i4.0
		IL_0003: stloc.1
		IL_0004: br.s IL_0021
		// loop start (head: IL_0021)
			IL_0006: ldarg.0
			IL_0007: call instance valuetype [System.Runtime]System.Nullable`1<int32> NullCheck.Benchmark.ValueNullBench::get_Value()
			IL_000c: box valuetype [System.Runtime]System.Nullable`1<int32>
			IL_0011: isinst [System.Runtime]System.Int32
			IL_0016: ldnull
			IL_0017: cgt.un
			IL_0019: ldc.i4.0
			IL_001a: ceq
			IL_001c: stloc.0
			IL_001d: ldloc.1
			IL_001e: ldc.i4.1
			IL_001f: add
			IL_0020: stloc.1

			IL_0021: ldloc.1
			IL_0022: ldc.i4.s 10
			IL_0024: blt.s IL_0006
		// end loop

		IL_0026: ldloc.0
		IL_0027: ret
	} // end of method ValueNullBench::PatternMatchNotNull7

	.method public hidebysig 
		instance bool PatternMatchNotNull7WithVariable () cil managed 
	{
		.custom instance void [BenchmarkDotNet.Annotations]BenchmarkDotNet.Attributes.BenchmarkAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x26ac
		// Code size 49 (0x31)
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
		IL_0004: br.s IL_002a
		// loop start (head: IL_002a)
			IL_0006: ldarg.0
			IL_0007: call instance valuetype [System.Runtime]System.Nullable`1<int32> NullCheck.Benchmark.ValueNullBench::get_Value()
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

			IL_0022: ldc.i4.0
			IL_0023: ceq
			IL_0025: stloc.0
			IL_0026: ldloc.1
			IL_0027: ldc.i4.1
			IL_0028: add
			IL_0029: stloc.1

			IL_002a: ldloc.1
			IL_002b: ldc.i4.s 10
			IL_002d: blt.s IL_0006
		// end loop

		IL_002f: ldloc.0
		IL_0030: ret
	} // end of method ValueNullBench::PatternMatchNotNull7WithVariable

	.method public hidebysig 
		instance bool PatternMatchNotNull8 () cil managed 
	{
		.custom instance void [BenchmarkDotNet.Annotations]BenchmarkDotNet.Attributes.BenchmarkAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x26ec
		// Code size 35 (0x23)
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
		IL_0004: br.s IL_001c
		// loop start (head: IL_001c)
			IL_0006: ldarg.0
			IL_0007: call instance valuetype [System.Runtime]System.Nullable`1<int32> NullCheck.Benchmark.ValueNullBench::get_Value()
			IL_000c: stloc.2
			IL_000d: ldloca.s 2
			IL_000f: call instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
			IL_0014: ldc.i4.0
			IL_0015: ceq
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
	} // end of method ValueNullBench::PatternMatchNotNull8

	.method public hidebysig 
		instance bool PatternMatchNotNull9 () cil managed 
	{
		.custom instance void [BenchmarkDotNet.Annotations]BenchmarkDotNet.Attributes.BenchmarkAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x271c
		// Code size 35 (0x23)
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
		IL_0004: br.s IL_001c
		// loop start (head: IL_001c)
			IL_0006: ldarg.0
			IL_0007: call instance valuetype [System.Runtime]System.Nullable`1<int32> NullCheck.Benchmark.ValueNullBench::get_Value()
			IL_000c: stloc.2
			IL_000d: ldloca.s 2
			IL_000f: call instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
			IL_0014: ldc.i4.0
			IL_0015: ceq
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
	} // end of method ValueNullBench::PatternMatchNotNull9

	.method public hidebysig 
		instance bool ObjectEquals () cil managed 
	{
		.custom instance void [BenchmarkDotNet.Annotations]BenchmarkDotNet.Attributes.BenchmarkAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x274c
		// Code size 35 (0x23)
		.maxstack 2
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
			IL_0006: ldarg.0
			IL_0007: call instance valuetype [System.Runtime]System.Nullable`1<int32> NullCheck.Benchmark.ValueNullBench::get_Value()
			IL_000c: box valuetype [System.Runtime]System.Nullable`1<int32>
			IL_0011: ldnull
			IL_0012: call bool [System.Runtime]System.Object::Equals(object, object)
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
	} // end of method ValueNullBench::ObjectEquals

	.method public hidebysig 
		instance bool EqualityComparer () cil managed 
	{
		.custom instance void [BenchmarkDotNet.Annotations]BenchmarkDotNet.Attributes.BenchmarkAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x277c
		// Code size 43 (0x2b)
		.maxstack 3
		.locals init (
			[0] bool result,
			[1] int32 i,
			[2] valuetype [System.Runtime]System.Nullable`1<int32>
		)

		IL_0000: ldc.i4.0
		IL_0001: stloc.0
		IL_0002: ldc.i4.0
		IL_0003: stloc.1
		IL_0004: br.s IL_0024
		// loop start (head: IL_0024)
			IL_0006: call class [System.Collections]System.Collections.Generic.EqualityComparer`1<!0> class [System.Collections]System.Collections.Generic.EqualityComparer`1<valuetype [System.Runtime]System.Nullable`1<int32>>::get_Default()
			IL_000b: ldarg.0
			IL_000c: call instance valuetype [System.Runtime]System.Nullable`1<int32> NullCheck.Benchmark.ValueNullBench::get_Value()
			IL_0011: ldloca.s 2
			IL_0013: initobj valuetype [System.Runtime]System.Nullable`1<int32>
			IL_0019: ldloc.2
			IL_001a: callvirt instance bool class [System.Collections]System.Collections.Generic.EqualityComparer`1<valuetype [System.Runtime]System.Nullable`1<int32>>::Equals(!0, !0)
			IL_001f: stloc.0
			IL_0020: ldloc.1
			IL_0021: ldc.i4.1
			IL_0022: add
			IL_0023: stloc.1

			IL_0024: ldloc.1
			IL_0025: ldc.i4.s 10
			IL_0027: blt.s IL_0006
		// end loop

		IL_0029: ldloc.0
		IL_002a: ret
	} // end of method ValueNullBench::EqualityComparer

	.method public hidebysig specialname rtspecialname 
		instance void .ctor () cil managed 
	{
		// Method begins at RVA 0x27b3
		// Code size 7 (0x7)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: call instance void [System.Runtime]System.Object::.ctor()
		IL_0006: ret
	} // end of method ValueNullBench::.ctor

	// Properties
	.property instance valuetype [System.Runtime]System.Nullable`1<int32> Value()
	{
		.custom instance void [BenchmarkDotNet.Annotations]BenchmarkDotNet.Attributes.ParamsAttribute::.ctor(object[]) = (
			01 00 02 00 00 00 0e ff 08 01 00 00 00 00 00
		)
		.get instance valuetype [System.Runtime]System.Nullable`1<int32> NullCheck.Benchmark.ValueNullBench::get_Value()
		.set instance void NullCheck.Benchmark.ValueNullBench::set_Value(valuetype [System.Runtime]System.Nullable`1<int32>)
	}

} // end of class NullCheck.Benchmark.ValueNullBench