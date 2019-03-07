defmodule WorkspaceTest do
  use Rustler, otp_app: :workspace_test

  def add(_, _), do: :error
end
