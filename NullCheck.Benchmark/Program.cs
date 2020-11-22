using BenchmarkDotNet.Running;

namespace NullCheck.Benchmark
{
    public class Program
    {
        public static void Main(string[] args) => BenchmarkSwitcher.FromAssembly(typeof(Program).Assembly).Run(args);
    }
}
