package MODEL;

public class SongDTO {
	private String song;
	private String singer;
	private String album;
	private String songtype;
	
	
	public SongDTO(String song, String singet, String album, String songtype) {
		this.song = song;
		this.singer = singet;
		this.album = album;
		this.songtype = songtype;
	}
	
	public String getSong() {
		return song;
	}
	public void setSong(String song) {
		this.song = song;
	}
	public String getSinget() {
		return singer;
	}
	public void setSinget(String singet) {
		this.singer = singet;
	}
	public String getAlbum() {
		return album;
	}
	public void setAlbum(String album) {
		this.album = album;
	}
	public String getSongtype() {
		return songtype;
	}
	public void setSongtype(String songtype) {
		this.songtype = songtype;
	}

}
