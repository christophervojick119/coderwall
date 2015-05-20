# == Schema Information
#
# Table name: comments
#
#  id                :integer          not null, primary key
#  title             :string(50)       default("")
#  comment           :text             default("")
#  commentable_id    :integer
#  commentable_type  :string(255)
#  user_id           :integer
#  likes_cache       :integer          default(0)
#  likes_value_cache :integer          default(0)
#  created_at        :datetime
#  updated_at        :datetime
#  likes_count       :integer          default(0)
#  user_name         :string(255)
#  user_email        :string(255)
#  user_agent        :string(255)
#  user_ip           :inet
#  request_format    :string(255)
#

Fabricator(:comment) do
  body { 'Lorem Ipsum is simply dummy text...' }
  commentable { Fabricate.build(:protip) }
  user { Fabricate.build(:user) }
end
