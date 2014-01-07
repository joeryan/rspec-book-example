# class to provide a way to check pseudo console IO for proper messages
class Output
  def messages
    @messages ||= []
  end

  def puts(message)
    messages << message
  end
end

def output
    @output ||= Output.new
end

Given /^I am not yet playing$/ do
end

Given(/^the secret code is r g y c$/) do
  game = Codebreaker::Game.new(output)
  game.start("r g y c")
end

When /^I start a new game$/ do
  game = Codebreaker::Game.new(output)
  game.start
end

Then /^I should see "([^\"]*)"$/ do |message|
  output.messages.should include(message)
end


