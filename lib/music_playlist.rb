class PlayList
    def initialize(name)
        @name = name
        @track = []
    end

    def add_track(track)

        @track << track

    end

    def list_tracks
     #ß   binding.irb

        fail "Playlist empty" if @track.empty?

        trackList = @track.uniq.join(", ")

        return "#{@name} you have listened to : #{trackList}"
    
    end

end
