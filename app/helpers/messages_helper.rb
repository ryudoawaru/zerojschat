module MessagesHelper
  def display_time(time)
    return unless time

    if time.to_date == Date.current
      "今天 #{time.strftime('%H:%M')}"
    elsif time.to_date == Date.yesterday
      "昨天 #{time.strftime('%H:%M')}"
    else
      time.strftime('%Y年%m月%d日 %H:%M')
    end
  end
end
