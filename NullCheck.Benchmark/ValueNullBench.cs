﻿using BenchmarkDotNet.Attributes;
using System.Collections.Generic;

namespace NullCheck.Benchmark
{
    [SimpleJob]
    [MeanColumn, MinColumn, MaxColumn]
    [MemoryDiagnoser]
    public class ValueNullBench
    {
        [Params(null, 1)]
        public int? Value { get; set; }

        [Benchmark(Baseline = true)]
        public bool EqualOperator()
        {
            bool result = false;
            for (int i = 0; i < 10; i++)
            {
                result = Value == null;
            }
            return result;
        }

        [Benchmark]
        public bool HasValue()
        {
            bool result = false;
            for (int i = 0; i < 10; i++)
            {
                result = !(Value.HasValue);
            }
            return result;
        }

        [Benchmark]
        public bool IsOperator()
        {
            bool result = false;
            for (int i = 0; i < 10; i++)
            {
                result = !(Value is int);
            }
            return result;
        }

        [Benchmark]
        public bool PatternMatchNull()
        {
            bool result = false;
            for (int i = 0; i < 10; i++)
            {
                result = Value is null;
            }
            return result;
        }

        [Benchmark]
        public bool PatternMatchNotNull7()
        {
            bool result = false;
            for (int i = 0; i < 10; i++)
            {
                result = !(Value is int notNullValue);
            }
            return result;
        }

        [Benchmark]
        public bool PatternMatchNotNull8()
        {
            bool result = false;
            for (int i = 0; i < 10; i++)
            {
                result = !(Value is { });
            }
            return result;
        }

        [Benchmark]
        public bool PatternMatchNotNull9()
        {
            bool result = false;
            for (int i = 0; i < 10; i++)
            {
                result = !(Value is not null);
            }
            return result;
        }

        [Benchmark]
        public bool ObjectEquals()
        {
            bool result = false;
            for (int i = 0; i < 10; i++)
            {
                result = object.Equals(Value, null);
            }
            return result;
        }

        [Benchmark]
        public bool EqualityComparer()
        {
            bool result = false;
            for (int i = 0; i < 10; i++)
            {
                result = EqualityComparer<int?>.Default.Equals(Value, null);
            }
            return result;
        }
    }
}
