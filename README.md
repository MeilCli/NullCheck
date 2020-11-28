# NullCheck
This repository is research for C#'s null check benchmark

## Benchmark Code
```csharp
[SimpleJob]
[MeanColumn, MinColumn, MaxColumn]
[MemoryDiagnoser]
public class Bench
{
    [Params(null, "")] // or null, 1
    public string? Value { get; set; } // or int?

    [Benchmark]
    public bool Method()
    {
        bool result = false;
        for (int i = 0; i < 10; i++)
        {
            result = Value is null; // change every benchmark case
        }
        return result;
    }
}
```

### Why for loop on benchmark method?
Because it's too fast to measure with one expression, some benchmark case show empty result

### Benchmark case
Measure 4 benchmark case

- ReferenceNullBench: want to judge null for reference type
- ReferenceNotNullBench: want to judge not null for reference type
- ValueNullBench: want to judge null for value type
- ValueNotNullBench: want to judge not null for value type

#### ReferenceNullBench
|Method name|expression|
|:--|:--|
|EqualOperator|`Value == null`|
|IsOperator|`!(Value is string)`|
|PatternMatchNull|`Value is null`|
|PatternMatchNotNull7|`!(Value is string notNullValue)`|
|PatternMatchNotNull8|`!(Value is { })`|
|PatternMatchNotNull9|`!(Value is not null)`|
|ObjectEquals|`object.Equals(Value, null)`|
|ObjectReferenceEquals|`object.ReferenceEquals(Value, null)`|
|EqualityComparer|`EqualityComparer<string?>.Default.Equals(Value, null)`|

#### ReferenceNotNullBench
|Method name|expression|
|:--|:--|
|EqualOperator|`Value != null`|
|IsOperator|`Value is string`|
|PatternMatchNull|`!(Value is null)`|
|PatternMatchNotNull7|`Value is string notNullValue`|
|PatternMatchNotNull8|`Value is { }`|
|PatternMatchNotNull9|`Value is not null`|
|ObjectEquals|`!(object.Equals(Value, null))`|
|ObjectReferenceEquals|`!(object.ReferenceEquals(Value, null))`|
|EqualityComparer|`!(EqualityComparer<string?>.Default.Equals(Value, null))`|

#### ValueNullBench
|Method name|expression|
|:--|:--|
|EqualOperator|`Value == null`|
|HasValue|`!(Value.HasValue)`|
|IsOperator|`!(Value is int)`|
|PatternMatchNull|`Value is null`|
|PatternMatchNotNull7|`!(Value is int notNullValue)`|
|PatternMatchNotNull8|`!(Value is { })`|
|PatternMatchNotNull9|`!(Value is not null)`|
|ObjectEquals|`object.Equals(Value, null)`|
|EqualityComparer|`EqualityComparer<int?>.Default.Equals(Value, null)`|

#### ValueNotNullBench
|Method name|expression|
|:--|:--|
|EqualOperator|`Value != null`|
|HasValue|`Value.HasValue`|
|IsOperator|`Value is int`|
|PatternMatchNull|`!(Value is null)`|
|PatternMatchNotNull7|`Value is int notNullValue`|
|PatternMatchNotNull8|`Value is { }`|
|PatternMatchNotNull9|`Value is not null`|
|ObjectEquals|`!(object.Equals(Value, null))`|
|EqualityComparer|`!(EqualityComparer<int?>.Default.Equals(Value, null))`|

## Result
``` ini

BenchmarkDotNet=v0.12.1, OS=Windows 10.0.19042
Intel Core i9-10900K CPU 3.70GHz, 1 CPU, 16 logical and 8 physical cores
.NET Core SDK=5.0.100
  [Host]     : .NET Core 5.0.0 (CoreCLR 5.0.20.51904, CoreFX 5.0.20.51904), X64 RyuJIT
  DefaultJob : .NET Core 5.0.0 (CoreCLR 5.0.20.51904, CoreFX 5.0.20.51904), X64 RyuJIT


```

Execute on Hyper-v

