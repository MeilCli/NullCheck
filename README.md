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
|PartternMatchNull|`Value is null`|
|PatternMatchNotNull7|`!(Value is string)`|
|PatternMatchNotNull7WithVariable|`!(Value is string notNullValue)`|
|PatternMatchNotNull8|`!(Value is { })`|
|PatternMatchNotNull9|`!(Value is not null)`|
|ObjectEquals|`object.Equals(Value, null)`|
|ObjectReferenceEquals|`object.ReferenceEquals(Value, null)`|
|EqualityComparer|`EqualityComparer<string?>.Default.Equals(Value, null)`|

#### ReferenceNotNullBench
|Method name|expression|
|:--|:--|
|EqualOperator|`Value != null`|
|PartternMatchNull|`!(Value is null)`|
|PatternMatchNotNull7|`Value is string`|
|PatternMatchNotNull7WithVariable|`Value is string notNullValue`|
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
|PartternMatchNull|`Value is null`|
|PatternMatchNotNull7|`!(Value is int)`|
|PatternMatchNotNull7WithVariable|`!(Value is int notNullValue)`|
|PatternMatchNotNull8|`!(Value is { })`|
|PatternMatchNotNull9|`!(Value is not null)`|
|ObjectEquals|`object.Equals(Value, null)`|
|EqualityComparer|`EqualityComparer<int?>.Default.Equals(Value, null)`|

#### ValueNotNullBench
|Method name|expression|
|:--|:--|
|EqualOperator|`Value != null`|
|HasValue|`Value.HasValue`|
|PartternMatchNull|`!(Value is null)`|
|PatternMatchNotNull7|`Value is int`|
|PatternMatchNotNull7WithVariable|`Value is int notNullValue`|
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
|                           Method | Value |      Mean |     Error |    StdDev |       Min |       Max | Ratio | RatioSD | Gen 0 | Gen 1 | Gen 2 | Allocated |
|--------------------------------- |------ |----------:|----------:|----------:|----------:|----------:|------:|--------:|------:|------:|------:|----------:|
|                    **EqualOperator** |     **?** |  **2.795 ns** | **0.0082 ns** | **0.0077 ns** |  **2.783 ns** |  **2.810 ns** |  **1.00** |    **0.00** |     **-** |     **-** |     **-** |         **-** |
|                PartternMatchNull |     ? |  2.737 ns | 0.0067 ns | 0.0056 ns |  2.728 ns |  2.750 ns |  0.98 |    0.00 |     - |     - |     - |         - |
|             PatternMatchNotNull7 |     ? |  2.727 ns | 0.0116 ns | 0.0103 ns |  2.714 ns |  2.746 ns |  0.98 |    0.01 |     - |     - |     - |         - |
| PatternMatchNotNull7WithVariable |     ? |  2.589 ns | 0.0046 ns | 0.0039 ns |  2.583 ns |  2.595 ns |  0.93 |    0.00 |     - |     - |     - |         - |
|             PatternMatchNotNull8 |     ? |  2.740 ns | 0.0093 ns | 0.0087 ns |  2.724 ns |  2.751 ns |  0.98 |    0.00 |     - |     - |     - |         - |
|             PatternMatchNotNull9 |     ? |  2.800 ns | 0.0086 ns | 0.0081 ns |  2.786 ns |  2.814 ns |  1.00 |    0.00 |     - |     - |     - |         - |
|                     ObjectEquals |     ? | 15.217 ns | 0.0315 ns | 0.0294 ns | 15.158 ns | 15.265 ns |  5.44 |    0.02 |     - |     - |     - |         - |
|            ObjectReferenceEquals |     ? |  2.795 ns | 0.0189 ns | 0.0177 ns |  2.776 ns |  2.835 ns |  1.00 |    0.01 |     - |     - |     - |         - |
|                 EqualityComparer |     ? | 15.155 ns | 0.0515 ns | 0.0482 ns | 15.062 ns | 15.239 ns |  5.42 |    0.02 |     - |     - |     - |         - |
|                                  |       |           |           |           |           |           |       |         |       |       |       |           |
|                    **EqualOperator** |      **** |  **2.800 ns** | **0.0137 ns** | **0.0128 ns** |  **2.781 ns** |  **2.822 ns** |  **1.00** |    **0.00** |     **-** |     **-** |     **-** |         **-** |
|                PartternMatchNull |       |  2.694 ns | 0.0165 ns | 0.0154 ns |  2.671 ns |  2.725 ns |  0.96 |    0.01 |     - |     - |     - |         - |
|             PatternMatchNotNull7 |       |  2.739 ns | 0.0144 ns | 0.0135 ns |  2.716 ns |  2.761 ns |  0.98 |    0.01 |     - |     - |     - |         - |
| PatternMatchNotNull7WithVariable |       |  2.732 ns | 0.0133 ns | 0.0125 ns |  2.717 ns |  2.751 ns |  0.98 |    0.01 |     - |     - |     - |         - |
|             PatternMatchNotNull8 |       |  2.703 ns | 0.0172 ns | 0.0161 ns |  2.680 ns |  2.735 ns |  0.97 |    0.01 |     - |     - |     - |         - |
|             PatternMatchNotNull9 |       |  2.675 ns | 0.0251 ns | 0.0235 ns |  2.645 ns |  2.722 ns |  0.96 |    0.01 |     - |     - |     - |         - |
|                     ObjectEquals |       | 16.751 ns | 0.0549 ns | 0.0486 ns | 16.654 ns | 16.823 ns |  5.98 |    0.03 |     - |     - |     - |         - |
|            ObjectReferenceEquals |       |  2.805 ns | 0.0154 ns | 0.0144 ns |  2.782 ns |  2.827 ns |  1.00 |    0.01 |     - |     - |     - |         - |
|                 EqualityComparer |       | 18.654 ns | 0.0813 ns | 0.0761 ns | 18.573 ns | 18.852 ns |  6.66 |    0.04 |     - |     - |     - |         - |

