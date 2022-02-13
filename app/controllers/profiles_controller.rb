class ProfilesController < ApplicationController
  def show
    @profile = User.first.profile
  end
end
