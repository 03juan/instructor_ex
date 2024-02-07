defmodule Instructor.Adapters.OpenAI do
  @moduledoc """
  Documentation for `Instructor.Adapters.OpenAI`.
  """
  @behaviour Instructor.Adapter

  @impl true
  def chat_completion(params, config \\ %OpenAI.Config{}) do
    # Peel off instructor only parameters
    params = Keyword.drop(params, [:response_model, :validation_context, :max_retries, :mode])

    OpenAI.chat_completion(params, config)
  end
end
