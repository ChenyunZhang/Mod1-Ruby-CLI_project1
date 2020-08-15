class Interface

    attr_accessor :prompt, :user

    def initialize
        @prompt = TTY::Prompt.new
    end

    def title
        puts "                                                                                                                                                                       
        hhh+ `hhh+ `ohsho` /hhh+ yh+yhhh/yhhhsh-    .-.`--    .hhh: -hhh: +hhh/  oyyhhyho/hhhsho       
        +MMM.oMMM `mMm dMm. dMM/ om +MMd /MMN so  --/ `. -:-.  yMMm hMMd  :MMMd  hosMMyoh NMM::d       
        +MMMhNMMM sMMm dMMy +MMh N+ +MMd /MMN o` ./  .-    `+  yMMMyMMMd  sdNMM`   sMMy   NMM:::       
        +NhMMyMMM hMMm dMMd `NMM+M` +MMd /MMNsM-.+   +`:+   -/ ydNMMyMMd  m+yMM/   sMMy   NMMymy       
        +N-MN-MMM yMMm dMMh  yMMNy  +MMd /MMN /` --  --.   `+  yh+Mh/MMd -M./MMh   sMMy   NMM:--       
        +N +:.MMM -MMm dMM-  -MMM-  +MMd /MMN /+ `:--    `:-:  yh o./MMd sNosMMN`  sMMy   NMM:`s`      
        hM/  sMMM/ :dN+Nd:    dMd  .dMMN/hMMNoMo    --::-:    `mN-  hMMN+Nm.:MMMs .mMMm. /MMMydN                                                                                                                                                 
    ".colorize(:blue)
    end
    
    def welcome
        puts "Hello, welcome to Movie Mate!🎬".colorize(:green)
    end

    def choose_login_or_register
        answer = prompt.select("what would you like to do?".colorize(:blue), %w(😉Register 🤓Login 😠Delete_My_Acoount))
    end

    def
        
    end

end