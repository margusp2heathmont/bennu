use Bennu.Component.Grid

defdesignimpl type: Grid, design: Design.material() do
  use Phoenix.LiveComponent

  def evaluate(_, %Input{}, %RenderContext{}) do
    %Output{}
  end

  def render(assigns) do
    ~l"""
    .mdc-layout-grid
      = for component(module: mod, assigns: a) <- @rows do
        = live_component @socket, mod, [{:socket, @socket} | a]
    """
  end

end
