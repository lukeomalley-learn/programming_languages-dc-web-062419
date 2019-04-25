def reformat_languages(languages)
  language_hash = {}
  
  languages.each do |language_style, languages|
    languages.each do |language, language_type|
      if language_hash.has_key?(language)
        language_hash[language][:style] << language_style
      else
        language_hash[language] = language_type
        language_hash[language][:style] = [language_style]
      end
    end
  end
  
return language_hash
end