class Tagged < ActiveRecord::Base
  belongs_to :thing
  belongs_to :tag

  validate { puts "Tagged#validate changes: #{changes}" }

  validate do
    if persisted? and thing_id_changed?
      errors.add(:thing_id, "Cannot changed thing_id!")
    end
  end

  after_create do
    Rails.logger.info "Tagged#after_create changes: #{changes}"
    thing.update! an_attribute: rand.to_s
  end
end
