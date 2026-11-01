require_relative 'services/users/blood_pressure_classifier_service'

class User
  attr_reader :systolic, :diastolic
  def initialize(systolic:, diastolic:)
    @systolic = systolic
    @diastolic = diastolic
  end

  def blood_pressure
    service = Services::Users::BloodPressureClassifierService.call(systolic:, diastolic:)

    return service.errors if service.errors.any?

    service.result
  end
end 
binding.irb
