class ApplicationRecord < ActiveRecord::Base
  # primary_abstract_class
  self.abstract_class = true
end

class Student < ApplicationRecord
  # business logic like validation
end