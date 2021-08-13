module ApplicationHelper
  module ApplicationHelper
    def is_admin?
      current_user && current_user.admin
    end
  end
end
