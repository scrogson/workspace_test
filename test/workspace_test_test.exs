defmodule WorkspaceTestTest do
  use ExUnit.Case
  doctest WorkspaceTest

  test "greets the world" do
    assert WorkspaceTest.hello() == :world
  end
end
