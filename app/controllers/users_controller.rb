class UsersController < ApplicationController
  def search
    if params[:search].present?
      @time1 = Benchmark.realtime do
        @user1 = User.find_by username: params[:search]
      end
      @time2 = Benchmark.realtime do
        @user2 = User.find_by login: params[:search]
      end
    end
  end
end
