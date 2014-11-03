class StudentsController < ApplicationController
  before_filter :authenticate_user!

end
