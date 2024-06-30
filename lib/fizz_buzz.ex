defmodule FizzBuzz do

  def build(file_name) do
    file_name
    |> File.read()
    |> handle_file_read()
  end

    def handle_file_read({:ok, result}) do
      result
      |> String.split(",")
      |> Enum.map(& String.to_integer/1)
    end
    def handle_file_read({:error, reason}), do: "Error reading the file: #{reason}"

    #case File.read(file_name) do
    #  {:ok, result} -> result
    #  {:error, reason} -> reason
    # end

end
