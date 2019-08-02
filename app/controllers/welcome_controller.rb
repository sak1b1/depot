class WelcomeController < ApplicationController
  def index
    Rails.logger.info "\n---- PARAMS CHECKING(welcome): #{params.inspect} ----\n"
  end
end
