defmodule OpenTelemetryAPIExperimental.ObservableUpDownCounter do
  @moduledoc """

  """

  defmacro create(name, callback, callback_args, opts) do
    quote bind_quoted: [
            name: name,
            callback: callback,
            callback_args: callback_args,
            opts: opts
          ] do
      :otel_meter.create_observable_updowncounter(
        :opentelemetry_experimental.get_meter(__MODULE__),
        name,
        callback,
        callback_args,
        opts
      )
    end
  end
end
