# Structure

Tracks are split into in-game tracks and main themes.
Standard tracks must be specified in the game/music/music.txt file.
Main themes must be specified in the game/music/main_themes/music.txt file.

	name_of_the_music_track = {
	
		# Path to the audio event for this track
		music = "event:/..."
	
		# Determines the value to add to the music system's pause factor counter. This determines how long the pause should be between tracks, default: 0
		# NOTE: This can only be applied to in-game tracks (not to main themes)
		pause_factor = X
	
		# Is this track a mood track (i.e. a long track that the game can pick and doesn't need to be explicitly triggered)? default: no
		# NOTE: This can only be applied to in-game tracks (not to main themes)
		mood = yes/no
	
		# Should this mood track get prioritized for a first time play over other tracks? (Useful for tracks with a narrow is_valid trigger) default: no
		# NOTE: This can only be applied to in-game tracks (not to main themes)
		prioritized_mood = yes/no

		# Is this mood track valid to be played, only evaluated while a country is being played or observed. Evaluated in the scope of that country
		# NOTE: This can only be applied to in-game tracks (not to main themes)
		is_valid = { <trigger> }

		# How likely this mood track is to be picked relative to the other valid tracks, default: 1
		# Only used by the Weighted shuffle mode, see below. A weight of 0 means the track is never picked automatically, unless every candidate has a weight of 0, in which case they are picked evenly
		# Evaluated in the scope of the played country, same as is_valid
		# NOTE: This can only be applied to in-game mood tracks (not to main themes)
		weight = <script value>

		# Can this track be interrupted by another track? Long mood track are good candidates for interrupting. default : no
		can_be_interrupted = yes/no
	
		# Cooldown in in-game time, the track will not be played for this amount of time after it has been started
		years/months/days = X
	
		# Cooldown in calls. After the track starts playing, it will not play again for X subsequent requests to play it. default : 0
		calls = X
	
		# Does this track's cooldown reset when starting/loading a game? default : no
		reset = yes/no

		# Only play this track if the user has the DLC specified here
		# NOTE: This can only be applied to main themes. To get similar behavior for in-game tracks, the general-purpose is_valid can be used instead
		dlc = "NAME OF THE DLC"
	}

# Shuffle modes

The player picks how the next mood track is chosen, in the music player panel. None of the modes
will play the track that just finished again while another track is available.

- Least Played: rotates through the mood tracks that have been played the fewest times. Honors
  is_valid, prioritized_mood and track groups, and ignores weight, because the rotation already
  levels every track out to roughly the same number of plays.
- Random: equal chance for every enabled track, ignoring is_valid and weight. Track and category
  toggles and cooldowns still apply.
- Weighted: chance proportional to weight among the tracks whose is_valid passes. This is the
  default

The Music.ListTracks console command prints every mood track's current weight and is_valid result
for the played country.

# Playing a specific track from script

	play_music_cue = mx_mood_tr_01

Plays the named track for the player immediately. Takes a country scope and does nothing for a
country that isn't the one the player is playing. Also does nothing if the current track can't be
interrupted, or if the named track is on cooldown or disabled in the music player.

The track is looked up when the effect runs, not when the file is read, so referring to a track
that belongs to a DLC prints a script error at that moment instead of failing to load. Guard the
effect with a DLC trigger if the track it names is not in the base game.

# Music player categories

The music player lists the base game soundtrack first, then every other category by id in
descending order, so the newest DLC comes right after the base game. The base category is set by
BASE_MUSIC_PLAYER_CATEGORY in common/defines/00_audio.txt. Give each new category the next
zero-padded id (mx_category_06, then mx_category_07, and so on), since the ids are compared as text.
