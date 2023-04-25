class CreateDonations < ActiveRecord::Migration[7.0]
  def change
    create_table :donations do |t|
      t.decimal :amount
      t.references :user, null: false, foreign_key: true
      t.references :organization, null: false, foreign_key: true
      t.references :donation_attribution, foreign_key: true
      t.string     :reference_id
      t.string     :uuid
      t.string     :slug
      t.timestamps
    end
  end
end
