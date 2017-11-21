todos_data = [
  {:item=>"Go to dentist", :completed=>false},
  {:item=>"Bake a cake", :completed=>false}
]

Todo.destroy_all

Todo.create(todos_data)

Todo.all.each do |i|
  puts i.item
end
