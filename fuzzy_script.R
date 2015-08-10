library(sets)

# Set up the universe
sets_options("universe", seq(1, 100, 0.1))
variables <- set(
  temperature = fuzzy_partition(varnames = c(cold = 30, good = 70, hot = 90),
                                sd = 5.0),
  humidity = fuzzy_partition(varnames = c(dry = 30, good = 60, wet = 80), 
                             sd = 3.0),
  precipitation = fuzzy_partition(varnames = c(no.rain = 30, little.rain = 60,
                                               rain = 90), sd = 7.5),
  weather = fuzzy_partition(varnames = c(bad = 40, ok = 65, perfect = 80),
                            FUN = fuzzy_cone, radius = 10)
)
# Fuzzy rules
rules <- set(
  fuzzy_rule(temperature %is% good && humidity %is% dry &&
               precipitation %is% no.rain, weather %is% perfect),
  fuzzy_rule(temperature %is% hot && humidity %is% wet &&
               precipitation %is% rain, weather %is% bad),
  fuzzy_rule(temperature %is% cold, weather %is% bad),
  fuzzy_rule(temperature %is% good || humidity %is% good ||
               precipitation %is% little.rain, weather %is% ok),
  fuzzy_rule(temperature %is% hot && precipitation %is% little.rain,
             weather %is% ok),
  fuzzy_rule(temperature %is% hot && humidity %is% dry &&
               precipitation %is% little.rain, weather %is% ok)
)

model <- fuzzy_system(variables, rules)
print(model)
plot(model)

example.1 <- fuzzy_inference(model, list(temperature = 75, humidity = 0,
                                       precipitation = 70))
plot(example.1)
gset_defuzzify(example.1, "centroid")

example.2 <- fuzzy_inference(model, list(temperature = 30, humidity = 0,
                                       precipitation = 70))
plot(example.2)
gset_defuzzify(example.2, "largestofmax")


# Reset universe
sets_options("universe", NULL)
