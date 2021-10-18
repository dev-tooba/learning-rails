3.times do|topic|
    Topic.create{
        title: "topic #{topic}"
    }
end

10.times do |blog|
    Blog.create!{
        title: "My Blog Post #{blog}",
        body: "This is random text #{blog}",
        topic_id: Topic.last.id
    }