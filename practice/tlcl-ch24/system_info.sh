#!/bin/bash 

# Practicing starting a new script project 

# I practiced here the variations and functions.


# program to output a system information page



TITLE="system information for $HOSTNAME"
CURRENT_TIME="$(data +"%x %r %z")"
TIMESTAMP="Generated $CUURENT_TIME, by $USER"



report_uptime () {
	cat << _EOF_
	<h2>System Uptime</h2>
``	<pre>$(uptime)</pre>
_EOF_
	return
}
 

report_disk_space () {
	cat << _EOF_
	<h2>Disk space utilization</h2>
	<pre>$(df -h)</pre>
_EOF_
	return
}



report_home_space () {
	cat << _EOF_
	<h2>Home space utilzation</h2>
	<pre>$(du -sh /home/$)</pre>
_EOF_
	return
}

report_home_space () {
	echo "function report_home_space executed."
	return
}


# main script starts here 


cat << _EOF_
<html>
	<head>
		<title>$TITLE</title>
	</head>
	<body>
		<h1>$TITLE</h1>
		<p>$TIMESTAMP</p>
		$(report_uptime)
		$(report_disk_space)
		$(report_home_space)
	</body>
</html>
_EOF_