### ReferenceNotNullBench
|                           Method | Value |      Mean |     Error |    StdDev |       Min |       Max | Ratio | RatioSD | Gen 0 | Gen 1 | Gen 2 | Allocated |
|--------------------------------- |------ |----------:|----------:|----------:|----------:|----------:|------:|--------:|------:|------:|------:|----------:|
|                    **EqualOperator** |     **?** |  **2.655 ns** | **0.0234 ns** | **0.0219 ns** |  **2.630 ns** |  **2.700 ns** |  **1.00** |    **0.00** |     **-** |     **-** |     **-** |         **-** |
|                PartternMatchNull |     ? |  2.661 ns | 0.0287 ns | 0.0255 ns |  2.629 ns |  2.711 ns |  1.00 |    0.01 |     - |     - |     - |         - |
|             PatternMatchNotNull7 |     ? |  2.811 ns | 0.0113 ns | 0.0101 ns |  2.793 ns |  2.831 ns |  1.06 |    0.01 |     - |     - |     - |         - |
| PatternMatchNotNull7WithVariable |     ? |  2.688 ns | 0.0195 ns | 0.0173 ns |  2.662 ns |  2.713 ns |  1.01 |    0.01 |     - |     - |     - |         - |
|             PatternMatchNotNull8 |     ? |  2.724 ns | 0.0163 ns | 0.0152 ns |  2.704 ns |  2.753 ns |  1.03 |    0.01 |     - |     - |     - |         - |
|             PatternMatchNotNull9 |     ? |  2.687 ns | 0.0162 ns | 0.0152 ns |  2.671 ns |  2.722 ns |  1.01 |    0.01 |     - |     - |     - |         - |
|                     ObjectEquals |     ? | 13.156 ns | 0.0657 ns | 0.0615 ns | 13.058 ns | 13.272 ns |  4.96 |    0.05 |     - |     - |     - |         - |
|            ObjectReferenceEquals |     ? |  2.805 ns | 0.0121 ns | 0.0101 ns |  2.787 ns |  2.827 ns |  1.06 |    0.01 |     - |     - |     - |         - |
|                 EqualityComparer |     ? | 20.649 ns | 0.0626 ns | 0.0555 ns | 20.540 ns | 20.751 ns |  7.77 |    0.07 |     - |     - |     - |         - |
|                                  |       |           |           |           |           |           |       |         |       |       |       |           |
|                    **EqualOperator** |      **** |  **2.638 ns** | **0.0084 ns** | **0.0070 ns** |  **2.628 ns** |  **2.651 ns** |  **1.00** |    **0.00** |     **-** |     **-** |     **-** |         **-** |
|                PartternMatchNull |       |  2.647 ns | 0.0103 ns | 0.0097 ns |  2.633 ns |  2.665 ns |  1.00 |    0.01 |     - |     - |     - |         - |
|             PatternMatchNotNull7 |       |  2.787 ns | 0.0068 ns | 0.0060 ns |  2.777 ns |  2.796 ns |  1.06 |    0.00 |     - |     - |     - |         - |
| PatternMatchNotNull7WithVariable |       |  2.735 ns | 0.0200 ns | 0.0177 ns |  2.715 ns |  2.771 ns |  1.04 |    0.01 |     - |     - |     - |         - |
|             PatternMatchNotNull8 |       |  2.719 ns | 0.0232 ns | 0.0206 ns |  2.691 ns |  2.752 ns |  1.03 |    0.01 |     - |     - |     - |         - |
|             PatternMatchNotNull9 |       |  2.678 ns | 0.0180 ns | 0.0150 ns |  2.658 ns |  2.704 ns |  1.02 |    0.01 |     - |     - |     - |         - |
|                     ObjectEquals |       | 13.249 ns | 0.0377 ns | 0.0315 ns | 13.189 ns | 13.304 ns |  5.02 |    0.02 |     - |     - |     - |         - |
|            ObjectReferenceEquals |       |  2.647 ns | 0.0080 ns | 0.0075 ns |  2.635 ns |  2.665 ns |  1.00 |    0.00 |     - |     - |     - |         - |
|                 EqualityComparer |       | 19.272 ns | 0.0209 ns | 0.0163 ns | 19.238 ns | 19.295 ns |  7.31 |    0.02 |     - |     - |     - |         - |

