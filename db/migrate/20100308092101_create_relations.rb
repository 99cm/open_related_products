class CreateRelations < ActiveRecord::Migration[5.2]
  def self.up
    create_table :spree_relations, force: true do |t|
      t.integer :position
      t.decimal :discount_amount, precision: 8, scale: 2, default: 0.0
      t.references :relation_type
      t.references :relatable, polymorphic: true
      t.references :related_to, polymorphic: true
      t.timestamps
    end
  end

  def self.down
    drop_table :spree_relations
  end
end