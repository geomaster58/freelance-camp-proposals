# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# export class Proposal {
#   constructor(
#     public id? : number, 
#     public customer? : string, 
#     public portfolio_url : string = 'http://', 
#     public tools? : string ,
#     public estimated_hours? : number,
#     public hourly_rate? : number,
#     public weeks_to_compelete? : number,
#     public client_email? : string 

#     ){}
# }


10.times do |x|
  FreelanceProposal.create!(customer: "ABC Company #{x}", portfolio_url: "http://jj-portfolio.com", tools: "Rails, Angular 4", estimated_hours: (80 *x), hourly_rate: 100, weeks_to_compelete: (5), client_email: "jjkeeney129285@gmail.com")
end

