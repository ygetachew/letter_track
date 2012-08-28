module ApplicationHelper
    
  def self.pretty_title(i18n)
    i18n_setting ||= i18n.nil? ? "en" : i18n
    return I18n.translate('application_main_title')
  end
end
