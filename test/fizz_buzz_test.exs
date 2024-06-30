defmodule FizzBuzzTest do
  use ExUnit.Case

  describe "build/1" do
    test "when a valid file is provided, returns the converted list" do
      expeted_response =
        {:ok, [1, 2, :fizz, 4, :buzz, :fizz, 7, 8, :fizz, :buzz, :fizzbuzz, :buzz]}

      assert FizzBuzz.build("numbers.txt") == expeted_response
    end

    test "when a invalid file is provided, returns an error" do
      expeted_response = {:error, "Error reading the file: enoent"}
      assert FizzBuzz.build("*.txt") == expeted_response
    end
  end
end
