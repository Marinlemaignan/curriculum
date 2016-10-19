class MarinleMaignan
  attr_accessor :first_name, :last_name, :age, :email, :phone

  def initialize
    @first_name       = "Marin"
    @last_name        = "le Maignan"
    @age              = "05-12-1989 (25)"
    @email            = "marin.lemaignan@gmail.com"
    @phone            = "07593085329"

    self.instance_variables.each do |who_is_he|
      who_is_he = who_is_he.to_s
      who_is_he.slice!(0)
      puts send(who_is_he)
    end

    ["work_experience", "diplomas", "skills"].each do |what_does_he_do|
      puts "\n"
      puts "\n"
      puts "#{what_does_he_do.upcase}:"
      describe self.send(what_does_he_do), what_does_he_do
    end
  end

private

  def skills
    [ :ruby,
      :ruby_on_rails,
      :javascript,
      :jquery,
      :html5,
      :css3,
      :git,
      :oop,
      :agile,
      :rspec,
      :bdd,
      :tdd,
      :capistrano,
      :postgresql,
      :cloud_stuff,
      :rvm,
      :heroku,
      :aws,
      :stripejs,
      :ui_design,
      :ux_design,
      :and_many_others_hopefully ]
  end

  def work_experience
    [{
      from:             "April 2015",
      to:               Time.now,
      company:          "monAlbumPhoto.fr",
      job_description:  "Back End (Ruby) Developer",
      type:             "Contract",
      city:             "Paris"
    },{
      from:             "June 2013",
      to:               "March 2015",
      company:          "Serious Fox",
      job_description:  "Back End (Ruby) Developer",
      type:             "Contract",
      city:             "London"
    },{
      from:             "July 2012",
      to:               "October 2012",
      company:          "UiCentric",
      job_description:  "UI UX Designer",
      type:             "Freelance",
      city:             "London"
    },{
      from:             "2011",
      to:               "2012",
      company:          "Shishiishi",
      job_description:  "Lead Designer",
      type:             "Contract",
      city:             "London"
    },{
      from:             "2011",
      to:               "2011",
      company:          "Provins Tourister",
      job_description:  "UI UX Designer",
      type:             "Freelance",
      city:             "Paris"
    }]
  end

  def diplomas
    [{from:             "2011",
      to:               "2013",
      title_awarded:    "Graphic Design Ba(Hons) 2/1",
      location:         "London Metropolitan University",
      city:             "London"
    },{
      from:             "2008",
      to:               "2011",
      title_awarded:    "BTS Multimedia Graphic Designer",
      location:         "l'Ecole Multimedia",
      city:             "Paris" }]
  end

  def describe(object, klass)
    object.each_with_index do |exp, i|
      i = i+1
      if klass == "skills"
        puts "- #{exp.to_s.capitalize.gsub('_', ' ')}"

      else
        puts "------------------------##{i}------------------------"
        exp.each do |key, value|
          puts "- #{key.capitalize} : #{value}"
        end
        puts "\n"
      end
    end
  end
end

puts "HELLO WORLD !"
puts "\n"

a = MarinleMaignan.new

puts "\n"
puts "Thank You for Reading!"
