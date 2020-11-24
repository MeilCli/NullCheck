using BenchmarkDotNet.Attributes;
using System.Collections.Generic;

namespace NullCheck.Benchmark
{
    [SimpleJob]
    [MeanColumn, MinColumn, MaxColumn]
    [MemoryDiagnoser]
    public class EqualityComparerBench
    {
        [Benchmark]
        public IEqualityComparer<string?> StringEqualityComparer()
        {
            return EqualityComparer<string?>.Default;
        }

        [Benchmark]
        public IEqualityComparer<int?> IntEqualityComparer()
        {
            return EqualityComparer<int?>.Default;
        }
    }
}
