module CovidStatus
  class CountryCovidStatus < CovidStatus::GlobalCovidStatus
    def initialize(country)
      @country = country
    end

    def confirmed
      self.class.get("/countries/#{@country}/confirmed")
    end

    def recovered
      self.class.get("/countries/#{@country}/recovered")
    end

    def deaths
      self.class.get("/countries/#{@country}/deaths")
    end
  end
end