### ReferenceNullBench
|                Method | Value |      Mean |     Error |    StdDev |       Min |       Max | Ratio | RatioSD | Gen 0 | Gen 1 | Gen 2 | Allocated |
|---------------------- |------ |----------:|----------:|----------:|----------:|----------:|------:|--------:|------:|------:|------:|----------:|
|         **EqualOperator** |     **?** |  **2.796 ns** | **0.0122 ns** | **0.0114 ns** |  **2.783 ns** |  **2.825 ns** |  **1.00** |    **0.00** |     **-** |     **-** |     **-** |         **-** |
|            IsOperator |     ? |  2.728 ns | 0.0062 ns | 0.0058 ns |  2.720 ns |  2.738 ns |  0.98 |    0.00 |     - |     - |     - |         - |
|      PatternMatchNull |     ? |  2.728 ns | 0.0065 ns | 0.0061 ns |  2.720 ns |  2.737 ns |  0.98 |    0.00 |     - |     - |     - |         - |
|  PatternMatchNotNull7 |     ? |  2.736 ns | 0.0072 ns | 0.0068 ns |  2.724 ns |  2.746 ns |  0.98 |    0.00 |     - |     - |     - |         - |
|  PatternMatchNotNull8 |     ? |  2.687 ns | 0.0133 ns | 0.0125 ns |  2.669 ns |  2.710 ns |  0.96 |    0.01 |     - |     - |     - |         - |
|  PatternMatchNotNull9 |     ? |  2.658 ns | 0.0116 ns | 0.0109 ns |  2.642 ns |  2.684 ns |  0.95 |    0.01 |     - |     - |     - |         - |
|          ObjectEquals |     ? | 15.119 ns | 0.1939 ns | 0.1619 ns | 14.591 ns | 15.215 ns |  5.40 |    0.06 |     - |     - |     - |         - |
| ObjectReferenceEquals |     ? |  2.656 ns | 0.0100 ns | 0.0094 ns |  2.639 ns |  2.671 ns |  0.95 |    0.00 |     - |     - |     - |         - |
|      EqualityComparer |     ? | 15.116 ns | 0.0338 ns | 0.0316 ns | 15.083 ns | 15.188 ns |  5.41 |    0.02 |     - |     - |     - |         - |
|                       |       |           |           |           |           |           |       |         |       |       |       |           |
|         **EqualOperator** |      **** |  **2.650 ns** | **0.0126 ns** | **0.0111 ns** |  **2.635 ns** |  **2.668 ns** |  **1.00** |    **0.00** |     **-** |     **-** |     **-** |         **-** |
|            IsOperator |       |  2.691 ns | 0.0087 ns | 0.0077 ns |  2.674 ns |  2.703 ns |  1.02 |    0.01 |     - |     - |     - |         - |
|      PatternMatchNull |       |  2.735 ns | 0.0127 ns | 0.0112 ns |  2.722 ns |  2.759 ns |  1.03 |    0.01 |     - |     - |     - |         - |
|  PatternMatchNotNull7 |       |  2.729 ns | 0.0095 ns | 0.0089 ns |  2.722 ns |  2.749 ns |  1.03 |    0.01 |     - |     - |     - |         - |
|  PatternMatchNotNull8 |       |  2.736 ns | 0.0072 ns | 0.0064 ns |  2.723 ns |  2.746 ns |  1.03 |    0.01 |     - |     - |     - |         - |
|  PatternMatchNotNull9 |       |  2.801 ns | 0.0090 ns | 0.0084 ns |  2.785 ns |  2.813 ns |  1.06 |    0.00 |     - |     - |     - |         - |
|          ObjectEquals |       | 14.942 ns | 0.0291 ns | 0.0272 ns | 14.898 ns | 14.981 ns |  5.64 |    0.03 |     - |     - |     - |         - |
| ObjectReferenceEquals |       |  2.648 ns | 0.0081 ns | 0.0076 ns |  2.639 ns |  2.660 ns |  1.00 |    0.00 |     - |     - |     - |         - |
|      EqualityComparer |       | 18.640 ns | 0.0458 ns | 0.0429 ns | 18.585 ns | 18.719 ns |  7.04 |    0.03 |     - |     - |     - |         - |

