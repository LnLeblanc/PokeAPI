class Type < ApplicationRecord

  def shape(data)
    {
      "id"=> data["id"],
      "name"=> data["name"],
      "pokemon"=> data["pokemon"]
    }
  end

end
