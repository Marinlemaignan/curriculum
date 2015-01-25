class MarinleMaignan < SuperGreat::BackEndDeveloper::ForSale
  include "rails_best_practices"

  attr_accessor :first_name, :last_name, :age, :email, :phone, :experience,
                :diplomas, :skills, :future, :super_developer, :to_do_next

  def initialize(super_developer)
    @first_name       = "Marin"
    @last_name        = "le Maignan"
    @age              =  25
    @email            = "marin.lemaignan@gmail.com"
    @phone            = "07593085329"

    @experience       = describe_work_experience
    @diplomas         = describe_diplomas
    @skills           = describe_skills

    buy_the_guy!(super_developer)
  end

  def skills
    [ :ruby, :ruby_on_rails, :javascript, :jquery, :html5, :css3,
      :ui_design, :ux_design, :back_end, :front_end, :emberjs,
      :git, :oop, :agile, :rspec, :bdd, :tdd, :deployment, :sql,
      :cloud_technologies, :rvm, :heroku, :aws, :stripejs,
      :data_manipulation, :pair_programming ]
  end

  def experience
    [{from:             2013,
      to:               2015,
      company:          "Serious Fox",
      job_description:  "Ruby Developer",
      type:             "Contract",
      city:             "London"
    },{
      from:             2012,
      to:               2012,
      company:          "UiCentric",
      job_description:  "UI UX Designer",
      type:             "Freelance",
      city:             "London"
    },{
      from:             2011,
      to:               2012,
      company:          "Shishiishi",
      job_description:  "Lead Designer",
      type:             "Contract",
      city:             "London"
    },{
      from:             2011,
      to:               2011,
      company:          "Provins Tourister",
      job_description:  "UI UX Designer",
      type:             "Freelance",
      city:             "Paris" }]
  end

  def diplomas
    [{from:             2011,
      to:               2013,
      title_awarded:    "Graphic Design Ba(Hons) 2/1",
      location:         "London Metropolitan University",
      city:             "London"
    },{
      from:             2008,
      to:               2011,
      title_awarded:    "BTS Multimedia Graphic Designer",
      location:         "l'Ecole Multimedia",
      city:             "Paris" }]
  end

  def buy_the_guy!(super_developer)
    you = Employer.new()

    if super_developer.interesting?
      you.send_a_mail_to(super_developer, email)

    elsif super_developer.super_interesting?
      you.give_a_call_to(super_developer, phone)
    end
  end
end
