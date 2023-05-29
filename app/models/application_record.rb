class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class
end

#rails generate model booking start_date:date end_date:date confirmed:boolean user:references island:references
#rails generate model island name description location price:float user:references
