require "side_to_capybara/version"
require 'side_to_capybara/base'
require 'side_to_capybara/minitest'

module SideToCapybara

  def self.to_minitest(name, commands)
    test_commands = commands.map do |command|
      Minitest.new(command).translate
    end

    <<~EOS
      test '#{name}' do
      #{test_commands.map {|x| "  #{x.gsub(/\n/, "\n  ")}"}.join("\n\n")}
      end
    EOS
  end

end
