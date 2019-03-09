class Race < ApplicationRecord
  has_many :race_names
  has_many :race_traits

  # gather race_names records by group and turn them into a comma separated string
  def names
    all_names = []
    groups = []
    names = []

    self.race_names.to_a.each do |n|
      all_names << { :group => n.group, :name => n.name }
      groups << n.group
    end

    groups = groups.uniq

    puts groups

    groups.each do |g|
      names_to_concat = []

      all_names.select {|name| name[:group] == g}.each do |name|
        names_to_concat << name[:name]
      end

      names << { group: g, names: names_to_concat.join(', ') }
    end

    return names
  end

  # return traits as an array
  def traits
    traits = []

    self.race_traits.to_a.each do |t|
      traits << { :description => t.trait_description, :header => t.trait_header }
    end

    return traits
  end
end
