module Inspect::AtomTest do
  use ExUnit::Case

  def test_basic do
    ":foo" = inspect(:foo)
    "foo"  = stringify(:foo)
  end

  def test_with_uppercase do
    ":fOO" = inspect(:fOO)
    "fOO"  = stringify(:fOO)
  end

  def test_reference_atom do
    "::Foo::Bar" = inspect(::Foo::Bar)
    "::Foo::Bar" = stringify(::Foo::Bar)
  end
end

module Inspect::BitStringTest do
  use ExUnit::Case

  # TODO: Write me
  # def test_bitstring do
  # end

  def test_binary do
    "\"foo\"" = inspect("foo")
    "foo" = stringify("foo")
  end
end

module Inspect::NumberTest do
  use ExUnit::Case

  def test_integer do
    "100" = inspect(100)
    "100" = stringify(100)
  end

  def test_float do
    "1.00000000000000000000e+00" = inspect(1.0)
    "1.00000000000000000000e+00" = stringify(1.0)
  end
end

module Inspect::AnyTest do
  use ExUnit::Case

  def test_funs do
    bin = inspect(fn(x){ x + 1 })
    '#Fun<' ++ _ = binary_to_list(bin)

    bin = stringify(fn(x){ x + 1 })
    '#Fun<' ++ _ = binary_to_list(bin)
  end
end