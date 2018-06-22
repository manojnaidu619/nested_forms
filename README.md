# Nested_Forms in rails

This is a basic demo of implementing nested forms feature in rails, where one form is backed by multiple models  

Things you want to ensure:

* Use  ``` fields_for ```  tag, in the form template.

* Adding ``` accepts_nested_attributes_for :associated_model_name ``` in the parent model.

* Whitelisting attributes in the strong parameters
``` (associated_model_name)_attributes: [:attributes_name...] ```
