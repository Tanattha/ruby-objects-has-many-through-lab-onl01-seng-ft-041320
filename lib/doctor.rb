class Doctor

    attr_accessor :name
    @@all = []
  
    def initialize(name)
      @name = name
      @@all << self
    end

    def self.all
        @@all
    end
#returns all appointments associated with this Doctor
    def appointments
        Appointment.all.select {|appointment| appointment.doctor == self}
    end

#def initialize(date,patient,doctor)
    def new_appointment(date,patient)
    Appointment.new(date,patient,self)
    end

#has many patients, through appointments
    def patients    
        appointments.map {|appointment| appointment.patient }
    end
end