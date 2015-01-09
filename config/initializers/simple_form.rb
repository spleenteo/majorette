SimpleForm.setup do |config|
  config.wrappers :default, class: 'form__field', hint_class: :field_with_hint, error_class: 'form__field--invalid' do |b|
    b.use :html5
    b.use :placeholder
    b.optional :maxlength
    b.optional :pattern
    b.optional :min_max
    b.optional :readonly
    b.use :label_input
    b.use :hint,  wrap_with: { tag: :p, class: 'form__hint' }
    b.use :error, wrap_with: { tag: :p, class: 'form__error' }
  end
  config.default_wrapper = :default
  config.boolean_style = :nested
  config.button_class = 'button--large'
  config.error_notification_tag = :div
  config.error_notification_class = 'flash--alert'
  config.label_class = 'form__label'
  config.form_class = 'form'
  config.browser_validations = false
  config.input_class = nil
end
