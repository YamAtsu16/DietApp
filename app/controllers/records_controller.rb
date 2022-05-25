class RecordsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_beginning_of_week

  def index
  end

  private

  def set_beginning_of_week
    Date.beginning_of_week = :sunday
  end
end
