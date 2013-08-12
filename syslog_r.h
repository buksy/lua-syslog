struct syslog_data
{
  char *log_tag;
  int opened;
  int connected;
  int log_mask;
  int log_stat;
  int log_fac;
  int log_file;
};

void openlog_r (const char *ident, int logstat, int logfac,
		struct syslog_data *data);
void closelog_r (struct syslog_data *data);
void syslog_r (int pri, struct syslog_data *data, const char *fmt, ...);
