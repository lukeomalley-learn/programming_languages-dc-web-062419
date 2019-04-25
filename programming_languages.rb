def reformat_languages(languages)
  language_hash = {}
  
  languages.each do |language_style, languages|
    languages.each do |language, language_type|
      if language_hash.has_key?(:language)
        language_hash[language][:language_style] << language_style
      else
        language_hash[language] = {type: language_type[:type], style: [language_style]}
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