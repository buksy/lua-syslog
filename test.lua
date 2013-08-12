syslog = require "syslog"

syslog.openlog("lua syslog", syslog.LOG_PERROR + syslog.LOG_ODELAY + syslog.LOG_PID, "LOG_DAEMON")
syslog.syslog("LOG_WARNING", "Hi all " .. os.time())
syslog.syslog("LOG_WARNING", "Hi all " .. os.time())
syslog.syslog("LOG_WARNING", "Hi all " .. os.time())
syslog.syslog("LOG_WARNING", "Hi all " .. os.time())



syslog.closelog()
syslog.syslog("LOG_DEBUG", "Hi all 2" .. os.time())

