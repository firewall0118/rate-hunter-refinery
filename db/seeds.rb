# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Added by Refinery CMS Pages extension
Refinery::Pages::Engine.load_seed

home_page = Refinery::Page.find_by_slug('home')
if home_page
  ['Who We Are Contents', 'Send Us Application', 'University Students'].each_with_index do |part, index|
    home_page.parts.create({
      title: part,
      body: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut pretium pretium tempor. Ut egget imperdiet neque.
            In volutpat ante semper diam molestie, et aliquam erat laoreet.'
    })
  end
end 
home_page.parts.create({
  title: 'Rate Hunter Comment',
  body: 'RateHunter discovers the lowest rates for your next residential loan.<br>We hunt. You find.'
})
home_page.parts.create({
  title: 'Sign Up Comment',
  body: 'Coming soon. Sign up to be notified when RateHunter is ready.'
})
home_page.parts.create({
  title: 'Who We Are',
  body: 'WHO WE ARE'
})
home_page.parts.create({
  title: 'Engineer',
  body: 'Engineering'
})
home_page.parts.create({
  title: 'Design & Human',
  body: 'DESIGN & HUMAN EXPERIENCE'
})          
  
