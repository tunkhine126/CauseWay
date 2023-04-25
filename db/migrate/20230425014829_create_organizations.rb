class CreateOrganizations < ActiveRecord::Migration[7.0]
  def change
    create_table :organizations do |t|
      t.string :name
      t.string  :ein
      t.string  :website_url
      t.string  :slug
      t.string  :subdomain
      t.string  :custom_domain
      t.bigint  :visit_id
      t.string  :uuid
      t.timestamps
    end
  end
end
