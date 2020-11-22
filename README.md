# NullCheck
This repository is research for C#'s null check benchmark

## Research Code
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

## Result
``` ini

BenchmarkDotNet=v0.12.1, OS=Windows 10.0.19042
Intel Core i9-10900K CPU 3.70GHz, 1 CPU, 16 logical and 8 physical cores
.NET Core SDK=5.0.100
  [Host]     : .NET Core 5.0.0 (CoreCLR 5.0.20.51904, CoreFX 5.0.20.51904), X64 RyuJIT
  DefaultJob : .NET Core 5.0.0 (CoreCLR 5.0.20.51904, CoreFX 5.0.20.51904), X64 RyuJIT


```

¦Execute on Hyper-v

### ReferenceNullBench
|                           Method | Value |      Mean |     Error |    StdDev |       Min |       Max | Ratio | RatioSD | Gen 0 | Gen 1 | Gen 2 | Allocated |
|--------------------------------- |------ |----------:|----------:|----------:|----------:|----------:|------:|--------:|------:|------:|------:|----------:|
|                    **EqualOperator** |     **?** |  **2.775 ns** | **0.0143 ns** | **0.0127 ns** |  **2.761 ns** |  **2.800 ns** |  **1.00** |    **0.00** |     **-** |     **-** |     **-** |         **-** |
|                PartternMatchNull |     ? |  2.676 ns | 0.0089 ns | 0.0079 ns |  2.657 ns |  2.690 ns |  0.96 |    0.01 |     - |     - |     - |         - |
|             PatternMatchNotNull7 |     ? |  2.702 ns | 0.0081 ns | 0.0076 ns |  2.692 ns |  2.714 ns |  0.97 |    0.01 |     - |     - |     - |         - |
| PatternMatchNotNull7WithVariable |     ? |  2.708 ns | 0.0107 ns | 0.0100 ns |  2.696 ns |  2.726 ns |  0.98 |    0.01 |     - |     - |     - |         - |
|             PatternMatchNotNull8 |     ? |  2.702 ns | 0.0080 ns | 0.0075 ns |  2.690 ns |  2.712 ns |  0.97 |    0.00 |     - |     - |     - |         - |
|             PatternMatchNotNull9 |     ? |  2.639 ns | 0.0131 ns | 0.0123 ns |  2.617 ns |  2.659 ns |  0.95 |    0.01 |     - |     - |     - |         - |
|                     ObjectEquals |     ? | 11.519 ns | 0.0200 ns | 0.0177 ns | 11.484 ns | 11.548 ns |  4.15 |    0.02 |     - |     - |     - |         - |
|            ObjectReferenceEquals |     ? |  2.766 ns | 0.0114 ns | 0.0106 ns |  2.749 ns |  2.785 ns |  1.00 |    0.01 |     - |     - |     - |         - |
|                                  |       |           |           |           |           |           |       |         |       |       |       |           |
|                    **EqualOperator** |      **** |  **2.761 ns** | **0.0087 ns** | **0.0081 ns** |  **2.751 ns** |  **2.775 ns** |  **1.00** |    **0.00** |     **-** |     **-** |     **-** |         **-** |
|                PartternMatchNull |       |  2.713 ns | 0.0138 ns | 0.0115 ns |  2.694 ns |  2.731 ns |  0.98 |    0.01 |     - |     - |     - |         - |
|             PatternMatchNotNull7 |       |  2.673 ns | 0.0104 ns | 0.0087 ns |  2.658 ns |  2.693 ns |  0.97 |    0.00 |     - |     - |     - |         - |
| PatternMatchNotNull7WithVariable |       |  2.707 ns | 0.0076 ns | 0.0067 ns |  2.696 ns |  2.718 ns |  0.98 |    0.00 |     - |     - |     - |         - |
|             PatternMatchNotNull8 |       |  2.700 ns | 0.0097 ns | 0.0086 ns |  2.689 ns |  2.713 ns |  0.98 |    0.00 |     - |     - |     - |         - |
|             PatternMatchNotNull9 |       |  2.768 ns | 0.0060 ns | 0.0050 ns |  2.758 ns |  2.779 ns |  1.00 |    0.00 |     - |     - |     - |         - |
|                     ObjectEquals |       | 14.963 ns | 0.0454 ns | 0.0424 ns | 14.902 ns | 15.032 ns |  5.42 |    0.02 |     - |     - |     - |         - |
|            ObjectReferenceEquals |       |  2.771 ns | 0.0140 ns | 0.0117 ns |  2.756 ns |  2.795 ns |  1.00 |    0.00 |     - |     - |     - |         - |