### ReferenceNotNullBench
|                Method | Value |      Mean |     Error |    StdDev |       Min |       Max | Ratio | RatioSD | Gen 0 | Gen 1 | Gen 2 | Allocated |
|---------------------- |------ |----------:|----------:|----------:|----------:|----------:|------:|--------:|------:|------:|------:|----------:|
|         **EqualOperator** |     **?** |  **2.681 ns** | **0.0088 ns** | **0.0082 ns** |  **2.670 ns** |  **2.694 ns** |  **1.00** |    **0.00** |     **-** |     **-** |     **-** |         **-** |
|            IsOperator |     ? |  2.800 ns | 0.0117 ns | 0.0092 ns |  2.782 ns |  2.810 ns |  1.04 |    0.00 |     - |     - |     - |         - |
|      PatternMatchNull |     ? |  2.784 ns | 0.0025 ns | 0.0022 ns |  2.781 ns |  2.788 ns |  1.04 |    0.00 |     - |     - |     - |         - |
|  PatternMatchNotNull7 |     ? |  2.662 ns | 0.0059 ns | 0.0055 ns |  2.653 ns |  2.671 ns |  0.99 |    0.00 |     - |     - |     - |         - |
|  PatternMatchNotNull8 |     ? |  2.658 ns | 0.0052 ns | 0.0043 ns |  2.650 ns |  2.665 ns |  0.99 |    0.00 |     - |     - |     - |         - |
|  PatternMatchNotNull9 |     ? |  2.680 ns | 0.0161 ns | 0.0150 ns |  2.662 ns |  2.704 ns |  1.00 |    0.01 |     - |     - |     - |         - |
|          ObjectEquals |     ? | 10.835 ns | 0.0165 ns | 0.0154 ns | 10.811 ns | 10.862 ns |  4.04 |    0.01 |     - |     - |     - |         - |
| ObjectReferenceEquals |     ? |  2.686 ns | 0.0084 ns | 0.0078 ns |  2.675 ns |  2.702 ns |  1.00 |    0.01 |     - |     - |     - |         - |
|      EqualityComparer |     ? | 16.741 ns | 0.0479 ns | 0.0425 ns | 16.688 ns | 16.829 ns |  6.24 |    0.03 |     - |     - |     - |         - |
|                       |       |           |           |           |           |           |       |         |       |       |       |           |
|         **EqualOperator** |      **** |  **4.297 ns** | **0.0102 ns** | **0.0095 ns** |  **4.285 ns** |  **4.318 ns** |  **1.00** |    **0.00** |     **-** |     **-** |     **-** |         **-** |
|            IsOperator |       |  4.298 ns | 0.0107 ns | 0.0095 ns |  4.286 ns |  4.316 ns |  1.00 |    0.00 |     - |     - |     - |         - |
|      PatternMatchNull |       |  2.354 ns | 0.0060 ns | 0.0053 ns |  2.346 ns |  2.366 ns |  0.55 |    0.00 |     - |     - |     - |         - |
|  PatternMatchNotNull7 |       |  2.355 ns | 0.0063 ns | 0.0059 ns |  2.346 ns |  2.365 ns |  0.55 |    0.00 |     - |     - |     - |         - |
|  PatternMatchNotNull8 |       |  4.306 ns | 0.0066 ns | 0.0061 ns |  4.295 ns |  4.315 ns |  1.00 |    0.00 |     - |     - |     - |         - |
|  PatternMatchNotNull9 |       |  2.384 ns | 0.0081 ns | 0.0072 ns |  2.369 ns |  2.397 ns |  0.55 |    0.00 |     - |     - |     - |         - |
|          ObjectEquals |       | 16.583 ns | 0.0348 ns | 0.0326 ns | 16.515 ns | 16.625 ns |  3.86 |    0.01 |     - |     - |     - |         - |
| ObjectReferenceEquals |       |  4.309 ns | 0.0091 ns | 0.0085 ns |  4.295 ns |  4.327 ns |  1.00 |    0.00 |     - |     - |     - |         - |
|      EqualityComparer |       | 16.503 ns | 0.0453 ns | 0.0401 ns | 16.446 ns | 16.573 ns |  3.84 |    0.01 |     - |     - |     - |         - |

