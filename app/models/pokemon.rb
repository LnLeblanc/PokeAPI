class Pokemon < ApplicationRecord

  def shape(data)
    {
      "id"=> data["id"],
      "name"=> data["name"],
      "order"=> data["order"],
      "base_experience"=> data["base_experience"],
      "weight"=> data["weight"],
      "height"=> data["height"],
      "types"=> data["types"]
    }
  end

end
