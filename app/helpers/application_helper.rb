module ApplicationHelper
  def select_country
    Country.all
  end

  def select_department
    Department.all
  end
end
