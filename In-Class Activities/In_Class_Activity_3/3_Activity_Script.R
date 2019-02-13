divide_and_round <- function(nums){
  
  my_min <- min(nums, na.rm = TRUE)
  divided <- nums/my_min
  rounded <- round(divided)
  
  rounded
  
}


no_nines_or_twelves <- function(nums){
  !(nums%%9 == 0 | nums%%12 == 0)
}


every_other <- function(vec, start = 1){
  
  new_vec <- c()
  
  if (start%%2 == 0) {
    for (i in start:length(vec)) {
      if (i%%2 == 0) {
        new_vec <- c(new_vec, vec[i])
      } 
    }
  } else {
    for (i in start:length(vec)) {
      if (i%%2 == 1) {
        new_vec <- c(new_vec, vec[i])
      }
    }
  }
    
    
  
  new_vec
  
}

shorten <- function(nums) {
  new_vec <- c(nums)

  while (sum(new_vec, na.rm = TRUE) >= 350) {
    new_vec <- new_vec[-1]
  }
  
  new_vec
}






