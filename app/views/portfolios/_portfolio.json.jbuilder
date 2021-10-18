json.extract! portfolio, :id, :title, :subtitle, :body, :image, :created_at, :updated_at
json.url portfolio_url(portfolio, format: :json)
