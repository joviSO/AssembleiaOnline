# == Schema Information
#
# Table name: topics
#
#  id          :bigint           not null, primary key
#  description :text
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  assembly_id :bigint           not null
#
# Indexes
#
#  index_topics_on_assembly_id  (assembly_id)
#
# Foreign Keys
#
#  fk_rails_...  (assembly_id => assemblies.id)
#
class Topic < ApplicationRecord
  belongs_to :assembly

  has_many :options
end
