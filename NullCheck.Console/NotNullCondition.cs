using static System.Console;

namespace NullCheck.Console
{
    public static class NotNullCondition
    {
        public static class Reference
        {
            public static void NotEqualOperator(string? value)
            {
                if (value != null)
                {
                    WriteLine("Reference.NotEqualOperator value is not null");
                }
                else
                {
                    WriteLine("Reference.NotEqualOperator value is null");
                }
            }

            public static void IsOperator(string? value)
            {
                if (value is string)
                {
                    WriteLine("Reference.IsOperator value is not null");
                }
                else
                {
                    WriteLine("Reference.IsOpertor value is null");
                }
            }

            public static void PatternMatch7(string? value)
            {
                if (value is string nonNullValue)
                {
                    WriteLine("Reference.PatternMatch7 value is not null");
                }
                else
                {
                    WriteLine("Reference.PatternMatch7 value is null");
                }
            }

            public static void PatternMatch8(string? value)
            {
                if (value is { })
                {
                    WriteLine("Reference.PatternMatch8 value is not null");
                }
                else
                {
                    WriteLine("Reference.PatternMatch8 value is null");
                }
            }

            public static void PatternMatch9(string? value)
            {
                if (value is not null)
                {
                    WriteLine("Reference.PatternMatch9 value is not null");
                }
                else
                {
                    WriteLine("Reference.PatternMatch9 value is null");
                }
            }
        }

        public static class Value
        {
            public static void NotEqualOperator(int? value)
            {
                if (value != null)
                {
                    WriteLine("Value.NotEqualOperator value is not null");
                }
                else
                {
                    WriteLine("Value.NotEqualOperator value is null");
                }
            }

            public static void HasValue(int? value)
            {
                if (value.HasValue)
                {
                    WriteLine("Value.HasValue value is not null");
                }
                else
                {
                    WriteLine("Value.HasValue value is null");
                }
            }

            public static void IsOperator(int? value)
            {
                if (value is int)
                {
                    WriteLine("Value.IsOperator value is not null");
                }
                else
                {
                    WriteLine("Value.IsOperator value is null");
                }
            }

            public static void PatternMatch7(int? value)
            {
                if (value is int nonNullValue)
                {
                    WriteLine("Value.PatternMatch7 value is not null");
                }
                else
                {
                    WriteLine("Value.PatternMatch7 value is null");
                }
            }

            public static void PatternMatch8(int? value)
            {
                if (value is { })
                {
                    WriteLine("Value.PatternMatch8 value is not null");
                }
                else
                {
                    WriteLine("Value.PatternMatch8 value is null");
                }
            }

            public static void PatternMatch9(int? value)
            {
                if (value is not null)
                {
                    WriteLine("Value.PatternMatch9 value is not null");
                }
                else
                {
                    WriteLine("Value.PatternMatch9 value is null");
                }
            }
        }
    }
}
