class Whiskey < ApplicationRecord
  validates_presence_of :title
  validates_uniqueness_of :title
  validate do
    # uses meta-programming to dry up the code
    %i[taste color smokiness].each do |col|
      unless (1..5) === send(col)
        errors.add(col,' value is between 1 to 10')
      end
    end
  end

  def self.search(params)
    query=[]
    query[0] = "title = #{params[:title]}" if params[:title].present?
    query[1] = "description like '%#{params[:description]}%'" if params[:description].present?
    query[2] = "taste >= #{params[:taste]}" if params[:taste].present?
    query[3] = "color >= #{params[:color]}" if params[:color] .present?
    query[4] = "smokiness >= #{params[:smokiness]}" if params[:smokiness].present?
    query = query.compact.join(' and ')
    where(query)
  end
end
