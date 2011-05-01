# Read about factories at http://github.com/thoughtbot/factory_girl

Factory.define :order do |f|
  f.email "MyString"
  f.firstname "MyString"
  f.lastname "MyString"
  f.fathername "MyString"
  f.country "MyString"
  f.zipcode 1
  f.address "MyText"
  f.phone "MyString"
  f.articles nil
end