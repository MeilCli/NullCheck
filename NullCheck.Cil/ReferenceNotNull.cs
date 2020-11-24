using System.Collections.Generic;

namespace NullCheck.Cil
{
    public class ReferenceNotNull
    {
        public bool EqualOperator(string? value)
        {
            return value != null;
        }

        public bool PartternMatchNull(string? value)
        {
            return !(value is null);
        }

        public bool PatternMatchNotNull7(string? value)
        {
            return value is string;
        }

        public bool PatternMatchNotNull7WithVariable(string? value)
        {
            return value is string notNullValue;
        }

        public bool PatternMatchNotNull8(string? value)
        {
            return value is { };
        }

        public bool PatternMatchNotNull9(string? value)
        {
            return value is not null;
        }

        public bool ObjectEquals(string? value)
        {
            return !(object.Equals(value, null));
        }

        public bool ObjectReferenceEquals(string? value)
        {
            return !(object.ReferenceEquals(value, null));
        }

        public bool EqualityComparer(string? value)
        {
            return !(EqualityComparer<string?>.Default.Equals(value, null));
        }
    }
}
