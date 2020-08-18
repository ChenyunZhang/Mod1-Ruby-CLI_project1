class Pokemon

    def self.title
        Catpix::print_image "app/picture/logo_film.png",
        :limit_x => 1.0,
        :limit_y => 1.0,
        :center_x => true,
        :center_y => false,
        :bg => "white",
        :bg_fill => false,
        :resolution => "high"
    end



end

