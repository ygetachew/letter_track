class Letter < ActiveRecord::Base
  attr_accessible :from, :issue_date, :reference_no, :to, :your_reference_no
end
