# frozen_string_literal: true

class RenameTypeToKind < ActiveRecord::Migration[6.0]
  def change
    rename_column :products, :type, :kind
  end
end
