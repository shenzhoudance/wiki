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
