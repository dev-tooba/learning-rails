module DefaultPageContent
    icluded do 
    before_action :set_title
    end
    
    def set_title
        @page_title = "Training for Ruby | "
    end
end