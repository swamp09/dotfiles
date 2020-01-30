Pry.commands.alias_command 'bt', 'pry-backtrace'

# エンターで直前のコマンドを繰り返し実行できるようにする
Pry::Commands.command /^$/, "repeat last command" do
  _pry_.run_command Pry.history.to_a.last
end

Pry.config.color = true
