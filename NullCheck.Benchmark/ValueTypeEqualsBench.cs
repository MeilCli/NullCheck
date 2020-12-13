using BenchmarkDotNet.Attributes;
using BenchmarkDotNet.Jobs;

namespace NullCheck.Benchmark
{
    // dotnet run -c Release -f net48
    [SimpleJob(RuntimeMoniker.Net48)]
    [SimpleJob(RuntimeMoniker.NetCoreApp50)]
    [SimpleJob(RuntimeMoniker.Mono)]
    [MeanColumn, MinColumn, MaxColumn]
    [MemoryDiagnoser]
    public class ValueTypeEqualsBench
    {
        private object expect = 1;

        [Params(null, 1)]
        public object? Value { get; set; }

        [Benchmark]
        public bool ValueTypeEquals()
        {
            return object.Equals(Value, expect);
        }
    }
}
