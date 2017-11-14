Unofficial 'split2flac' docker repo containing all dependencies

From https://github.com/ftrvxmtrx/split2flac :

"split2flac splits one big APE/FLAC/TTA/WV/WAV audio image (or a collection of such files, recursively) with CUE sheet into FLAC/M4A/MP3/OGG_VORBIS/OPUS/WAV tracks with tagging, renaming, charset conversion of cue sheet, album cover images. It also uses configuration file, so no need to pass a lot of arguments every time, only an input file. Should work in any POSIX-compliant shell."

Set up by running: docker pull mikenye/split2facc

To use, set up a bash alias, etc:
alias split2flac='docker run -v "$(pwd)":/workdir -it --rm mikenye/split2flac'

Then run like this:

$ split2flac -v
split2flac version: 122

shntool 3.0.10
flac 1.3.1
-- Monkey's Audio Console Front End (v 4.11) (c) Matthew T. Ashland --
FAAC 1.28
oggenc from vorbis-tools 1.4.0
opusenc opus-tools 0.1.9 (using libopus 1.1.2)
Copyright (C) 2008-2013 Xiph.Org Foundation
LAME 64bits version 3.99.5 (http://lame.sf.net)

$ split2flac -cue ./Billy\ Idol\ -\ Kings\ \&\ Queens\ Of\ The\ Underground.cue ./Billy\ Idol\ -\ Kings\ \&\ Queens\ Of\ The\ Underground.flac
Output format : FLAC [using flake tool] (-8)
Output dir : .
Cue sheet : /root/.split2flac_jBpPn.cue
Cover image : ./Folder.jpg
Copy over : [Cc]overs *.log *.txt *.jpg *.cbr

Artist : Billy Idol
Album : Kings & Queens Of The Underground
Genre : "New Wave"
Year : 2014
Tracks : 11

Saving tracks to "./Billy Idol/2014 - Kings & Queens Of The Underground"
shnsplit: warning: discarding initial zero-valued split point
Splitting [./Billy Idol - Kings & Queens Of The Underground.flac] (47:48.06) --> [./Billy Idol/2014 - Kings & Queens Of The Underground/01.flac] (3:57.46) : 100% OK
Splitting [./Billy Idol - Kings & Queens Of The Underground.flac] (47:48.06) --> [./Billy Idol/2014 - Kings & Queens Of The Underground/02.flac] (3:43.01) : 100% OK
Splitting [./Billy Idol - Kings & Queens Of The Underground.flac] (47:48.06) --> [./Billy Idol/2014 - Kings & Queens Of The Underground/03.flac] (4:31.68) : 100% OK
Splitting [./Billy Idol - Kings & Queens Of The Underground.flac] (47:48.06) --> [./Billy Idol/2014 - Kings & Queens Of The Underground/04.flac] (4:10.37) : 100% OK
Splitting [./Billy Idol - Kings & Queens Of The Underground.flac] (47:48.06) --> [./Billy Idol/2014 - Kings & Queens Of The Underground/05.flac] (4:20.65) : 100% OK
Splitting [./Billy Idol - Kings & Queens Of The Underground.flac] (47:48.06) --> [./Billy Idol/2014 - Kings & Queens Of The Underground/06.flac] (4:53.71) : 100% OK
Splitting [./Billy Idol - Kings & Queens Of The Underground.flac] (47:48.06) --> [./Billy Idol/2014 - Kings & Queens Of The Underground/07.flac] (4:30.24) : 100% OK
Splitting [./Billy Idol - Kings & Queens Of The Underground.flac] (47:48.06) --> [./Billy Idol/2014 - Kings & Queens Of The Underground/08.flac] (4:47.60) : 100% OK
Splitting [./Billy Idol - Kings & Queens Of The Underground.flac] (47:48.06) --> [./Billy Idol/2014 - Kings & Queens Of The Underground/09.flac] (4:39.45) : 100% OK
Splitting [./Billy Idol - Kings & Queens Of The Underground.flac] (47:48.06) --> [./Billy Idol/2014 - Kings & Queens Of The Underground/10.flac] (4:29.37) : 100% OK
Splitting [./Billy Idol - Kings & Queens Of The Underground.flac] (47:48.06) --> [./Billy Idol/2014 - Kings & Queens Of The Underground/11.flac] (3:43.02) : 100% OK

Setting tags
1: Bitter Pill
-> ./Billy Idol/2014 - Kings & Queens Of The Underground/01 - Bitter Pill.flac
2: Can't Break Me Down
-> ./Billy Idol/2014 - Kings & Queens Of The Underground/02 - Can't Break Me Down.flac
3: Save Me Now
-> ./Billy Idol/2014 - Kings & Queens Of The Underground/03 - Save Me Now .flac
4: One Breath Away
-> ./Billy Idol/2014 - Kings & Queens Of The Underground/04 - One Breath Away.flac
5: Postcards From The Past
-> ./Billy Idol/2014 - Kings & Queens Of The Underground/05 - Postcards From The Past.flac
6: Kings & Queens Of The Underground
-> ./Billy Idol/2014 - Kings & Queens Of The Underground/06 - Kings & Queens Of The Underground.flac
7: Eyes Wide Shut
-> ./Billy Idol/2014 - Kings & Queens Of The Underground/07 - Eyes Wide Shut.flac
8: Ghosts In My Guitar
-> ./Billy Idol/2014 - Kings & Queens Of The Underground/08 - Ghosts In My Guitar.flac
9: Nothing To Fear
-> ./Billy Idol/2014 - Kings & Queens Of The Underground/09 - Nothing To Fear.flac
10: Love And Glory
-> ./Billy Idol/2014 - Kings & Queens Of The Underground/10 - Love And Glory.flac
11: Whiskey And Pills
-> ./Billy Idol/2014 - Kings & Queens Of The Underground/11 - Whiskey And Pills.flac

Copying files:
cp: cannot stat './[Cc]overs': No such file or directory
cp: cannot stat './.log': No such file or directory
cp: cannot stat './.txt': No such file or directory
cp: cannot stat './.jpg': No such file or directory
cp: cannot stat './.cbr': No such file or directory

Finished
