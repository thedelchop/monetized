if Code.ensure_loaded?(Phoenix.HTML) do
  defimpl Phoenix.HTML.Safe, for: Monetized.Money do
    def to_iodata(money) do
       Phoenix.HTML.Safe.to_iodata(Monetized.Money.to_string(money))
    end
  end
end

