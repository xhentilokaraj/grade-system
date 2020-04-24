# Seed the RottenPotatoes DB with some movies.
instructors = [
    {:name => 'John', :lastname => 'Hennessy', :email => 'john.hennessy@gmail.com', :password => '12345678'}
]

instructors.each do |instructor|
  Instructor.create!(instructor)
end

courses = [
    {:code => 'CS103', :name => 'Mathematical Foundations of Computing', :semester => 'Winter 2019',
    :catalog_data => 'Are there “laws of physics” in computing? Are there fundamental restrictions to what computers can and cannot
do? If so, what do these restrictions look like? What would make one problem intrinsically harder to solve than
another? And what would such restrictions mean for our ability to computationally solve meaningful problems?
In CS103, we\'ll explore the answers to these important questions. '}
]

courses.each do |course|
  Course.create!(course)
end