require 'tty-prompt'

class Interface

    attr_accessor :prompt, :user

    def initialize
        @prompt = TTY::Prompt.new(active_color: :yellow)
    end

    def header
        puts "
        +hhh+shhh/:hh/hhhhyh/:hhhh/   `oddyd- `+hyhs-  ohhh. -hhhoohhhyyh`    `hyhhhyhs  .shsho`       
        NMM/-MMM. Ns sMMN sh dMMd    dMM+-M/`mMM sMM/ .MMMy hMMM``MMM+.m:    -M-mMMyoN /MMy NMm.      
        sMMd NMMo:M. sMMN :. hMMd   /MMM/ :.yMMM sMMM``MMMM+MMMM `MMM+`:      ` mMMy  `NMMy NMMh      
        .MMM+MMMmhd  sMMMsM+ hMMd   sMMM/   mMMM sMMM:`MdMMMhMMM `MMMddN        mMMy  -MMMy NMMN      
         dMMMdMMMM+  sMMN y: hMMd   oMMM/   mMMM sMMM:`M+mMd/MMM `MMM+:y        mMMy  -MMMy NMMN      
         +MMM/hMMM`  sMMN  . hMMd `.-MMM/ .`sMMM sMMN``M/:M:/MMM `MMM+ .`       mMMy   NMMy NMMy      
         `MMN`/MMy   yMMN yN dMMd`mh sMM+:M:`dMM sMN: .M+   +MMM``MMM+-M+       NMMh   -NMy NMd`      
          oyo `yy-  -ssssss/:ssssss:  :sys:   /ssy+`  /ss` `ssss+ossssss`      /ssss-   `+yss/        
                                                                                                 
    /hhh: `hhhy  -yhyh+` :hhhh.-hh+hhhhsshhhyhh`              `hhhs  ohhh- /hhhy   hyyhhhyh.hhhhyh+   
     NMMm oMMM: +MMo`MMm` yMMd  dh oMMM``MMM+.m:  ``+-::-/-`   oMMM:.MMMy  .MMMM- `M/hMMd/M.oMMM om   
     mMMMoNMMM-.MMMo`MMMs -MMM.-M: oMMM``MMM+`:  -/.`     ..+  oMMMdyMMMy  +MdMMo  ` hMMd   oMMM -.   
     mdMMMhMMM-/MMMo`MMMm  dMMosm  oMMM``MMMddN `:-  /-:-   /- oMdMMNdMMy  hhoMMd    hMMd   oMMMsNs   
     msyMN-MMM-/MMMo`MMMm  +MMmNo  oMMM``MMM+:y .:.  +--:   :: oM:MM+dMMy `M+-MMM.   hMMd   oMMM s/   
     ms.No.MMM-`NMMo`MMMo  `NMMM`  oMMM``MMM+ .` `-        `o  oM ym dMMy /MyoMMM+   hMMd   oMMM  -   
     Ny   -MMM: :NMs`MMh    sMMy   oMMM..MMM+-M+  .-+.-:.::.`  oM`   dMMh hm` hMMd   dMMm`  oMMM`sM`  
    -ss.  ossso  .+yss:     .yy-  .ssssoossssss`     .  ``     ss/  :ssss/ss:.ssss- -ssss: .ssssss+   
        ".colorize(:yellow)
    end

    def welcome
        puts "Hello, welcome to Movie Mate!".colorize(:blue)
    end

    def login_register_delete_account
        prompt.select("Please select from the following options.") do |menu|
            menu.choice "🎬Login", -> {User.login} 
            menu.choice "🎬Register", -> {User.create_new_user}
            menu.choice "🎬Delete_my_account", -> {User.delete_my_account}
        end
    end

        def self.home_page
            puts "Welcome to the app, #{user.name}"
            prompt.select("Welcome to the Homepage", %w(
                My Movies
                Review a movie
                View reviews for a movie
                View my comments for a review
                Browse in theater movies
                My profile
                Logout
            ))
        end




end