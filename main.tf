#####
# Add Policy Expressions
#####

resource "citrixadc_policyexpression" "policyexpression" {
  count = length(var.adc-policyexpression.name)
  name  = element(var.adc-policyexpression["name"],count.index)
  value = element(var.adc-policyexpression["value"],count.index)
}

#####
# Add Responder Actions
#####

resource "citrixadc_responderaction" "responder_action" {
  count             = length(var.adc-responder-action.name)
  name              = element(var.adc-responder-action["name"],count.index)
  type              = element(var.adc-responder-action["type"],count.index)
  bypasssafetycheck = element(var.adc-responder-action["bypasssafetycheck"],count.index)
  target            = element(var.adc-responder-action["target"],count.index)
}

#####
# Add Responder Policies
#####

resource "citrixadc_responderaction" "responder_action" {
  count  = length(var.adc-responder-policy.name)
  name   = element(var.adc-responder-policy["name"],count.index)
  action = element(var.adc-responder-policy["action"],count.index)
  rule   = element(var.adc-responder-policy["rule"],count.index)
}