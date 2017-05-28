require "pry"

languages = {
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }

  }
}

def reformat_languages(languages)
  new_hash = {}

  languages.each do |style, attributes|
    attributes.each do |language, type|
      type.each do |type_key, value|
        new_hash[language] = { type_key => value }
        new_hash[language][:style] = [style]
      end
    end
  end

  new_hash[:javascript][:style] << :oo
  new_hash
end
