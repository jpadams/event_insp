class event_insp ($action = reset) {
  case $action {
    'reset': { include event_insp::reset }
    'break': { include event_insp::break }
    default: { fail("valid values for the class param 'action' are 'reset' or 'break'") }
  }
}
