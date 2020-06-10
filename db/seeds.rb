# Seed the grade system DB with some data.
instructors = [
    {
        :name => 'John', :lastname => 'Hennessy', :email => 'john.hennessy@gmail.com', :password => 'Pass123476'
    }
]

instructors.each do |instructor|
  Instructor.create!(instructor)
end

courses = [
    {
        :code => 'CS101', :name => 'Introduction to Programming', :semester => 'Fall 2019',
    :catalog_data => 'This course is the largest of the introductory programming courses and is one of the largest courses at Stanford. Topics focus on the introduction to the engineering of computer applications emphasizing modern software engineering principles: object-oriented design, decomposition, encapsulation, abstraction, and testing.'
    },
    {
        :code => 'CS107', :name => 'Computer Organization and Systems', :semester => 'Spring2020',
        :catalog_data => 'CS107 is the third course in \'s introductory programming sequence. The CS106 courses provide you with a solid foundation in programming methodology and abstractions, and CS107 follows on this to build up and expand your breadth and depth of programming experience and techniques. The course will work from the C programming language down to the microprocessor to de-mystify the machine.'
    },
    {
        :code => 'CS129', :name => 'Machine Learning (Applied)', :semester => 'Spring2020',
        :catalog_data => 'You will learn to implement and apply machine learning algorithms. This course emphasizes practical skills, and focuses on giving you skills to make these algorithms work. You will learn about commonly used learning techniques including supervised learning algorithms (logistic regression, linear regression, SVM, neural networks/deep learning), unsupervised learning algorithms (k-means), as well as learn about specific applications such as anomaly detection and building recommender systems.'
    },
    {
        :code => 'CS142', :name => 'Web Applications', :semester => 'Fall 2019',
        :catalog_data => 'This class will introduce you to the Web technologies and give you experience creating Web applications. In the process you will learn about markup languages, scripting languages, network protocols, interactive graphics, event-driven programming, and databases, and see how they all work together to deliver exciting applications.'
    },
    {
        :code => 'CS221', :name => 'Artificial Intelligence: Principles & Techniques', :semester => 'Fall 2019',
        :catalog_data => 'What do web search, speech recognition, face recognition, machine translation, autonomous driving, and automatic scheduling have in common? These are all complex real-world problems, and the goal of artificial intelligence (AI) is to tackle these with rigorous mathematical tools. In this course, you will learn the foundational principles that drive these applications and practice implementing some of these systems.'
    },
    {
        :code => 'CS356', :name => 'Topics in Computer and Network Security', :semester => 'Spring2020',
        :catalog_data => 'CS 356 is graduate course that covers foundational work and current topics in computer and network security. The course consists of reading and discussing published research papers, presenting recent security work, and completing an original research project.'
    },
    {
        :code => 'CS504', :name => 'Data Structures', :semester => 'Fall 2019',
        :catalog_data => 'In this course, you will learn how to apply basic algorithmic techniques such as greedy algorithms, binary search, sorting, and dynamic programming to solve programming challenges.'
    }
]

courses.each do |course|
  Course.create!(course)
end

students = [
    {
        :name => 'Xhentilo', :lastname => 'Karaj', :email => 'xhentilokaraj@gmail.com', :password => 'Ts423sdfwer32df'
    },
    {
        :name => 'John', :lastname => 'Doe', :email => 'john@doe.com', :password => 'Test1276gfhr'
    },
    {
        :name => 'Jonathan', :lastname => 'Levin', :email => 'jonathan@levin.com', :password => 'TEST5asdf234asdf32d'
    }
]

students.each do |student|
  Student.create!(student)
end