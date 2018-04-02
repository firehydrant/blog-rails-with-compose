class JokesController < ApplicationController
  def index
    joke = Joke.order('RANDOM()').first

    render html: joke.body
  end
end
