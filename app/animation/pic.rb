class Pokemon

    def self.title
        Catpix::print_image "app/animation/pokemon.png",
        :limit_x => 1.0,
        :limit_y => 1.0,
        :center_x => false,
        :center_y => false,
        :bg => "white",
        :bg_fill => false,
        :resolution => "low"
    end



end

