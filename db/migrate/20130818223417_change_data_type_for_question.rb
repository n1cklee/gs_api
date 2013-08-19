class ChangeDataTypeForQuestion < ActiveRecord::Migration
  def self.up
    change_table :items do |t|
      t.change :question, :text, :limit => nil
    end
  end
  def self.down
    change_table :items do |t|
      t.change :question, :string
    end
  end
end