### ValueNullBench
|                           Method | Value |       Mean |     Error |    StdDev |        Min |        Max | Ratio | RatioSD |  Gen 0 | Gen 1 | Gen 2 | Allocated |
|--------------------------------- |------ |-----------:|----------:|----------:|-----------:|-----------:|------:|--------:|-------:|------:|------:|----------:|
|                    **EqualOperator** |     **?** |   **3.804 ns** | **0.0118 ns** | **0.0104 ns** |   **3.782 ns** |   **3.824 ns** |  **1.00** |    **0.00** |      **-** |     **-** |     **-** |         **-** |
|                         HasValue |     ? |   3.742 ns | 0.0187 ns | 0.0175 ns |   3.724 ns |   3.784 ns |  0.98 |    0.00 |      - |     - |     - |         - |
|                PartternMatchNull |     ? |   3.755 ns | 0.0151 ns | 0.0126 ns |   3.734 ns |   3.778 ns |  0.99 |    0.00 |      - |     - |     - |         - |
|             PatternMatchNotNull7 |     ? | 130.717 ns | 0.5504 ns | 0.5148 ns | 129.730 ns | 131.553 ns | 34.37 |    0.18 |      - |     - |     - |         - |
| PatternMatchNotNull7WithVariable |     ? |   6.545 ns | 0.0379 ns | 0.0336 ns |   6.467 ns |   6.595 ns |  1.72 |    0.01 |      - |     - |     - |         - |
|             PatternMatchNotNull8 |     ? |   3.757 ns | 0.0183 ns | 0.0171 ns |   3.729 ns |   3.780 ns |  0.99 |    0.01 |      - |     - |     - |         - |
|             PatternMatchNotNull9 |     ? |   3.768 ns | 0.0209 ns | 0.0185 ns |   3.737 ns |   3.811 ns |  0.99 |    0.01 |      - |     - |     - |         - |
|                     ObjectEquals |     ? | 142.474 ns | 0.9953 ns | 0.9310 ns | 141.314 ns | 144.297 ns | 37.45 |    0.30 |      - |     - |     - |         - |
|                 EqualityComparer |     ? |  52.806 ns | 0.1622 ns | 0.1517 ns |  52.575 ns |  53.032 ns | 13.88 |    0.06 |      - |     - |     - |         - |
|                                  |       |            |           |           |            |            |       |         |        |       |       |           |
|                    **EqualOperator** |     **1** |   **3.994 ns** | **0.0200 ns** | **0.0187 ns** |   **3.959 ns** |   **4.026 ns** |  **1.00** |    **0.00** |      **-** |     **-** |     **-** |         **-** |
|                         HasValue |     1 |   4.380 ns | 0.0166 ns | 0.0155 ns |   4.354 ns |   4.413 ns |  1.10 |    0.01 |      - |     - |     - |         - |
|                PartternMatchNull |     1 |   3.993 ns | 0.0200 ns | 0.0167 ns |   3.972 ns |   4.032 ns |  1.00 |    0.01 |      - |     - |     - |         - |
|             PatternMatchNotNull7 |     1 | 377.570 ns | 1.3571 ns | 1.2694 ns | 376.070 ns | 379.997 ns | 94.54 |    0.51 | 0.0229 |     - |     - |     240 B |
| PatternMatchNotNull7WithVariable |     1 |   6.562 ns | 0.1374 ns | 0.1582 ns |   6.404 ns |   6.886 ns |  1.65 |    0.05 |      - |     - |     - |         - |
|             PatternMatchNotNull8 |     1 |   4.380 ns | 0.0129 ns | 0.0121 ns |   4.357 ns |   4.400 ns |  1.10 |    0.01 |      - |     - |     - |         - |
|             PatternMatchNotNull9 |     1 |   4.402 ns | 0.0178 ns | 0.0166 ns |   4.382 ns |   4.432 ns |  1.10 |    0.01 |      - |     - |     - |         - |
|                     ObjectEquals |     1 | 328.538 ns | 0.5475 ns | 0.4274 ns | 327.334 ns | 328.885 ns | 82.25 |    0.40 | 0.0229 |     - |     - |     240 B |
|                 EqualityComparer |     1 |  52.585 ns | 0.0940 ns | 0.0834 ns |  52.447 ns |  52.750 ns | 13.17 |    0.07 |      - |     - |     - |         - |

