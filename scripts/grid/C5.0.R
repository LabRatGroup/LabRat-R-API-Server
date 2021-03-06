#model <- dfParams[row, "tune"]$model$value
#winnow <- dfParams[row, "tune"]$winnow$value

#trials.min <- dfParams[row, "tune"]$trials$min
#trials.max <- dfParams[row, "tune"]$trials$max
#trials.step <- dfParams[row, "tune"]$trials$step

model <- dfParams$tune[[index]]$model$value[1]

trials.min <- as.numeric(dfParams$tune[[index]]$trials$min[2])
trials.max <- as.numeric(dfParams$tune[[index]]$trials$max[2])
trials.step <- as.numeric(dfParams$tune[[index]]$trials$step[2])

winnow <- dfParams$tune[[index]]$winnow$value[3]



grid <- expand.grid(
  model = model,
  winnow = winnow,
  trials = seq(from = trials.min, to = trials.max, by = trials.step)
)
