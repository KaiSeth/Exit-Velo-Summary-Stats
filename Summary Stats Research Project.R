# Summary Statistics for 2015 statcast data
summary(exit_velocity2015)
sd(exit_velocity2015$avg_hit_speed, na.rm = FALSE)
sd(exit_velocity2015$ev95percent, na.rm = FALSE)
sd(exit_velocity2015$ev95plus, na.rm = FALSE)

gf_dhistogram(~exit_velocity2015$avg_hit_speed, color = 'black', fill = 
               'hotpink', xlab = 'Average Hit Speed 2015', ylab = 'Count', 
             title = '2015 Average Hit \nSpeed Histogram')%>%
  gf_fitdistr(dist = 'dnorm') # slight left skew

gf_dhistogram(~exit_velocity2015$ev95percent, color = 'black', fill = 
               'skyblue2', xlab = 'Exit Velocity 95+ \nPercent', ylab = 'Count', 
             title = '2015 Exit Velocity \n95+ Percent Histogram')%>%
  gf_fitdistr(dist = 'dnorm') # left skewed

gf_histogram(~exit_velocity2015$ev95plus, color = 'black', fill = 'sienna')


# Summary Statistics for 2021 statcast data
summary(exit_velocity_2021)
sd(exit_velocity_2021$avg_hit_speed, na.rm = FALSE)
sd(exit_velocity_2021$ev95percent, na.rm = FALSE)
sd(exit_velocity_2021$ev95plus, na.rm = FALSE)

gf_dhistogram(~exit_velocity_2021$avg_hit_speed, color = 'black', fill = 
                'salmon', xlab = 'Average Hit Speed 2021', ylab = 'Count', 
              title = '2021 Average Hit \nSpeed Histogram')%>%
  gf_fitdistr(dist = 'dnorm')

gf_dhistogram(~exit_velocity_2021$ev95percent, color = 'black', fill = 
                'darkslategray4', xlab = 'Exit Velocity 95+ \nPercent', ylab = 'Count', 
              title = '2021 Exit Velocity \n95+ Percent Histogram')%>%
  gf_fitdistr(dist = 'dnorm')

gf_histogram(~exit_velocity_2021$ev95plus, color = 'black', fill = 'maroon3')

