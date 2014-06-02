class Student < ActiveRecord::Base
	belongs_to :user
    validates_format_of :email,:with => /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/
    #validates_uniqueness_of :email
    def self.to_csv(all_students, options={})
        CSV.generate(options) do |csv|
            csv << column_names
            all_students.each do |student|
                csv << student.attributes.values_at(*column_names)
            end
        end
    end
end