### ReferenceNotNullBench
|                           Method | Value |      Mean |     Error |    StdDev |       Min |       Max | Ratio | RatioSD | Gen 0 | Gen 1 | Gen 2 | Allocated |
|--------------------------------- |------ |----------:|----------:|----------:|----------:|----------:|------:|--------:|------:|------:|------:|----------:|
|                    **EqualOperator** |     **?** |  **2.772 ns** | **0.0080 ns** | **0.0071 ns** |  **2.757 ns** |  **2.781 ns** |  **1.00** |    **0.00** |     **-** |     **-** |     **-** |         **-** |
|                PartternMatchNull |     ? |  2.711 ns | 0.0090 ns | 0.0085 ns |  2.698 ns |  2.728 ns |  0.98 |    0.00 |     - |     - |     - |         - |
|             PatternMatchNotNull7 |     ? |  2.680 ns | 0.0125 ns | 0.0117 ns |  2.664 ns |  2.704 ns |  0.97 |    0.00 |     - |     - |     - |         - |
| PatternMatchNotNull7WithVariable |     ? |  2.710 ns | 0.0084 ns | 0.0070 ns |  2.698 ns |  2.720 ns |  0.98 |    0.00 |     - |     - |     - |         - |
|             PatternMatchNotNull8 |     ? |  2.675 ns | 0.0076 ns | 0.0071 ns |  2.665 ns |  2.686 ns |  0.96 |    0.00 |     - |     - |     - |         - |
|             PatternMatchNotNull9 |     ? |  2.650 ns | 0.0158 ns | 0.0140 ns |  2.628 ns |  2.673 ns |  0.96 |    0.00 |     - |     - |     - |         - |
|                     ObjectEquals |     ? | 13.016 ns | 0.0106 ns | 0.0088 ns | 13.005 ns | 13.034 ns |  4.69 |    0.01 |     - |     - |     - |         - |
|            ObjectReferenceEquals |     ? |  2.772 ns | 0.0130 ns | 0.0122 ns |  2.757 ns |  2.798 ns |  1.00 |    0.01 |     - |     - |     - |         - |
|                                  |       |           |           |           |           |           |       |         |       |       |       |           |
|                    **EqualOperator** |      **** |  **2.655 ns** | **0.0133 ns** | **0.0124 ns** |  **2.634 ns** |  **2.674 ns** |  **1.00** |    **0.00** |     **-** |     **-** |     **-** |         **-** |
|                PartternMatchNull |       |  2.668 ns | 0.0084 ns | 0.0075 ns |  2.655 ns |  2.683 ns |  1.01 |    0.00 |     - |     - |     - |         - |
|             PatternMatchNotNull7 |       |  2.714 ns | 0.0096 ns | 0.0080 ns |  2.706 ns |  2.735 ns |  1.02 |    0.00 |     - |     - |     - |         - |
| PatternMatchNotNull7WithVariable |       |  2.711 ns | 0.0117 ns | 0.0103 ns |  2.697 ns |  2.733 ns |  1.02 |    0.01 |     - |     - |     - |         - |
|             PatternMatchNotNull8 |       |  2.713 ns | 0.0150 ns | 0.0117 ns |  2.699 ns |  2.740 ns |  1.02 |    0.01 |     - |     - |     - |         - |
|             PatternMatchNotNull9 |       |  2.637 ns | 0.0149 ns | 0.0139 ns |  2.618 ns |  2.662 ns |  0.99 |    0.01 |     - |     - |     - |         - |
|                     ObjectEquals |       | 12.974 ns | 0.0208 ns | 0.0173 ns | 12.954 ns | 13.007 ns |  4.89 |    0.02 |     - |     - |     - |         - |
|            ObjectReferenceEquals |       |  2.783 ns | 0.0188 ns | 0.0176 ns |  2.761 ns |  2.811 ns |  1.05 |    0.01 |     - |     - |     - |         - |

