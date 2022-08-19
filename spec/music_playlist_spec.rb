require "music_playlist"

RSpec.describe PlayList do
    context "If no track is listened" do
        it "fails wit exception Playlist empty" do
            playlist = PlayList.new("Rex")
            expect{playlist.list_tracks}.to raise_error "Playlist empty"  
        end
    end

    context "Tracks that are listened to " do
        it "adds tracks to list and displays list of track" do
            playlist = PlayList.new("Rex")
            playlist.add_track("Track1")
            expect(playlist.list_tracks).to eq "Rex you have listened to : Track1"  
        end
    end

    context "Tracks that are listened to multiple times " do
        it "list only once any duplicate tracks" do
            playlist = PlayList.new("Rex")
            playlist.add_track("Track1")
            playlist.add_track("Track2")
            playlist.add_track("Track1")
            expect(playlist.list_tracks).to eq "Rex you have listened to : Track1, Track2"
        end
    end

    context "Multiple tracks listened to " do
        it "add multiple tracks to list" do
            playlist = PlayList.new("Rex")
            playlist.add_track("Track1")
            playlist.add_track("Track2")
            playlist.add_track("Track3")
            expect(playlist.list_tracks).to eq "Rex you have listened to : Track1, Track2, Track3"
        end
    end
end