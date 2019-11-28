use Bennu.Component.GridRow

defdesignimpl type: GridRow, design: Design.material() do
  use Phoenix.LiveComponent

  def evaluate(_, %Input{}, %RenderContext{}) do
    %Output{}
  end

  def render(assigns) do
    ~l"""
    .mdc-layout-grid__inner
      = for component(module: mod, assigns: a) <- @columns do
        = live_component @socket, mod, [{:socket, @socket} | a]
    """
  end

end
