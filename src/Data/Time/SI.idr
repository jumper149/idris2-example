module Data.Time.SI

import Data.Fin

Number : Type
Number = Double

public export
record Seconds where
  constructor MkSeconds
  getSeconds : Number

public export
record Minutes where
  constructor MkMinutes
  getMinutes : Number

minutesToSeconds : Minutes -> Seconds
minutesToSeconds = MkSeconds . (* 60) . getMinutes

secondsToMinutes : Seconds -> Minutes
secondsToMinutes = MkMinutes . (/ 60) . getSeconds

public export
record Hours where
  constructor MkHours
  getHours : Number

hoursToSeconds : Hours -> Seconds
hoursToSeconds = MkSeconds . (* 60) . (* 60) . getHours

secondsToHours : Seconds -> Hours
secondsToHours = MkHours . (/ 60) . (/ 60) . getSeconds

public export
record Days where
  constructor MkDays
  getDays : Number

daysToSeconds : Days -> Seconds
daysToSeconds = MkSeconds . (* 60) . (* 60) . (* 24) . getDays

secondsToDays : Seconds -> Days
secondsToDays = MkDays . (/ 24) . (/ 60) . (/ 60) . getSeconds

namespace Year

  public export
  data Month
    = January
    | February
    | March
    | April
    | May
    | June
    | July
    | August
    | September
    | October
    | November
    | Dezember

  days : (leapYear : Bool) -> Nat
  days leapYear = if leapYear then 366 else 365

  data Day : (leapYear : Bool) -> Type where
    MkDay : Fin (days leapYear) -> Day leapYear

namespace Month

  public export
  days : (leapYear : Bool) -> (month : Year.Month) -> Nat
  days leapYear month = case month of
    January => 31
    February => if leapYear then 29 else 28
    March => 31
    April => 30
    May => 31
    June => 30
    July => 31
    August => 31
    September => 30
    October => 31
    November => 30
    Dezember => 31

  public export
  record Day (leapYear : Bool) (month : Year.Month) where
    constructor MkDay
    getDay : Fin (days leapYear month)

namespace Week

  public export
  data Day
    = Monday
    | Tuesday
    | Wednesday
    | Thursday
    | Friday
    | Saturday
    | Sunday

namespace Day

  public export
  record Hour where
    constructor MkHour
    getHour : Fin 24

namespace Hour

  public export
  record Minute where
    constructor MkMinute
    getMinute : Fin 60
