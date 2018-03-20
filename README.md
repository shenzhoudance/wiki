# 才华横溢 wiki 案例教学 9

```
cd workspace
rails new wiki
cd wiki
git init
git add .
git commit -m "initial commit"
```

```
git remote add origin https://github.com/shenzhoudance/wiki.git
git push -u origin master
rails server
```
![image](https://ws3.sinaimg.cn/large/006tNc79gy1fpi6knbafmj316e0z21kx.jpg)

```
git checkout -b Gemfile_gem
https://rubygems.org/
gem 'haml', '~> 5.0', '>= 5.0.4'
gem 'bootstrap-sass', '~> 3.3', '>= 3.3.7'
gem 'simple_form', '~> 3.5', '>= 3.5.1'
gem 'devise', '~> 4.4', '>= 4.4.3'
bundle install
---
git add .
git commit -m "Add Application Gems"
git push origin Gemfile_gem
```
![image](https://ws4.sinaimg.cn/large/006tNc79gy1fpi7gy2rdqj31kw0tj7ar.jpg)
![image](https://ws2.sinaimg.cn/large/006tNc79gy1fpi7gque14j318g0uq0xw.jpg)
![image](https://ws3.sinaimg.cn/large/006tNc79gy1fpi7gk0ws5j318u0wiq9m.jpg)
![image](https://ws4.sinaimg.cn/large/006tNc79gy1fpi7g1mdkij31980p0afh.jpg)

```
git checkout -b model_article
rails g model Article title:string content:text
rake db:migrate
---
git add .
git commit -m "Add model_article"
git push origin model_article
```
![image](https://ws4.sinaimg.cn/large/006tNc79gy1fpi7susbe0j31bq0eqad9.jpg)

```
git checkout -b controller_articles
rails g controller Articles
---
```
![image](https://ws1.sinaimg.cn/large/006tNc79gy1fpi7xc2ru2j31am0cstao.jpg)
```
config/routes.rb
---
Rails.application.routes.draw do
 resources :articles
 root 'articles#index'
end
---
rails server
```
![image](https://ws3.sinaimg.cn/large/006tNc79gy1fpi8mnyrutj31a80e0di3.jpg)
```
rails server
```
![image](https://ws3.sinaimg.cn/large/006tNc79gy1fpi8nhbtoij31bq0c6gmr.jpg)

```
app/controllers/articles_controller.rb
---
def index
end
---
app/views/articles/index.html.haml
---
%h1 欢迎来到才华横溢的世界
---
```
![image](https://ws2.sinaimg.cn/large/006tNc79gy1fpi8sx7hkgj314o0c4aaz.jpg)

```
git add .
git commit -m "add crud index"
git push origin controller_articles
```
```
---
rails generate simple_form:install --bootstrap
---
app/controllers/articles_controller.rb
---
class ArticlesController < ApplicationController
def index
end

def new
  @article = Article.new
end

def create
  @article = Article.new(artcle.params)
  if @article.save
    redirect_to @article
  else
    render 'new'
  end
end

private

def artcle_params
  params.require(:article).permit(:title, :content)
 end
end
---
app/views/articles/_form.html.haml
---
= simple_form_for @article do |f|
 f.input :title
 f.input :cintent
 f.submit
---
app/views/articles/new.html.haml
---
%h1 New Article

= render 'form'

= link_to 'back', root_path
---
rails server
```
![image](https://ws2.sinaimg.cn/large/006tNc79gy1fpia28ivjlj30v40cmjsa.jpg)
```
app/views/articles/_form.html.haml
---
= simple_form_for @article do |f|
 = f.input :title
 = f.input :content
 = f.submit
---
```
![image](https://ws4.sinaimg.cn/large/006tNc79gy1fpiahr40hgj30o60dgt9k.jpg)
![image](https://ws2.sinaimg.cn/large/006tNc79gy1fpian48qobj30za0eqta2.jpg)
![image](https://ws4.sinaimg.cn/large/006tNc79gy1fpiamht9srj319m0bmgms.jpg)

```
app/controllers/articles_controller.rb
---
class ArticlesController < ApplicationController
before_action :find_article, only:[:show]

def index
end

def show
end

def new
  @article = Article.new
end

def create
  @article = Article.new(article_params)
  if @article.save
    redirect_to @article
  else
    render 'new'
  end
end

private
def find_article
  @article = Article.find(params[:id])
end

def article_params
  params.require(:article).permit(:title, :content)
 end
end
---
app/views/articles/show.html.haml
---
%h1= @article.title
%p= @article.content

.btn-group
	= link_to "Back", root_path, class: "btn btn-default"
	= link_to "Edit", edit_article_path(@article), class: "btn btn-default"
	= link_to "Delete", article_path(@article), method: :delete, data: { confirm: "Are you sure?" }, class: "btn btn-default"
```
![image](https://ws1.sinaimg.cn/large/006tNc79gy1fpib4e22hfj30ty0cijsm.jpg)
```
app/controllers/articles_controller.rb
---
def index
  @articles = Article.all.order("created_at DESC")
end
---
app/views/articles/index.html.haml
---
%h1 欢迎来到才华横溢的世界

- @articles.each do |article|
	%h2= link_to article.title, article
	%p
		Published at
		= article.created_at.strftime('%b %d, %Y')

= link_to "New Article", new_article_path
---
```
![image](https://ws3.sinaimg.cn/large/006tNc79gy1fpiblku7pkj30w40iy40h.jpg)

---
```
git checkout -b devise
rails generate devise:install
rails g devise:views
rails g devise User
rake db:migrate
rails server
http://localhost:3000/users/sign_up
```
![image](https://ws4.sinaimg.cn/large/006tKfTcgy1fpig4nm4xhj30uu0gegmw.jpg)

```
git checkout -b devise2
rails c
User
User.connection
User.count
User.first
exit
---
git status
git add .
git commit -m "add devise and generate user model"
```
![image](https://ws1.sinaimg.cn/large/006tNc79gy1fpj19ltap8j31kw0ml132.jpg)
![image](https://ws2.sinaimg.cn/large/006tNc79gy1fpj194nonij31by0cmn1m.jpg)