### ValueNullBench
|                           Method | Value |       Mean |     Error |    StdDev |        Min |        Max |  Ratio | RatioSD |  Gen 0 | Gen 1 | Gen 2 | Allocated |
|--------------------------------- |------ |-----------:|----------:|----------:|-----------:|-----------:|-------:|--------:|-------:|------:|------:|----------:|
|                    **EqualOperator** |     **?** |   **3.803 ns** | **0.0099 ns** | **0.0093 ns** |   **3.793 ns** |   **3.822 ns** |   **1.00** |    **0.00** |      **-** |     **-** |     **-** |         **-** |
|                         HasValue |     ? |   3.746 ns | 0.0163 ns | 0.0145 ns |   3.731 ns |   3.779 ns |   0.99 |    0.00 |      - |     - |     - |         - |
|                PartternMatchNull |     ? |   3.800 ns | 0.0087 ns | 0.0077 ns |   3.792 ns |   3.817 ns |   1.00 |    0.00 |      - |     - |     - |         - |
|             PatternMatchNotNull7 |     ? | 141.815 ns | 0.4713 ns | 0.4408 ns | 141.131 ns | 142.598 ns |  37.29 |    0.13 |      - |     - |     - |         - |
| PatternMatchNotNull7WithVariable |     ? |   6.616 ns | 0.0447 ns | 0.0418 ns |   6.536 ns |   6.683 ns |   1.74 |    0.01 |      - |     - |     - |         - |
|             PatternMatchNotNull8 |     ? |   3.768 ns | 0.0054 ns | 0.0045 ns |   3.763 ns |   3.779 ns |   0.99 |    0.00 |      - |     - |     - |         - |
|             PatternMatchNotNull9 |     ? |   3.768 ns | 0.0029 ns | 0.0024 ns |   3.763 ns |   3.773 ns |   0.99 |    0.00 |      - |     - |     - |         - |
|                     ObjectEquals |     ? | 136.234 ns | 0.2238 ns | 0.1984 ns | 135.977 ns | 136.625 ns |  35.83 |    0.09 |      - |     - |     - |         - |
|                                  |       |            |           |           |            |            |        |         |        |       |       |           |
|                    **EqualOperator** |     **1** |   **3.742 ns** | **0.0061 ns** | **0.0054 ns** |   **3.732 ns** |   **3.752 ns** |   **1.00** |    **0.00** |      **-** |     **-** |     **-** |         **-** |
|                         HasValue |     1 |   3.796 ns | 0.0069 ns | 0.0058 ns |   3.788 ns |   3.809 ns |   1.01 |    0.00 |      - |     - |     - |         - |
|                PartternMatchNull |     1 |   3.807 ns | 0.0157 ns | 0.0139 ns |   3.791 ns |   3.843 ns |   1.02 |    0.00 |      - |     - |     - |         - |
|             PatternMatchNotNull7 |     1 | 314.719 ns | 0.7754 ns | 0.7253 ns | 313.541 ns | 315.742 ns |  84.08 |    0.18 | 0.0229 |     - |     - |     240 B |
| PatternMatchNotNull7WithVariable |     1 |   6.705 ns | 0.0360 ns | 0.0337 ns |   6.654 ns |   6.761 ns |   1.79 |    0.01 |      - |     - |     - |         - |
|             PatternMatchNotNull8 |     1 |   3.774 ns | 0.0063 ns | 0.0053 ns |   3.768 ns |   3.784 ns |   1.01 |    0.00 |      - |     - |     - |         - |
|             PatternMatchNotNull9 |     1 |   3.769 ns | 0.0129 ns | 0.0115 ns |   3.750 ns |   3.792 ns |   1.01 |    0.00 |      - |     - |     - |         - |
|                     ObjectEquals |     1 | 436.290 ns | 1.1269 ns | 1.0541 ns | 433.572 ns | 437.695 ns | 116.58 |    0.33 | 0.0229 |     - |     - |     240 B |