### ValueNullBench
|               Method | Value |       Mean |     Error |    StdDev |        Min |        Max |  Ratio | RatioSD |  Gen 0 | Gen 1 | Gen 2 | Allocated |
|--------------------- |------ |-----------:|----------:|----------:|-----------:|-----------:|-------:|--------:|-------:|------:|------:|----------:|
|        **EqualOperator** |     **?** |   **3.777 ns** | **0.0119 ns** | **0.0111 ns** |   **3.766 ns** |   **3.792 ns** |   **1.00** |    **0.00** |      **-** |     **-** |     **-** |         **-** |
|             HasValue |     ? |   3.735 ns | 0.0066 ns | 0.0055 ns |   3.730 ns |   3.749 ns |   0.99 |    0.00 |      - |     - |     - |         - |
|           IsOperator |     ? | 130.256 ns | 0.4640 ns | 0.4340 ns | 129.684 ns | 131.072 ns |  34.48 |    0.15 |      - |     - |     - |         - |
|     PatternMatchNull |     ? |   3.740 ns | 0.0115 ns | 0.0107 ns |   3.726 ns |   3.759 ns |   0.99 |    0.00 |      - |     - |     - |         - |
| PatternMatchNotNull7 |     ? |   5.291 ns | 0.0280 ns | 0.0262 ns |   5.234 ns |   5.323 ns |   1.40 |    0.01 |      - |     - |     - |         - |
| PatternMatchNotNull8 |     ? |   3.788 ns | 0.0115 ns | 0.0102 ns |   3.776 ns |   3.812 ns |   1.00 |    0.00 |      - |     - |     - |         - |
| PatternMatchNotNull9 |     ? |   3.785 ns | 0.0108 ns | 0.0101 ns |   3.771 ns |   3.803 ns |   1.00 |    0.00 |      - |     - |     - |         - |
|         ObjectEquals |     ? | 137.108 ns | 0.4547 ns | 0.4253 ns | 136.447 ns | 137.844 ns |  36.30 |    0.12 |      - |     - |     - |         - |
|     EqualityComparer |     ? |  52.409 ns | 0.0834 ns | 0.0780 ns |  52.308 ns |  52.546 ns |  13.87 |    0.05 |      - |     - |     - |         - |
|                      |       |            |           |           |            |            |        |         |        |       |       |           |
|        **EqualOperator** |     **1** |   **3.777 ns** | **0.0059 ns** | **0.0055 ns** |   **3.767 ns** |   **3.786 ns** |   **1.00** |    **0.00** |      **-** |     **-** |     **-** |         **-** |
|             HasValue |     1 |   3.740 ns | 0.0103 ns | 0.0091 ns |   3.730 ns |   3.757 ns |   0.99 |    0.00 |      - |     - |     - |         - |
|           IsOperator |     1 | 315.140 ns | 0.9877 ns | 0.9239 ns | 313.165 ns | 316.274 ns |  83.44 |    0.30 | 0.0229 |     - |     - |     240 B |
|     PatternMatchNull |     1 |   3.745 ns | 0.0090 ns | 0.0084 ns |   3.732 ns |   3.758 ns |   0.99 |    0.00 |      - |     - |     - |         - |
| PatternMatchNotNull7 |     1 |   6.649 ns | 0.0161 ns | 0.0151 ns |   6.627 ns |   6.676 ns |   1.76 |    0.00 |      - |     - |     - |         - |
| PatternMatchNotNull8 |     1 |   3.739 ns | 0.0089 ns | 0.0083 ns |   3.727 ns |   3.755 ns |   0.99 |    0.00 |      - |     - |     - |         - |
| PatternMatchNotNull9 |     1 |   3.767 ns | 0.0053 ns | 0.0047 ns |   3.761 ns |   3.777 ns |   1.00 |    0.00 |      - |     - |     - |         - |
|         ObjectEquals |     1 | 390.873 ns | 0.9274 ns | 0.8675 ns | 389.727 ns | 392.305 ns | 103.50 |    0.28 | 0.0229 |     - |     - |     240 B |
|     EqualityComparer |     1 |  52.678 ns | 0.0687 ns | 0.0643 ns |  52.558 ns |  52.783 ns |  13.95 |    0.02 |      - |     - |     - |         - |

