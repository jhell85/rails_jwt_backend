class TestsController < ApplicationController
  skip_before_action :require_login

  def index
    test = Test.find_by(name: "test Name")
    render json: { test: test }
  end
end
