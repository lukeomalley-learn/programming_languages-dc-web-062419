def reformat_languages(languages)
  language_hash = {}
  
  languages.each do |key, languages|
    languages.each do |language, language_type|
      if language_hash.has_key?(:style)
        language_hash[language][:style] << key
      else
        language_hash[language] = {type: language_type[:type], style: [key]}
      end
    end
  end
  return language_hash
end

puts reformat_languages({
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
})