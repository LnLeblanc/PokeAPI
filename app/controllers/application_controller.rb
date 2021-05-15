class ApplicationController < ActionController::Base

  private

  def get_data_from_api(url)
    HTTParty.get(url)
  end

end
