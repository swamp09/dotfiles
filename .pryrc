if defined?(PryByebug)
  Pry.commands.alias_command 'b', 'break'
  Pry.commands.alias_command 's', 'step'
  Pry.commands.alias_command 'n', 'next'
  Pry.commands.alias_command 'fin', 'finish'
  Pry.commands.alias_command 'fr', 'frame'
  Pry.commands.alias_command 'c', 'continue'
  Pry.commands.alias_command 'e', 'edit -c'
end

Pry.commands.alias_command 'bt', 'pry-backtrace'

# エンターで直前のコマンドを繰り返し実行できるようにする
Pry::Commands.command /^$/, "repeat last command" do
  _pry_.run_command Pry.history.to_a.last
end

Pry.config.color = true

Pry.config.prompt = proc do |obj, nest_level, _pry_|
version = ''
version << "Rails#{Rails.version}" if defined? Rails
version << "\001\e[0;31m\002"
version << "#{RUBY_VERSION}"
version << "\001\e[0m\002"

"#{version} #{Pry.config.prompt_name}(#{Pry.view_clip(obj)})> "
end
