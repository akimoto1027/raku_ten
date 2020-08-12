module UsersHelper
  def set_date
      date = current_user.posts.date
      date.strftime("%Y年%m月%d日")
  end
end
