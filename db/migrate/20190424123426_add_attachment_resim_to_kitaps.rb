class AddAttachmentResimToKitaps < ActiveRecord::Migration[5.2]
  def self.up
    change_table :kitaps do |t|
      t.attachment :resim
    end
  end

  def self.down
    remove_attachment :kitaps, :resim
  end
end
