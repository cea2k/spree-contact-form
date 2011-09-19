Deface::Override.new(:virtual_path => "admin/configurations/index",
                     :name => "contact_topic_configuration_option",
                     :insert_after => "[data-hook='admin_configurations_menu'], #admin_configurations_menu[data-hook]",
                     :text => "<%= configurations_menu_item(I18n.t('contact_topics'), admin_contact_topics_path, I18n.t('contact_topics_description')) %>",
                     :disabled => false)
