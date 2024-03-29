class ActsAsFollowerMigration < ActiveRecord::Migration[7.0]
  def self.up
    create_table :follows, force: true do |t|
      #polymorphic allows to do anything in the app
      t.references :followable, polymorphic: true, null: false
      t.references :follower,   polymorphic: true, null: false
      t.boolean :blocked, default: false, null: false
      t.timestamps
    end

    add_index :follows, ["follower_id", "follower_type"],     name: "fk_follows"
    add_index :follows, ["followable_id", "followable_type"], name: "fk_followables"
  end

  def self.down
    drop_table :follows
  end
end
