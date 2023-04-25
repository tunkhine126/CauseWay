class CreateDonationAttributions < ActiveRecord::Migration[7.0]
  def change
    create_table :donation_attributions do |t|
      t.references :user, null: false, foreign_key: true
      t.references :organization, null: false, foreign_key: true
      t.decimal    :donation_total_in_dollars,   default: 0.0
      t.boolean    :is_anonymous,                default: false
      t.integer    :payment_method,              default: 0
      t.text       :comment
      t.string     :stripe_card_id
      t.timestamps
    end
  end
end
