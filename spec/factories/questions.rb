# Read about factories at http://github.com/thoughtbot/factory_girl

Factory.define :question do |f|
  f.name "MyString"
  f.email "MyString"
  f.content "MyText"
  f.answer "MyText"
  f.visible false
end