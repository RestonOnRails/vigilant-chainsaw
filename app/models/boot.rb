class Boot < ApplicationRecord
  def self.search_by_color(search_params)
    if search_params.present?
      where(color: search_params[:color])
    else
      all
    end
  end
end
