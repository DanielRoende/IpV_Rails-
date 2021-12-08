class UploadInformation < ApplicationRecord
  belongs_to :user

  def self.as_csv
    CSV.generate do |csv|
      csv <<  column_names
      all.each do |upload_information|
        csv << upload_information.attributes.values_at(*column_names)
      end
    end
  end
end
