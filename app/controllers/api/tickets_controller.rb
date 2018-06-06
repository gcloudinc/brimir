class Api::TicketsController < ActionController::Base

  def unread_count
    user = User.find_by(email: params[:email])
    render plain: "0" and return if user.blank?
    render plain: user.unread_tickets.count
  end
end