### ValueNotNullBench
|                           Method | Value |       Mean |     Error |    StdDev |        Min |        Max | Ratio | RatioSD |  Gen 0 | Gen 1 | Gen 2 | Allocated |
|--------------------------------- |------ |-----------:|----------:|----------:|-----------:|-----------:|------:|--------:|-------:|------:|------:|----------:|
|                    **EqualOperator** |     **?** |   **2.757 ns** | **0.0080 ns** | **0.0071 ns** |   **2.745 ns** |   **2.770 ns** |  **1.00** |    **0.00** |      **-** |     **-** |     **-** |         **-** |
|                         HasValue |     ? |   2.801 ns | 0.0262 ns | 0.0246 ns |   2.769 ns |   2.843 ns |  1.02 |    0.01 |      - |     - |     - |         - |
|                PartternMatchNull |     ? |   3.752 ns | 0.0131 ns | 0.0116 ns |   3.731 ns |   3.772 ns |  1.36 |    0.00 |      - |     - |     - |         - |
|             PatternMatchNotNull7 |     ? | 130.503 ns | 0.6916 ns | 0.6469 ns | 129.466 ns | 131.598 ns | 47.34 |    0.25 |      - |     - |     - |         - |
| PatternMatchNotNull7WithVariable |     ? |   5.042 ns | 0.0328 ns | 0.0307 ns |   4.983 ns |   5.091 ns |  1.83 |    0.01 |      - |     - |     - |         - |
|             PatternMatchNotNull8 |     ? |   2.767 ns | 0.0120 ns | 0.0113 ns |   2.744 ns |   2.785 ns |  1.00 |    0.00 |      - |     - |     - |         - |
|             PatternMatchNotNull9 |     ? |   2.744 ns | 0.0104 ns | 0.0097 ns |   2.730 ns |   2.760 ns |  1.00 |    0.00 |      - |     - |     - |         - |
|                     ObjectEquals |     ? | 138.281 ns | 0.3430 ns | 0.3209 ns | 137.884 ns | 138.927 ns | 50.16 |    0.19 |      - |     - |     - |         - |
|                 EqualityComparer |     ? |  52.638 ns | 0.0815 ns | 0.0636 ns |  52.528 ns |  52.769 ns | 19.09 |    0.07 |      - |     - |     - |         - |
|                                  |       |            |           |           |            |            |       |         |        |       |       |           |
|                    **EqualOperator** |     **1** |   **4.306 ns** | **0.0082 ns** | **0.0073 ns** |   **4.297 ns** |   **4.320 ns** |  **1.00** |    **0.00** |      **-** |     **-** |     **-** |         **-** |
|                         HasValue |     1 |   3.452 ns | 0.0078 ns | 0.0073 ns |   3.442 ns |   3.466 ns |  0.80 |    0.00 |      - |     - |     - |         - |
|                PartternMatchNull |     1 |   4.375 ns | 0.0099 ns | 0.0093 ns |   4.355 ns |   4.389 ns |  1.02 |    0.00 |      - |     - |     - |         - |
|             PatternMatchNotNull7 |     1 | 375.198 ns | 1.3389 ns | 1.2524 ns | 373.107 ns | 377.433 ns | 87.14 |    0.32 | 0.0229 |     - |     - |     240 B |
| PatternMatchNotNull7WithVariable |     1 |   6.594 ns | 0.0243 ns | 0.0203 ns |   6.561 ns |   6.628 ns |  1.53 |    0.01 |      - |     - |     - |         - |
|             PatternMatchNotNull8 |     1 |   4.315 ns | 0.0076 ns | 0.0067 ns |   4.307 ns |   4.328 ns |  1.00 |    0.00 |      - |     - |     - |         - |
|             PatternMatchNotNull9 |     1 |   4.270 ns | 0.0143 ns | 0.0133 ns |   4.247 ns |   4.297 ns |  0.99 |    0.00 |      - |     - |     - |         - |
|                     ObjectEquals |     1 | 332.185 ns | 0.8209 ns | 0.7277 ns | 331.043 ns | 333.748 ns | 77.14 |    0.24 | 0.0229 |     - |     - |     240 B |
|                 EqualityComparer |     1 |  52.772 ns | 0.0760 ns | 0.0711 ns |  52.645 ns |  52.881 ns | 12.26 |    0.03 |      - |     - |     - |         - |

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