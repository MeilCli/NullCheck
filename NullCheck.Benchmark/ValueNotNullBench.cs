using BenchmarkDotNet.Attributes;

namespace NullCheck.Benchmark
{
    [SimpleJob]
    [MeanColumn, MinColumn, MaxColumn]
    [MemoryDiagnoser]
    public class ValueNotNullBench
    {
        [Params(null, 1)]
        public int? Value { get; set; }

        [Benchmark(Baseline = true)]
        public bool EqualOperator()
        {
            bool result = false;
            for (int i = 0; i < 10; i++)
            {
                result = Value != null;
            }
            return result;
        }

        [Benchmark]
        public bool HasValue()
        {
            bool result = false;
            for (int i = 0; i < 10; i++)
            {
                result = Value.HasValue;
            }
            return result;
        }

        [Benchmark]
        public bool PartternMatchNull()
        {
            bool result = false;
            for (int i = 0; i < 10; i++)
            {
                result = !(Value is null);
            }
            return result;
        }

        [Benchmark]
        public bool PatternMatchNotNull7()
        {
            bool result = false;
            for (int i = 0; i < 10; i++)
            {
                result = Value is int;
            }
            return result;
        }

        [Benchmark]
        public bool PatternMatchNotNull7WithVariable()
        {
            bool result = false;
            for (int i = 0; i < 10; i++)
            {
                result = Value is int notNullValue;
            }
            return result;
        }

        [Benchmark]
        public bool PatternMatchNotNull8()
        {
            bool result = false;
            for (int i = 0; i < 10; i++)
            {
                result = Value is { };
            }
            return result;
        }

        [Benchmark]
        public bool PatternMatchNotNull9()
        {
            bool result = false;
            for (int i = 0; i < 10; i++)
            {
                result = Value is not null;
            }
            return result;
        }

        [Benchmark]
        public bool ObjectEquals()
        {
            bool result = false;
            for (int i = 0; i < 10; i++)
            {
                result = !(object.Equals(Value, null));
            }
            return result;
        }
    }
}
