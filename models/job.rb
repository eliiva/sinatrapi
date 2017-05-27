class Job < Sequel::Model
  many_to_one :company

  def to_api
    {
        id: id,
        name: name,
        company_id: company_id,
        place: place,
        # description: description,
    }
  end

end