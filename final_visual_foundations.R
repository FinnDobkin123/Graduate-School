ggplot(data=df, aes(x=year)) +
  geom_line(aes(y = less_five, group=1 ,color="0 to 5")) +
  geom_line(aes(y = five_to_nine, group=1, color = "5 to 9")) +
  geom_line(aes(y = ten_to_fourteen, group=1, color = "10 to 14")) +
  geom_line(aes(y = fifteen_to_nineteen, group= 1, color = "15 to 19")) +
  geom_line(aes(y = twenty_to_twentyfour, group= 1, color = "20 to 24")) +
  geom_line(aes(y = twentyfive_to_twentynine, group= 1, color = "25 to 29")) +
  geom_line(aes(y = thirty_to_thirtyfour, group= 1, color = "30 to 34")) +
  geom_line(aes(y = thirtyfive_to_thirtynine, group= 1, color = "35 to 39")) +
  geom_line(aes(y = fourty_to_fourtynine, group= 1, color = "40 to 49")) +
  geom_line(aes(y = fifty_to_fiftynine, group= 1, color = "50 to 59")) +
  geom_line(aes(y = sixty_to_sixtynine, group= 1, color = "60 to 69")) +
  geom_line(aes(y = seventy_to_ninetynine, group= 1, color = "70 to 99")) +
  geom_text(data = df %>% filter(year == 2011),
            aes(y=less_five, label=less_five),
            check_overlap = TRUE,
            size=2,
            fontface = "bold",
            nudge_x = -0.3,
            nudge_y= -0.1) +
  geom_text(data = df %>% filter(year == 2019),
            aes(y=less_five, label=less_five),
            check_overlap = TRUE,
            size=2,
            fontface = "bold",
            nudge_x = 0.3,
            nudge_y = 0.125) +
  geom_text(data = df %>% filter(year == 2011),
            aes(y=sixty_to_sixtynine, label=sixty_to_sixtynine),
            check_overlap = TRUE,
            size=2,
            fontface = "bold",
            nudge_x = -0.3,
            nudge_y= 0.1) +
  geom_text(data = df %>% filter(year == 2019),
            aes(y=sixty_to_sixtynine, label=sixty_to_sixtynine),
            check_overlap = TRUE,
            size=2,
            fontface = "bold",
            nudge_x = 0.3,
            nudge_y = -0.2) +
  geom_text(data = df %>% filter(year == 2011),
            aes(y=seventy_to_ninetynine, label=seventy_to_ninetynine),
            check_overlap = TRUE,
            size=2,
            fontface = "bold",
            nudge_x = -0.3,
            nudge_y= -0.1) +
  geom_text(data = df %>% filter(year == 2019),
            aes(y=seventy_to_ninetynine, label=seventy_to_ninetynine),
            check_overlap = TRUE,
            size=2,
            fontface = "bold",
            nudge_x = 0.3,
            nudge_y = -0.1) +
  geom_text(data = df %>% filter(year == 2011),
            aes(y=fifty_to_fiftynine, label=fifty_to_fiftynine),
            check_overlap = TRUE,
            size=2,
            fontface = "bold",
            nudge_x = -0.3,
            nudge_y= 0.15) +
  geom_text(data = df %>% filter(year == 2019),
            aes(y=fifty_to_fiftynine, label=fifty_to_fiftynine),
            check_overlap = TRUE,
            size=2,
            fontface = "bold",
            nudge_x = 0.3,
            nudge_y = 0.1) +
  geom_text(data = df %>% filter(year == 2011),
            aes(y=thirtyfive_to_thirtynine, label=thirtyfive_to_thirtynine),
            check_overlap = TRUE,
            size=2,
            fontface = "bold",
            nudge_x = -0.3,
            nudge_y= 0.15) +
  geom_text(data = df %>% filter(year == 2019),
            aes(y=thirtyfive_to_thirtynine, label=thirtyfive_to_thirtynine),
            check_overlap = TRUE,
            size=2,
            fontface = "bold",
            nudge_x = 0.3) +
  geom_text(data = df %>% filter(year == 2011),
            aes(y=fourty_to_fourtynine, label=fourty_to_fourtynine),
            check_overlap = TRUE,
            size=2,
            fontface = "bold",
            nudge_x = -0.3,
            nudge_y= -0.05) +
  geom_text(data = df %>% filter(year == 2019),
            aes(y=fourty_to_fourtynine, label=fourty_to_fourtynine),
            check_overlap = TRUE,
            size=2,
            fontface = "bold",
            nudge_x = 0.3) +
  geom_text(data = df %>% filter(year == 2011),
            aes(y=thirty_to_thirtyfour, label=thirty_to_thirtyfour),
            check_overlap = TRUE,
            size=2,
            fontface = "bold",
            nudge_x = -0.3,
            nudge_y= 0.2) +
  geom_text(data = df %>% filter(year == 2019),
            aes(y=thirty_to_thirtyfour, label=thirty_to_thirtyfour),
            check_overlap = TRUE,
            size=2,
            fontface = "bold",
            nudge_x = 0.3) +
  geom_text(data = df %>% filter(year == 2011),
            aes(y=five_to_nine, label=five_to_nine),
            check_overlap = TRUE,
            size=2,
            fontface = "bold",
            nudge_x = -0.3) +
  geom_text(data = df %>% filter(year == 2019),
            aes(y=five_to_nine, label=five_to_nine),
            check_overlap = TRUE,
            size=2,
            fontface = "bold",
            nudge_x = 0.3) +
  geom_text(data = df %>% filter(year == 2011),
            aes(y=twentyfive_to_twentynine, label=twentyfive_to_twentynine),
            check_overlap = TRUE,
            size=2,
            fontface = "bold",
            nudge_x = -0.3) +
  geom_text(data = df %>% filter(year == 2019),
            aes(y=twentyfive_to_twentynine, label=twentyfive_to_twentynine),
            check_overlap = TRUE,
            size=2,
            fontface = "bold",
            nudge_x = 0.3) +
  geom_text(data = df %>% filter(year == 2011),
            aes(y=ten_to_fourteen, label=ten_to_fourteen),
            check_overlap = TRUE,
            size=2,
            fontface = "bold",
            nudge_x = -0.3) +
  geom_text(data = df %>% filter(year == 2019),
            aes(y=ten_to_fourteen, label=ten_to_fourteen),
            check_overlap = TRUE,
            size=2,
            fontface = "bold",
            nudge_x = 0.3) +
  geom_text(data = df %>% filter(year == 2011),
            aes(y=fifteen_to_nineteen, label=fifteen_to_nineteen),
            check_overlap = TRUE,
            size=2,
            fontface = "bold",
            nudge_x = -0.3) +
  geom_text(data = df %>% filter(year == 2019),
            aes(y=fifteen_to_nineteen, label=fifteen_to_nineteen),
            check_overlap = TRUE,
            size=2,
            fontface = "bold",
            nudge_x = 0.3) +
  geom_text(data = df %>% filter(year == 2011),
            aes(y=twenty_to_twentyfour, label=twenty_to_twentyfour),
            check_overlap = TRUE,
            size=2,
            fontface = "bold",
            nudge_x = -0.3) +
  geom_text(data = df %>% filter(year == 2019),
            aes(y=twenty_to_twentyfour, label=twenty_to_twentyfour),
            check_overlap = TRUE,
            size=2,
            fontface = "bold",
            nudge_x = 0.3) +
  theme_bw() + 
  theme(panel.border = element_blank(),
                     legend.title = element_blank(),
                     panel.grid.major = element_blank(),
                     panel.grid.minor = element_blank(),
                     axis.line = element_line(colour = "black"),
                     plot.title=element_text(size=10, face="bold"),
                     plot.subtitle=element_text(size=8, face="italic"),
                     plot.caption=element_text(size=8),
                     axis.title.y = (element_text(size=9, face = "bold")),
                     axis.title.x = (element_text(size=9, face = "bold")),
                     axis.ticks.x=element_blank(),
                     axis.text.y = element_blank(),
                     axis.ticks.y=element_blank()) +
  labs(
    title = "Monthly Housing Costs as a Percentage of Income",
    subtitle = "2011 to 2019",
    caption="Source: American Housing Survey",
    x="Year",
    y="Income (%)") 
