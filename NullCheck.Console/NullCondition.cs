using static System.Console;

namespace NullCheck.Console
{
    public static class NullCondition
    {
        public static class Reference
        {
            public static void EqualOperator(string? value)
            {
                if (value == null)
                {
                    WriteLine("Reference.EqualOperator value is null");
                }
                else
                {
                    WriteLine("Reference.EqualOperator value is not null");
                }
            }

            public static void PatternMatch(string? value)
            {
                if (value is null)
                {
                    WriteLine("Reference.PatternMatch value is null");
                }
                else
                {
                    WriteLine("Reference.PatternMatch value is not null");
                }
            }

            public static void ObjectEquals(string? value)
            {
                if (object.Equals(value, null))
                {
                    WriteLine("Reference.ObjectEquals value is null");
                }
                else
                {
                    WriteLine("Reference.ObjectEquals value is not null");
                }
            }

            public static void ObjectReferenceEquals(string? value)
            {
                if (object.ReferenceEquals(value, null))
                {
                    WriteLine("Reference.ObjectReferenceEquals value is null");
                }
                else
                {
                    WriteLine("Reference.ObjectReferenceEquals value is not null");
                }
            }
        }

        public static class Value
        {
            public static void EqualOperator(int? value)
            {
                if (value == null)
                {
                    WriteLine("Value.EqualOperator value is null");
                }
                else
                {
                    WriteLine("Value.EqualOperator value is not null");
                }
            }

            public static void PatternMatch(int? value)
            {
                if (value is null)
                {
                    WriteLine("Value.PatternMatch value is null");
                }
                else
                {
                    WriteLine("Value.PatternMatch value is not null");
                }
            }

            public static void ObjectEquals(int? value)
            {
                if (object.Equals(value, null))
                {
                    WriteLine("Value.ObjectEquals value is null");
                }
                else
                {
                    WriteLine("Value.ObjectEquals value is not null");
                }
            }
        }
    }
}
