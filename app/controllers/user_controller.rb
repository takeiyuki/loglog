class UserController < ApplicationController
  def signup
      user = User.new
      user.create('y.takei@nutex.jp', 'S0yukimc')
      @msg = 'Create Done!';
  end
end
