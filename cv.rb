class MarinleMaignan

  attr_accessor :first_name, :last_name, :age, :email, :phone, :experience,
                :diplomas, :skills, :future, :super_developer, :to_do_next

  def initialize(super_developer)
    puts "HELLO WORLD !"
    puts "\n"

    @first_name       = "Marin"
    @last_name        = "le Maignan"
    @age              =  "05-12-1989 (25)"
    @email            = "marin.lemaignan@gmail.com"
    @phone            = "07593085329"

    self.instance_variables.each do |var|
      var = var.to_s
      var.slice!(0)
      puts send(var)
    end

    ["work_experience", "diplomas", "skills"].each do |object|
      puts "\n"
      puts "\n"
      puts "#{object.upcase}:"
      describe self.send(object), object
    end
  end

  def skills
    [ [:ruby,                 "Very Good"],
      [:ruby_on_rails,        "Very Good"],
      [:javascript,           "Very Good"],
      [:jquery,               "Very Good"],
      [:html5,                "Very Good"],
      [:css3,                 "Very Good"],
      [:ui_design,            "Very Good"],
      [:ux_design,            "Very Good"],
      [:back_end,             "Very Good"],
      [:front_end,            "Very Good"],
      [:emberjs,              "Very Good"],
      [:git,                  "Very Good"],
      [:oop,                  "Very Good"],
      [:agile,                "Very Good"],
      [:rspec,                "Very Good"],
      [:bdd,                  "Very Good"],
      [:tdd,                  "Very Good"],
      [:deployment,           "Very Good"],
      [:sql,                  "Very Good"],
      [:cloud_technologies,   "Very Good"],
      [:rvm,                  "Very Good"],
      [:heroku,               "Very Good"],
      [:aws,                  "Very Good"],
      [:stripejs,             "Very Good"],
      [:data_manipulation,    "Very Good"],
      [:pair_programming,     "Very Good"]
    ]

  end

  def work_experience
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

  def describe(object, klass)
    object.each_with_index do |exp, i|
      i = i+1
      if klass == "skills"
        puts "- #{exp[0].capitalize} : #{exp[1].capitalize}"

      else
        puts "------------------------##{i}------------------------"
        exp.each do |key, value|
          puts "- #{key.capitalize} : #{value}"
        end

      end
      puts "\n"
    end
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



a = MarinleMaignan.new("a")


puts "Thank You for Reading!"
