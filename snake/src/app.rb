require_relative "view/ruby2d.rb"
require_relative "model/state.rb"
require_relative "actions/actions.rb"


class App 
    def initialize
        @state = Model::initial_state
    end

    def start
        # puts "hello"
        @view = View::Ruby2dView.new(self)
        Thread.new {init_timer(@view)}
        @view.start(@state)
    end
    def init_timer(view)
        loop do
            @state = Actions::move_snake(@state)
            view.render(@state)
            sleep 0.5
            #trigger movement
        end
    end
    def send_action(action, params)
        # :change_direction, Model::Direction::UP (example of what is received as parameters)
        new_state = Actions.send(action, @state, params)
        if new_state.hash != @state.hash #on the example the instance var didnt use hash  confirm
            @state = new_state
            @view.render(@state)
        end
    end
end

app = App.new
app.start