class ProfilesController < ApplicationController
  before_action :get_profile
  before_action :update_visit_count, only: [:home]
  def home
  end

  def resume
  end

  def projects
  end

  def contact
  end

  private

  def get_profile
    @profile = User.first.profile
  end

  def update_visit_count
    profile = User.first.profile
    profile.update!(visits: (profile.visits.to_i + 1))
  end
end
