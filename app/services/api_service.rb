class ApiService
  def self.call(url)
    HTTParty.get(url)
  end
end