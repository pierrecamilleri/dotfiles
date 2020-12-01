# Load history at startup and save history at shutdown.
# Only if R, radian has its own history mechanism.
.First <- function()
  if(interactive() & Sys.getenv("RADIAN_VERSION") == "") try(utils::loadhistory("~/.Rhistory"))
.Last <- function()
  if(interactive() & Sys.getenv("RADIAN_VERSION") == "") try(savehistory("~/.Rhistory"))
