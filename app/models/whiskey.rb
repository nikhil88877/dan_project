class Whiskey < ApplicationRecord
  validates_presence_of :title
  validate do
    # uses meta-programming to dry up the code
    %i[taste color smokiness].each do |col|
      unless (1..10) === send(col)
        errors.add(col,' value is between 1 to 10')
      end
    end
  end
end
