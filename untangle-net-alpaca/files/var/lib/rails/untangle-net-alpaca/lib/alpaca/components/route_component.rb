class Alpaca::Components::RouteComponent < Alpaca::Component
  def register_menu_items( menu_organizer, config_level )
    
    if ( config_level >= AlpacaSettings::Level::Advanced ) 
      menu_organizer.register_item( "/main/advanced/route",
                                    Alpaca::Menu::Item.new( 400, "Static Routes", "/route" ))
    end
  end
  
  def wizard_insert_closers( builder )
  end

  private

  def validate
  end

  def save
    ## Leaving the firewalls alone for now.
  end
end
