class CreateRelationTypes < ActiveRecord::Migration[5.2]
  def self.up
    create_table :spree_relation_types do |t|
      t.string :name
      t.text :description
      t.string :applies_to
      t.timestamps
    end
  end

  def self.down
    drop_table :spree_relation_types
  end
end