### ValueNotNullBench
|               Method | Value |       Mean |     Error |    StdDev |        Min |        Max |  Ratio | RatioSD |  Gen 0 | Gen 1 | Gen 2 | Allocated |
|--------------------- |------ |-----------:|----------:|----------:|-----------:|-----------:|-------:|--------:|-------:|------:|------:|----------:|
|        **EqualOperator** |     **?** |   **2.777 ns** | **0.0083 ns** | **0.0078 ns** |   **2.765 ns** |   **2.787 ns** |   **1.00** |    **0.00** |      **-** |     **-** |     **-** |         **-** |
|             HasValue |     ? |   2.761 ns | 0.0107 ns | 0.0100 ns |   2.741 ns |   2.777 ns |   0.99 |    0.00 |      - |     - |     - |         - |
|           IsOperator |     ? | 142.725 ns | 0.2208 ns | 0.1844 ns | 142.296 ns | 142.891 ns |  51.37 |    0.13 |      - |     - |     - |         - |
|     PatternMatchNull |     ? |   3.752 ns | 0.0106 ns | 0.0100 ns |   3.732 ns |   3.764 ns |   1.35 |    0.01 |      - |     - |     - |         - |
| PatternMatchNotNull7 |     ? |   6.563 ns | 0.0189 ns | 0.0168 ns |   6.535 ns |   6.599 ns |   2.36 |    0.01 |      - |     - |     - |         - |
| PatternMatchNotNull8 |     ? |   2.775 ns | 0.0047 ns | 0.0037 ns |   2.766 ns |   2.779 ns |   1.00 |    0.00 |      - |     - |     - |         - |
| PatternMatchNotNull9 |     ? |   2.770 ns | 0.0075 ns | 0.0063 ns |   2.760 ns |   2.785 ns |   1.00 |    0.00 |      - |     - |     - |         - |
|         ObjectEquals |     ? | 135.950 ns | 0.4537 ns | 0.4022 ns | 135.388 ns | 136.715 ns |  48.94 |    0.22 |      - |     - |     - |         - |
|     EqualityComparer |     ? |  52.804 ns | 0.0765 ns | 0.0716 ns |  52.708 ns |  52.943 ns |  19.01 |    0.07 |      - |     - |     - |         - |
|                      |       |            |           |           |            |            |        |         |        |       |       |           |
|        **EqualOperator** |     **1** |   **2.798 ns** | **0.0126 ns** | **0.0118 ns** |   **2.781 ns** |   **2.819 ns** |   **1.00** |    **0.00** |      **-** |     **-** |     **-** |         **-** |
|             HasValue |     1 |   2.763 ns | 0.0125 ns | 0.0111 ns |   2.748 ns |   2.788 ns |   0.99 |    0.00 |      - |     - |     - |         - |
|           IsOperator |     1 | 316.097 ns | 0.8942 ns | 0.8364 ns | 314.915 ns | 317.668 ns | 112.98 |    0.51 | 0.0229 |     - |     - |     240 B |
|     PatternMatchNull |     1 |   3.747 ns | 0.0185 ns | 0.0173 ns |   3.730 ns |   3.782 ns |   1.34 |    0.01 |      - |     - |     - |         - |
| PatternMatchNotNull7 |     1 |   6.663 ns | 0.0204 ns | 0.0191 ns |   6.638 ns |   6.696 ns |   2.38 |    0.01 |      - |     - |     - |         - |
| PatternMatchNotNull8 |     1 |   2.794 ns | 0.0115 ns | 0.0108 ns |   2.781 ns |   2.815 ns |   1.00 |    0.00 |      - |     - |     - |         - |
| PatternMatchNotNull9 |     1 |   2.777 ns | 0.0114 ns | 0.0107 ns |   2.764 ns |   2.796 ns |   0.99 |    0.00 |      - |     - |     - |         - |
|         ObjectEquals |     1 | 329.407 ns | 0.7998 ns | 0.6679 ns | 328.426 ns | 330.471 ns | 117.70 |    0.62 | 0.0229 |     - |     - |     240 B |
|     EqualityComparer |     1 |  52.727 ns | 0.1236 ns | 0.1157 ns |  52.582 ns |  52.895 ns |  18.85 |    0.09 |      - |     - |     - |         - |

### Ref: EqualityComparer\<T\>.Default
```csharp
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
```

|                 Method |      Mean |     Error |    StdDev |       Min |       Max | Gen 0 | Gen 1 | Gen 2 | Allocated |
|----------------------- |----------:|----------:|----------:|----------:|----------:|------:|------:|------:|----------:|
| StringEqualityComparer | 0.0082 ns | 0.0048 ns | 0.0040 ns | 0.0000 ns | 0.0156 ns |     - |     - |     - |         - |
|    IntEqualityComparer | 0.0000 ns | 0.0000 ns | 0.0000 ns | 0.0000 ns | 0.0000 ns |     - |     - |     - |         - |


## CIL
il extension file is decompiled by [ILSpy](https://github.com/icsharpcode/ILSpy)   
if you view with code highlight, use [IL Support](https://marketplace.visualstudio.com/items?itemName=ins0mniaque.ILSupport)

There files are benchmark case and normal usecase CIL, but Various CILs are generated by compiler optimization

## License
MIT License