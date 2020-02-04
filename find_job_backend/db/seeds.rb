User.destroy_all
Job.destroy_all 
Certification.destroy_all
Education.destroy_all
Employment.destroy_all
Membership.destroy_all
Note.destroy_all
Preference.destroy_all
Skill.destroy_all
Task.destroy_all
GeneralJob.destroy_all

User.create(first_name: 'Chinomnso', last_name: 'Awazie', username: "awazienommy", password_digest:  BCrypt::Password.create("password"), email: 'awazienommy@gmail.com', country: 'United States', state: 'New York', city: 'New York', age: 39, highest_education: 'Bachelors', years_of_experience: 15)
User.create(first_name: 'admin', last_name: 'admin', username: "admin", password_digest:  BCrypt::Password.create("admin"), email: 'awazienommy@gmail.com', country: 'United States', state: 'New York', city: 'New York', age: 39, highest_education: 'Bachelors', years_of_experience: 15)

type = ['full time', 'part time', 'contract', 'intern']
intro = ['We are looking for a committed cleaner', 'Detail oriented engineer needed', 'Numbers person for an accounting job']
requirements= ['SQL', 'customer service', 'project management']
stronpoints = ['Diversity focused', 'promotes from withing', 'competitive benefits package', 'low turnover rate']
benefits = ['401k', 'paid maternity leave', 'paid paternity leave', '100% company paid health insurance']
schedule = ['Mon - Fri 9am - 5pm', 'Weekends', 'Mon - Fri 10pm - 7am']

2.times do
    Job.create(user_id: User.first.id, job_title: Faker::Job.title, company_name: Faker::Company.name, country: 'United States', state: Faker::Address.state, city: Faker::Address.city, zipcode: Faker::Address.zip_code, pay: Faker::Number.between(from: 800, to: 2000), job_type: Faker::Job.employment_type, intro: intro.sample, requirement: requirements.sample, employer_strongpoints: stronpoints.sample, benefits: benefits.sample, education: Faker::Job.education_level, schedule: schedule.sample, description: Faker::Lorem.paragraph(sentence_count: 3, supplemental: true, random_sentences_to_add: 5), duties: Faker::Lorem.paragraph(sentence_count: 3, supplemental: true, random_sentences_to_add: 5), url: Faker::Internet.url ,industry: Faker::Company.industry, applied_key: Faker::Boolean.boolean, favorite_key: Faker::Boolean.boolean)
end

10.times do
    GeneralJob.create(job_title: Faker::Job.title, company_name: Faker::Company.name, country: 'United States', state: Faker::Address.state, city: Faker::Address.city, zipcode: Faker::Address.zip_code, pay: Faker::Number.between(from: 800, to: 2000), job_type: Faker::Job.employment_type, intro: intro.sample, requirement: requirements.sample, employer_strongpoints: stronpoints.sample, benefits: benefits.sample, education: Faker::Job.education_level, schedule: schedule.sample, description: Faker::Lorem.paragraph(sentence_count: 3, supplemental: true, random_sentences_to_add: 5), duties: Faker::Lorem.paragraph(sentence_count: 3, supplemental: true, random_sentences_to_add: 5), url: Faker::Internet.url ,industry: Faker::Company.industry)
end


Certification.create(user_id: User.first.id, description: 'Certified Fireman', issued_by: 'FFS', issuing_date: '2010/09/06', renewable: Faker::Boolean.boolean, valid_until: '2020/10/12' )
Education.create(user_id: User.first.id, name_of_institution: Faker::Educator.university, degree_or_certificate: Faker::Educator.degree, gpa: 3.5, start_date: '2001/01/09', end_date: '2006/06/10', country: 'Nigeria', state: 'Anambra', city: 'Awka', major: 'Electrical Electronics Engineering', minor: 'N/A')
Membership.create(user_id: User.first.id, organization: 'IEEE', start_date: '2001/01/01', end_date: '2020/01/01')


4.times do
    Employment.create(user_id: User.first.id, company_name: Faker::Company.name, job_title: Faker::Job.title, start_month: Faker::Number.between(from: 1, to: 12), start_year: Faker::Number.between(from: 1980, to: 2000), end_month: Faker::Number.between(from: 1, to: 12), end_year: Faker::Number.between(from: 2001, to: 2020), duties: Faker::Lorem.paragraph(sentence_count: 3, supplemental: true, random_sentences_to_add: 5), country: 'United States', state: Faker::Address.state, city: Faker::Address.city, currently_work_here: Faker::Boolean.boolean)
end

5.times do 
    Note.create(job_id: Job.ids.sample, text: Faker::Lorem.paragraph(sentence_count: 3, supplemental: true))
end

preferencenames = ['Tech', 'Education', 'Engineering']
ranges = ['20000 - 39000', '40000 - 60000', '61000 - 80000', '81000 - 120000']
postDatesStart = ['2019/10/01', '2019/10/12', '2020/10/25']
postDatesEnd = ['2019/12/01', '2019/12/12', '2020/12/25']
4.times do
    Preference.create(user_id: User.first.id, name: preferencenames.sample, country: 'United States', state: Faker::Address.state, city: Faker::Address.city, city_population: Faker::Number.between(from: 5000, to: 2000000), pay_range: ranges.sample, job_title: Faker::Job.title, industry: Faker::Company.industry, posting_date_start: postDatesStart.sample, posting_date_stop: postDatesEnd.sample)
end

prolevels = ['beginner', 'intermediate', 'expert']
5.times do
    Skill.create(user_id: User.first.id, description: requirements.sample, proficiency_level: prolevels.sample)
end

dates = ['2020/01/01', '2020/02/02', '2020/03/03']
5.times do
    Task.create(job_id: Job.ids.sample, description: Faker::Lorem.sentence(word_count: 4, supplemental: true), due_date: dates.sample )
end


puts '============================'
puts '.......SEEDED...............'
puts '============================'
