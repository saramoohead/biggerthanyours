class AddAttachmentToBooks < ActiveRecord::Migration
  def change
    add_attachment :books, :cover
  end
end
