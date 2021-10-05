require_relative '../../app/consumers/message_handler'
Phobos.configure('config/phobos.yml')
executor = Phobos::Executor.new
executor.start