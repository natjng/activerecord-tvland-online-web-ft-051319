class Actor < ActiveRecord::Base
    has_many :characters
    has_many :shows, through: :characters

    def full_name
        first_name + " " + last_name
    end

    def list_roles
        "#{self.characters.first.name} - #{self.characters.first.show.name}"
    end
end