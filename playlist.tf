resource "spotify_playlist" "Tollywood" {
    name = "Tollywood"
    tracks = ["3WqQkDTab7sYjRX9Uf7mqr"]

}
 
data "spotify_search_track" "eminem" {
  artist = "Eminem"
}

resource "spotify_playlist" "slimshady" {
    name = "Slim Shady"
  tracks = [data.spotify_search_track.eminem.tracks[0].id,
  data.spotify_search_track.eminem.tracks[1].id,
  data.spotify_search_track.eminem.tracks[2].id]
}