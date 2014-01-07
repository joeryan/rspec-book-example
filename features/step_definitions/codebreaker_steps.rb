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

When /^I start a new game$/ do
  game = Codebreaker::Game.new(output)
  game.start("rybc")
end

Then /^I should see "([^"]*)"$/ do |message|
  output.messages.should include(message)
end

Given(/^the secret code is "([^"]*)"$/) do |code|
  @game = Codebreaker::Game.new(output)
  @game.start(code)
end

When /^I guess "([^"]*)"$/ do |guess|
  @game.guess(guess)
end

Then /^the mark should be "([^"]*)"$/ do |mark|
  output.messages.should include(mark)
end
