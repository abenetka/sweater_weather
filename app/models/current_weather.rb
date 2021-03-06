class CurrentWeather
  attr_reader :summary,
              :icon,
              :apparentTemperature,
              :uvIndex,
              :humidity,
              :temperature,
              :time,
              :visibility,
              :date

  def initialize(attributes)
    @summary = attributes[:summary]
    @icon = attributes[:icon]
    @apparentTemperature = attributes[:apparentTemperature]
    @uvIndex = attributes[:uvIndex]
    @humidity = attributes[:humidity]
    @temperature = attributes[:temperature]
    @time = Time.at(attributes[:time]).strftime("%I:%M %p")
    @visibility = attributes[:visibility]
    @date = Time.at(attributes[:time]).strftime("%-m/%-d")
  end

end
