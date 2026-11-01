require_relative '../services_interface.rb'

module Services
  module Users
    class BloodPressureClassifierService < Services::ServiceInterface
      private
      attr_reader :systolic, :diastolic, :category

      def run
        @errors << 'systolic is missing' if kargs[:systolic].nil?
        @errors << 'diastolic is missing' if kargs[:diastolic].nil?

        @systolic = kargs[:systolic].to_i
        @diastolic = kargs[:diastolic].to_i
        return nil if @errors.any?

        @category = classify_pressure

        @result = { :category => category, :message => generate_message }
      end

      def generate_message
        case category
        when :normal then "Pressão arterial normal. Continue assim!"
        when :elevated then "Pressão arterial elevada. Atenção aos hábitos de vida."
        when :stage_1_hypertension then "Hipertensão Estágio 1. Recomendado consultar um médico."
        when :stage_2_hypertension then "Hipertensão Estágio 2. Agende uma consulta médica assim que possível."
        when :crisis_hypertensive then "CRISE HIPERTENSIVA. Procure ajuda médica de emergência imediatamente."
        else "Leitura atípica. Monitore novamente ou consulte um profissional."
        end
      end

      def classify_pressure
        if systolic >= 180 || diastolic >= 120
          :crisis_hypertensive
        elsif systolic >= 140 || diastolic >= 90
          :stage_2_hypertension
        elsif (130..139).include?(systolic) || (80..89).include?(diastolic)
          :stage_1_hypertension
        elsif (120..129).include?(systolic) && diastolic < 80
          :elevated
        elsif systolic < 120 && diastolic < 80
          :normal
        else
          :undetermined
        end
      end
    end
  end
end

# puts Services::Users::BloodPressureClassifierService.call(systolic: 120, diastolic: 50)
