class Stuff < ActiveRecord::Base
  belongs_to :thing

  validate { puts "Stuff#validate" }

  after_create do
    Rails.logger.info "Stuff#after_create changes: #{changes}"
    thing.update an_attribute: rand.to_s
  end
end
