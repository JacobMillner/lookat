class WelcomeController < ApplicationController
  def index
    @moron = Moron.last
  end
end
