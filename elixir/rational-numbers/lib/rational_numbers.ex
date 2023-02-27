defmodule RationalNumbers do
  @type rational :: {integer, integer}

  @doc """
  Add two rational numbers
  """
  @spec add(a :: rational, b :: rational) :: rational
  def add({nomA, denomA}, {nomB, denomB}), do: {nomA * denomB + nomB * denomA, denomA * denomB}

  @doc """
  Subtract two rational numbers
  """
  @spec subtract(a :: rational, b :: rational) :: rational
  def subtract({nomA, denomA}, {nomB, denomB}),
    do: {nomA * denomB - nomB * denomA, denomA * denomB}

  @doc """
  Multiply two rational numbers
  """
  @spec multiply(a :: rational, b :: rational) :: rational
  def multiply({nomA, denomA}, {nomB, denomB}),
    do: {nomA * nomB, denomA * denomB}

  @doc """
  Divide two rational numbers
  """
  @spec divide_by(num :: rational, den :: rational) :: rational
  def divide_by({nomA, denomA}, {nomB, denomB}), do: {nomA * denomB, nomB * denomA}

  @doc """
  Absolute value of a rational number
  """
  @spec abs(a :: rational) :: rational
  def abs({nom, denom}), do: {Kernel.abs(nom), Kernel.abs(denom)}

  @doc """
  Exponentiation of a rational number by an integer
  """
  @spec pow_rational(a :: rational, n :: integer) :: rational
  def pow_rational({nom, denom}, n) when n > 0, do: {Integer.pow(nom, n), Integer.pow(denom, n)}

  def pow_rational({nom, denom}, n) when n < 0,
    do: {Integer.pow(denom, Kernel.abs(n)), Integer.pow(nom, Kernel.abs(n))}

  def pow_rational(_, n) when n == 0, do: {1, 1}

  @doc """
  Exponentiation of a real number by a rational number
  """
  @spec pow_real(x :: integer, n :: rational) :: float
  def pow_real(x, {nom, denom}), do: Integer.pow(x, nom / denom)

  @doc """
  Reduce a rational number to its lowest terms
  """
  @spec reduce(a :: rational) :: rational
  def reduce(a) do
  end
end
