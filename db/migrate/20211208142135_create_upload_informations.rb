class CreateUploadInformations < ActiveRecord::Migration[6.1]
  def change
    create_table :upload_informations do |t|
      t.string :fornavn
      t.string :efternavn
      t.string :postnummer
      t.string :addresse
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
