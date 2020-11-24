using NullCheck.Console;
using static System.Console;

WriteLine("---Reference---");

string? reference = "";
WriteLine("-----NullCondition NotNull-----");
NullCondition.Reference.EqualOperator(reference);
NullCondition.Reference.PatternMatch(reference);
NullCondition.Reference.ObjectEquals(reference);
NullCondition.Reference.ObjectReferenceEquals(reference);
NullCondition.Reference.EqualityComparer(reference);

WriteLine("-----NotNullCondition NotNull-----");
NotNullCondition.Reference.NotEqualOperator(reference);
NotNullCondition.Reference.PatternMatch7(reference);
NotNullCondition.Reference.PatternMatch8(reference);
NotNullCondition.Reference.PatternMatch9(reference);

WriteLine();

reference = null;
WriteLine("-----NullCondition Null------");
NullCondition.Reference.EqualOperator(reference);
NullCondition.Reference.PatternMatch(reference);
NullCondition.Reference.ObjectEquals(reference);
NullCondition.Reference.ObjectReferenceEquals(reference);
NullCondition.Reference.EqualityComparer(reference);

WriteLine("-----NotNullCondition Null-----");
NotNullCondition.Reference.NotEqualOperator(reference);
NotNullCondition.Reference.PatternMatch7(reference);
NotNullCondition.Reference.PatternMatch8(reference);
NotNullCondition.Reference.PatternMatch9(reference);

WriteLine();
WriteLine();
WriteLine("---Value---");

int? value = 0;
WriteLine("-----NullCondition NotNull-----");
NullCondition.Value.EqualOperator(value);
NullCondition.Value.PatternMatch(value);
NullCondition.Value.ObjectEquals(value);
NullCondition.Value.EqualityComparer(value);

WriteLine("-----NotNullCondition NotNull");
NotNullCondition.Value.NotEqualOperator(value);
NotNullCondition.Value.HasValue(value);
NotNullCondition.Value.PatternMatch7(value);
NotNullCondition.Value.PatternMatch8(value);
NotNullCondition.Value.PatternMatch9(value);

WriteLine();

value = null;
WriteLine("-----NullCondition Null-----");
NullCondition.Value.EqualOperator(value);
NullCondition.Value.PatternMatch(value);
NullCondition.Value.ObjectEquals(value);
NullCondition.Value.EqualityComparer(value);

WriteLine("-----NotNullCondition Null");
NotNullCondition.Value.NotEqualOperator(value);
NotNullCondition.Value.HasValue(value);
NotNullCondition.Value.PatternMatch7(value);
NotNullCondition.Value.PatternMatch8(value);
NotNullCondition.Value.PatternMatch9(value);
