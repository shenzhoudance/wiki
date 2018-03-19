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
