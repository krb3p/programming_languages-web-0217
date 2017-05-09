require 'pry'
def reformat_languages(languages)
  language_attributes = {}
  languages.each do |style, language|
    language.each do |language, attribute_hash|
      attribute_hash.each do |attribute, value|
        if language_attributes[language].nil?
          language_attributes[language] = {}
        end
        language_attributes[language][:style] ||= []
        language_attributes[language][:style] << style
        language_attributes[language][attribute] = value
      end
    end
  end
  language_attributes
end
