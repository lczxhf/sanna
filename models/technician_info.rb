class TechnicianInfo
  include Mongoid::Document
  include Mongoid::Timestamps # adds created_at and updated_at fields
belongs_to :technician
  # field <name>, :type => <type>, :default => <value>
  field :birthday, :type => Date
    field :nativeplace, :type => String
      field :style, :type => String
        field :classes, :type => String
          field :serverstyle, :type => Array
          field :imgurl,:type=>String

  # You can define indexes on documents using the index macro:
  # index :field <, :unique => true>

  # You can create a composite key in mongoid to replace the default id using the key macro:
  # key :field <, :another_field, :one_more ....>
end
