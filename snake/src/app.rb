require_relative "view/ruby2d.rb"
require_relative "model/state.rb"

view = View::Ruby2dView.new

initial_state = Model::initial_state
view.render(initial_state)