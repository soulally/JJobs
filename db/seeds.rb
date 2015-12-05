# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

categories = [{en:'javascript', ko:'자바스크립트'},{en:'java', ko:'자바'},{en:'ruby',ko:'루비'},{en:'config', ko:'환경'}]

categories.each do |category|
  0.upto(2) do |i|
    p = Post.new
    p.user_id = i + 1
    p.category = category[:en]
    p.title = "#{category[:ko]} #{i} 이름"
    p.content = "#{category[:ko]} #{i} 설명"
    p.save!
		p.reload.id
  end
end