### ValueNotNullBench
|                           Method | Value |       Mean |     Error |    StdDev |        Min |        Max |  Ratio | RatioSD |  Gen 0 | Gen 1 | Gen 2 | Allocated |
|--------------------------------- |------ |-----------:|----------:|----------:|-----------:|-----------:|-------:|--------:|-------:|------:|------:|----------:|
|                    **EqualOperator** |     **?** |   **2.771 ns** | **0.0087 ns** | **0.0077 ns** |   **2.759 ns** |   **2.783 ns** |   **1.00** |    **0.00** |      **-** |     **-** |     **-** |         **-** |
|                         HasValue |     ? |   2.740 ns | 0.0110 ns | 0.0103 ns |   2.724 ns |   2.757 ns |   0.99 |    0.00 |      - |     - |     - |         - |
|                PartternMatchNull |     ? |   3.744 ns | 0.0122 ns | 0.0108 ns |   3.729 ns |   3.766 ns |   1.35 |    0.01 |      - |     - |     - |         - |
|             PatternMatchNotNull7 |     ? | 129.982 ns | 0.2863 ns | 0.2390 ns | 129.518 ns | 130.551 ns |  46.90 |    0.13 |      - |     - |     - |         - |
| PatternMatchNotNull7WithVariable |     ? |   6.611 ns | 0.0268 ns | 0.0224 ns |   6.571 ns |   6.660 ns |   2.39 |    0.01 |      - |     - |     - |         - |
|             PatternMatchNotNull8 |     ? |   2.776 ns | 0.0114 ns | 0.0107 ns |   2.760 ns |   2.794 ns |   1.00 |    0.01 |      - |     - |     - |         - |
|             PatternMatchNotNull9 |     ? |   2.776 ns | 0.0100 ns | 0.0093 ns |   2.761 ns |   2.792 ns |   1.00 |    0.00 |      - |     - |     - |         - |
|                     ObjectEquals |     ? | 135.991 ns | 0.5699 ns | 0.5331 ns | 135.337 ns | 137.192 ns |  49.09 |    0.24 |      - |     - |     - |         - |
|                                  |       |            |           |           |            |            |        |         |        |       |       |           |
|                    **EqualOperator** |     **1** |   **2.761 ns** | **0.0062 ns** | **0.0058 ns** |   **2.755 ns** |   **2.773 ns** |   **1.00** |    **0.00** |      **-** |     **-** |     **-** |         **-** |
|                         HasValue |     1 |   2.732 ns | 0.0075 ns | 0.0071 ns |   2.723 ns |   2.743 ns |   0.99 |    0.00 |      - |     - |     - |         - |
|                PartternMatchNull |     1 |   3.748 ns | 0.0059 ns | 0.0055 ns |   3.740 ns |   3.760 ns |   1.36 |    0.00 |      - |     - |     - |         - |
|             PatternMatchNotNull7 |     1 | 314.425 ns | 1.1728 ns | 1.0397 ns | 312.646 ns | 316.281 ns | 113.87 |    0.42 | 0.0229 |     - |     - |     240 B |
| PatternMatchNotNull7WithVariable |     1 |   6.732 ns | 0.0348 ns | 0.0325 ns |   6.694 ns |   6.792 ns |   2.44 |    0.01 |      - |     - |     - |         - |
|             PatternMatchNotNull8 |     1 |   2.767 ns | 0.0140 ns | 0.0117 ns |   2.749 ns |   2.787 ns |   1.00 |    0.01 |      - |     - |     - |         - |
|             PatternMatchNotNull9 |     1 |   2.768 ns | 0.0083 ns | 0.0078 ns |   2.758 ns |   2.781 ns |   1.00 |    0.00 |      - |     - |     - |         - |
|                     ObjectEquals |     1 | 343.078 ns | 2.8681 ns | 2.6829 ns | 334.005 ns | 345.407 ns | 124.25 |    0.98 | 0.0229 |     - |     - |     240 B |

## License
MIT License