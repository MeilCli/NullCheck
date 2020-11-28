using System.Collections.Generic;

namespace NullCheck.Cil
{
    public class ValueNotNull
    {
        public bool EqualOperator(int? value)
        {
            return value != null;
        }

        public bool HasValue(int? value)
        {
            return value.HasValue;
        }

        public bool IsOperator(int? value)
        {
            return value is int;
        }

        public bool PatternMatchNull(int? value)
        {
            return !(value is null);
        }

        public bool PatternMatchNotNull7(int? value)
        {
            return value is int notNullValue;
        }

        public bool PatternMatchNotNull8(int? value)
        {
            return value is { };
        }

        public bool PatternMatchNotNull9(int? value)
        {
            return value is not null;
        }

        public bool ObjectEquals(int? value)
        {
            return !(object.Equals(value, null));
        }

        public bool EqualityComparer(int? value)
        {
            return !(EqualityComparer<int?>.Default.Equals(value, null));
        }
    }
}
