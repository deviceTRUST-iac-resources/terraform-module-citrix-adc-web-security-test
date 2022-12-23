#####
# Variables for administrative connection to the ADC
#####

variable adc-base{
}

resource "citrixadc_policyexpression" "tf_policyexpression" {
}

variable "adc-policyexpression" {
}

variable "adc-responder-action" {
}

variable "adc-responder-policy" {
}