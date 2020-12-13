using BenchmarkDotNet.Attributes;
using BenchmarkDotNet.Jobs;
using System.Collections.Generic;

namespace NullCheck.Benchmark
{
    // dotnet run -c Release -f net48
    [SimpleJob(RuntimeMoniker.Net48)]
    [SimpleJob(RuntimeMoniker.NetCoreApp50)]
    [SimpleJob(RuntimeMoniker.Mono)]
    [MeanColumn, MinColumn, MaxColumn]
    [MemoryDiagnoser]
    public class ValueTypeLongStructEqualsBench
    {
        public struct BigStruct
        {
            public long Value1;
            public long Value2;
            public long Value3;
            public long Value4;
            public long Value5;
            public long Value6;
            public long Value7;
            public long Value8;
        }

        private object expect = new BigStruct();

        public IEnumerable<object> Source()
        {
            yield return new BigStruct();
        }

        [Benchmark]
        [ArgumentsSource(nameof(Source))]
        public bool ValueTypeEquals(object value)
        {
            return object.Equals(value, expect);
        }
    }
}
