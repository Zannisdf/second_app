class PagesController < ApplicationController
  def landing
    @students = Student.all
  end

  def old
    @old_students = Student.where('age >= ?', 18)
  end

  def young
    @young_students = Student.where('age < ?', 18)
  end
end
