3.times do|topic|
    Topic.create!(
        title: "topic #{topic}"
    )
end

10.times do |blog|
    Blog.create!(
        title: "My Blog Post #{blog}",
        body: "This is random text #{blog}",
        topic_id: Topic.last.id
    )
end

8.times do |portfolio_item|
    Portfolio.create!(
        title: "This is Portfolio",
        subtitle: "This is Subtitle for Portfolio",
        body: "I am art",
        image: "http://placehold.it/600x400"   
    )
end