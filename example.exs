defmodule MyCoolTheme.Example do
  @moduledoc "Example elixir file that doesn't run, just here for syntax

highlighting."

  alias MyCoolTheme.Example

  require Logger

  @max_size 50

  @using_sigil ~N[2015-01-13 13:00:07]

  @spec main([String.t()]) :: :ok | {:error, term()}
  def main(args) do
    IO.puts(args)
    IO.puts(@using_sigil)

    func = fn ->
      "string"
      |> do_work(false)
      |> case do
        "string" ->
          {:ok, 123 + 5 * 321.0 + @max_size}

        _ ->
          Example.main([1, 2, 3])
          {:error, :unimplemented}
      end
    end

    func.()
  end

  defp do_work(string, _dead_param) do
    bool = ((true and false) && true) or (false and not true)

    # This map does nothing!
    atom_map = %{
      id: 1,
      name: "atom typed",
      true: true,
      false: false,
      bool: bool,
      desc: "none",
      url: "http://google.com",
      author: "who knows"
    }

    Map.put(atom_map, :"atom with a space!", nil)

    Enum.map(atom_map, &IO.puts/1)
    result = Enum.each(atom_map, &{&1, &2})

    Logger.info("Here's that result!: '#{result}'")

    # Neither does this one!
    %{
      "id" => 1,
      "name" => "string typed",
      "key with a space" => nil,
      "true" => true,
      "false" => false
    }

    # Cool comment! Let's put in IO!
    IO.puts(string)
  end
end
